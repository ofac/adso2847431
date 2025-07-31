<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Adoption extends Model
{
    protected $fillable = [
        'user_id',
        'pet_id'
    ];

    // RelationShip: Adoption belongsTo User
    public function user() {
        return $this->belongsTo(User::class);
    }
    // RelationShip: Adoption belongsTo Pet
    public function pet() {
        return $this->belongsTo(Pet::class);
    }

    // Scope: Search by petname or username
    public function scopeNames($adoptions, $q) {
        if(trim($q)) {
            $adoptions->whereHas('user', function($query) use ($q) {
                $query->where('fullname', 'LIKE', "%$q%");
            })
            ->orWhereHas('pet', function($query) use ($q) {
                $query->where('name', 'LIKE', "%$q%");
            });
        }
    }
}
