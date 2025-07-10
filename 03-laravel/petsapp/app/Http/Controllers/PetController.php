<?php

namespace App\Http\Controllers;

use App\Models\Pet;
use Illuminate\Http\Request;

class PetController extends Controller
{
    /**
     * Display a listing of the resource.
     */
    public function index()
    {
        $pets = Pet::paginate(25);
        return view('pets.index')->with('pets', $pets);
    }

    /**
     * Show the form for creating a new resource.
     */
    public function create()
    {
        return view('pets.create');
    }

    /**
     * Store a newly created resource in storage.
     */
    public function store(Request $request)
    {
        $validated = $request->validate([
            'name'        => ['required', 'unique:'.Pet::class],
            'image'       => ['required', 'image'],
            'kind'        => ['required'],
            'weight'      => ['required', 'numeric'],
            'age'         => ['required', 'numeric'],
            'breed'       => ['required'],
            'location'    => ['required'],
            'description' => ['required']
        ]);

        if($validated) {
            //dd($request->all());
            if($request->hasFile('image')) {
                $image = time().'.'.$request->image->extension();
                $request->image->move(public_path('images'), $image);
            }

            $pet = new Pet;
            $pet->name        = $request->name;
            $pet->image       = $image;
            $pet->kind        = $request->kind;
            $pet->weight      = $request->weight;
            $pet->age         = $request->age;
            $pet->breed       = $request->breed;
            $pet->location    = $request->location;
            $pet->description = $request->description;

            if($pet->save()) {
                return redirect('pets')->with('message', 'The pet: '.$pet->name.' was successfully added!');
            }
        }
    }

    /**
     * Display the specified resource.
     */
    public function show(Pet $pet)
    {
        return view('pets.show')->with('pet', $pet);
    }

    /**
     * Show the form for editing the specified resource.
     */
    public function edit(Pet $pet)
    {
        return view('pets.edit')->with('pet', $pet);
    }

    /**
     * Update the specified resource in storage.
     */
    public function update(Request $request, Pet $pet)
    {
        $validated = $request->validate([
            'name'        => ['required', 'unique:'.Pet::class.',name,'.$request->id],
            'kind'        => ['required'],
            'weight'      => ['required', 'numeric'],
            'age'         => ['required', 'numeric'],
            'breed'       => ['required'],
            'location'    => ['required'],
            'description' => ['required']
        ]);

        if($validated) {
            //dd($request->all());
            if($request->hasFile('image')) {
                $image = time().'.'.$request->image->extension();
                $request->image->move(public_path('images'), $image);
                if($request->originimage != 'no-image.png') {
                    unlink(public_path('images/').$request->originimage);
                }
            } else {
                $image = $request->originimage;
            }

            $pet->name        = $request->name;
            $pet->image       = $image;
            $pet->kind        = $request->kind;
            $pet->weight      = $request->weight;
            $pet->age         = $request->age;
            $pet->breed       = $request->breed;
            $pet->location    = $request->location;
            $pet->description = $request->description;

            if($pet->save()) {
                return redirect('pets')->with('message', 'The pet: '.$pet->name.' was successfully edited!');
            }
        }
    }

    /**
     * Remove the specified resource from storage.
     */
    public function destroy(Pet $pet)
    {
        // if($pet->delete()) {
        //     if($pet->image != 'no-image.png') {
        //         unlink(public_path('images/').$pet->image);
        //     }
        //     return redirect('pets')->with('message', 'The pet: '.$pet->name.' was successfully deleted!');
        // }
        return redirect('pets')->with('message', 'The pet: '.$pet->name.' was successfully deleted!');
    }

    public function search(Request $request) {
        $pets = Pet::names($request->q)->paginate(25);
        return view('pets.search')->with('pets', $pets);
    }
}
