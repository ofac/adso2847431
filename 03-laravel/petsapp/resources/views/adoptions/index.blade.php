@extends('layouts.app')
@section('title', 'Adoptions Module')

@section('content')
@include('layouts.navbar')

<h1 class="text-3xl pt-30 flex gap-2 items-center text-white font-bold mb-10 pb-2 border-b-2">
    <svg xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 24 24" stroke-width="1.5" stroke="currentColor" class="size-12">
          <path stroke-linecap="round" stroke-linejoin="round" d="M21 8.25c0-2.485-2.099-4.5-4.688-4.5-1.935 0-3.597 1.126-4.312 2.733-.715-1.607-2.377-2.733-4.313-2.733C5.1 3.75 3 5.765 3 8.25c0 7.22 9 12 9 12s9-4.78 9-12Z" />
      </svg>
    Adotions Module
</h1>

<ul class="menu gap-1 mb-8 flex-col sm:flex-row menu-horizontal bg-base-200 rounded-box">
  <li><input class="py-2" id="qsearch" name="qsearch" type="search" placeholder="Search..."></li>
</ul>

<div class="overflow-x-auto my-2 mx-4 rounded-box bg-base-100">
  <table class="table table-zebra">
    <tbody id="list">
      @foreach ($adops as $adop)
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
      @endforeach
    </tbody>
  </table>
</div>

{{ $adops->links('layouts.paginator') }}
  
@endsection

@section('js')
<script>

  // Search
   const qSearch = document.querySelector('#qsearch')
   const list    = document.querySelector('#list')

   qSearch.addEventListener('input', function(event) {
      event.preventDefault()
      let query = this.value
      let token = document.querySelector('input[name=_token]')

      fetch('adoptions/search', {
        method: 'POST',
        headers: {
          'Content-Type': 'application/json',
          'Accept': 'application/json',
          'X-CSRF-TOKEN': token.value
        },
        body: JSON.stringify({
          'q': query
        })
      }).then(response => response.text())
        .then(data => {
          list.innerHTML = `<tr>
                              <td>
                                <span class="loading loading-spinner loading-xl flex mx-auto"></span>
                              </td>
                            </tr>`
          setTimeout(() => {
            list.innerHTML = data
          }, 2000);
        })
   })
  
</script>
@endsection