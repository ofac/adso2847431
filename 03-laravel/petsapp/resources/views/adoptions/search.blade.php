@forelse ($adoptions as $adop)
    <tr>
          <td>
            <div class="avatar-group -space-x-6">
              <div class="avatar">
                <div class="w-24">
                  <img src="{{ asset('images/'.$adop->user->photo) }}" />
                </div>
              </div>
              <div class="avatar">
                <div class="w-24">
                  <img src="{{ asset('images/'.$adop->pet->image) }}" />
                </div>
              </div>
            </div>
          </td>
          <td>
            <strong class="text-lg capitalize">{{ $adop->pet->name }}</strong> 
            was adopted by <strong class="text-lg">{{ $adop->user->fullname }}</strong> 
            {{ $adop->created_at->diffforhumans() }}.
          </td>
      </tr>
    @empty
    <tr>
        <th class="text-center font-bold">No adoption found!</th>
    </tr>
    @endforelse
