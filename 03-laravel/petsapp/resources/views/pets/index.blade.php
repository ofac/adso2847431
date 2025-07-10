@extends('layouts.app')
@section('title', 'Pets Module')

@section('content')
@include('layouts.navbar')

<h1 class="text-3xl pt-30 flex gap-2 items-center text-white font-bold mb-10 pb-2 border-b-2">
    <svg  class="size-12" version="1.1" id="_x32_" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" viewBox="0 0 512 512" xml:space="preserve" fill="#fff">
        <g id="SVGRepo_bgCarrier" stroke-width="0"></g>
        <g id="SVGRepo_tracerCarrier" stroke-linecap="round" stroke-linejoin="round"></g>
        <g id="SVGRepo_iconCarrier"> 
            <g> 
                <path class="st0" d="M120.113,139.014c4.529,13.248,13.07,24.156,23.738,31.637c10.672,7.491,23.51,11.665,36.848,11.673 c6.896,0,13.906-1.126,20.726-3.458l0.023-0.008c13.24-4.528,24.144-13.066,31.626-23.738c7.49-10.664,11.668-23.502,11.672-36.844 c0-6.891-1.126-13.917-3.469-20.753c-4.525-13.232-13.063-24.14-23.726-31.63c-10.668-7.49-23.502-11.672-36.848-11.672 c-6.888,0-13.913,1.119-20.765,3.474c-13.236,4.528-24.14,13.066-31.614,23.731c-7.494,10.664-11.672,23.501-11.676,36.843 c0,6.876,1.122,13.878,3.45,20.698L120.113,139.014z M154.716,99.964c3.749-5.308,9.042-9.475,15.689-11.751l-1.39,0.473 l1.41-0.489c3.43-1.174,6.868-1.717,10.278-1.717c6.565-0.008,12.984,2.072,18.296,5.813c5.312,3.749,9.475,9.042,11.759,15.682 v0.007c1.182,3.442,1.728,6.892,1.728,10.294c0.004,6.569-2.075,12.988-5.808,18.304c-3.749,5.317-9.042,9.475-15.689,11.759h0.023 c-3.458,1.174-6.915,1.717-10.314,1.717c-6.572,0.008-12.991-2.071-18.304-5.804c-5.3-3.733-9.456-9.01-11.743-15.641l-0.016-0.04 c-1.182-3.458-1.729-6.9-1.729-10.302C148.904,111.7,150.983,105.281,154.716,99.964z"></path> <path class="st0" d="M120.109,139.014c-0.003-0.016-0.003-0.032-0.012-0.048l-0.422-1.228L120.109,139.014z"></path> <path class="st0" d="M312.969,175.244l-2.182-0.748l2.198,0.756c6.833,2.339,13.846,3.458,20.73,3.458 c13.346-0.008,26.18-4.182,36.852-11.672c10.668-7.482,19.21-18.391,23.738-31.63c2.343-6.844,3.466-13.862,3.466-20.753 c-0.004-13.342-4.182-26.18-11.676-36.851c-7.478-10.664-18.39-19.21-31.634-23.731l0.007,0.007 c-6.828-2.347-13.849-3.481-20.753-3.481c-13.342,0.008-26.18,4.19-36.848,11.68c-10.664,7.482-19.205,18.39-23.726,31.638 c-2.344,6.829-3.47,13.854-3.47,20.746c0.004,13.342,4.182,26.18,11.672,36.843C288.825,162.169,299.729,170.715,312.969,175.244z M303.659,104.367c2.284-6.655,6.446-11.948,11.759-15.697c5.312-3.734,11.727-5.813,18.296-5.813c3.39,0,6.84,0.552,10.294,1.732 l0.008,0.008c6.648,2.276,11.936,6.435,15.686,11.751c3.733,5.316,5.812,11.735,5.808,18.304c0,3.403-0.548,6.852-1.725,10.302 c-2.284,6.64-6.45,11.932-11.763,15.682c-5.312,3.734-11.736,5.812-18.308,5.812c-3.403,0-6.856-0.552-10.302-1.725l2.182,0.748 l-2.166-0.74c-6.647-2.292-11.94-6.458-15.689-11.767c-3.733-5.317-5.812-11.736-5.808-18.304 C301.931,111.259,302.478,107.809,303.659,104.367z"></path> <path class="st0" d="M500.324,202.392c-7.478-10.664-18.391-19.209-31.634-23.73h0.008c-6.829-2.339-13.85-3.474-20.753-3.466 c-13.342,0-26.18,4.174-36.848,11.672c-10.664,7.482-19.205,18.398-23.726,31.638c-2.343,6.829-3.469,13.854-3.469,20.754 c0.003,13.334,4.182,26.172,11.672,36.836c7.483,10.672,18.387,19.209,31.626,23.738l0.016,0.008 c6.832,2.332,13.846,3.458,20.73,3.458c13.346-0.008,26.18-4.182,36.852-11.673c10.668-7.482,19.209-18.39,23.738-31.638 c2.343-6.836,3.466-13.854,3.466-20.746C511.996,225.902,507.818,213.064,500.324,202.392z M478.015,249.546 c-2.284,6.639-6.45,11.932-11.763,15.681c-5.312,3.733-11.736,5.812-18.308,5.804c-3.403,0-6.856-0.543-10.302-1.717h0.016 c-6.647-2.284-11.94-6.45-15.689-11.766c-3.733-5.308-5.812-11.727-5.808-18.288c0-3.403,0.547-6.852,1.728-10.302 c2.284-6.655,6.446-11.948,11.759-15.697c5.312-3.732,11.727-5.812,18.296-5.804c3.39,0,6.84,0.544,10.293,1.725l0.008,0.008 c6.647,2.276,11.936,6.442,15.685,11.751c3.733,5.308,5.812,11.736,5.809,18.304C479.74,242.646,479.192,246.096,478.015,249.546z"></path> <path class="st0" d="M124.634,259.989c2.343-6.836,3.466-13.854,3.466-20.746c-0.004-13.342-4.183-26.18-11.677-36.852 c-7.478-10.664-18.39-19.209-31.634-23.73l-0.024-0.008c-6.816-2.331-13.83-3.466-20.722-3.458 c-13.342,0-26.18,4.174-36.848,11.672C16.532,194.35,7.99,205.266,3.469,218.506v-0.007C1.126,225.335,0,232.36,0,239.26 c0.004,13.334,4.182,26.172,11.672,36.836c7.483,10.672,18.387,19.209,31.626,23.738l0.016,0.008 c6.832,2.332,13.846,3.458,20.73,3.458c13.346-0.008,26.18-4.182,36.852-11.673C111.564,284.145,120.106,273.237,124.634,259.989z M94.114,249.546c-2.284,6.639-6.451,11.932-11.763,15.681c-5.312,3.733-11.735,5.812-18.308,5.804 c-3.402,0-6.856-0.543-10.302-1.717h0.016c-6.647-2.284-11.94-6.45-15.689-11.766c-3.734-5.308-5.813-11.727-5.808-18.288 c0-3.411,0.547-6.852,1.728-10.302l0.012-0.032c2.288-6.639,6.442-11.924,11.746-15.666c5.313-3.732,11.728-5.812,18.296-5.804 c3.391,0,6.84,0.544,10.294,1.725l3.052,1.048l-3.044-1.04c6.647,2.276,11.936,6.442,15.686,11.751 c3.732,5.308,5.812,11.736,5.808,18.304C95.839,242.646,95.292,246.096,94.114,249.546z"></path> <path class="st0" d="M338.475,234.219c-12.318-9.83-25.66-17.973-39.687-23.754c-14.02-5.766-28.774-9.168-43.739-9.168 c-19.966,0.016-39.502,6.017-57.526,15.712c-27.039,14.594-51.025,37.529-68.734,64.182c-17.626,26.66-29.134,57.18-29.204,87.755 c0,11.105,1.568,22.194,5.04,32.898c3.666,11.318,8.585,20.981,14.674,29c9.097,12.066,20.891,20.115,33.122,24.636 c12.259,4.56,24.829,5.915,36.864,5.922c13.24-0.007,25.975-1.654,37.364-3.174c11.349-1.544,21.458-2.915,28.401-2.882 c6.938-0.032,17.051,1.339,28.397,2.882c11.393,1.52,24.128,3.166,37.368,3.174c15.988-0.015,33.17-2.402,48.867-11.633 c7.801-4.599,15.047-10.908,21.119-18.925c6.088-8.018,11.007-17.682,14.674-28.992c3.473-10.711,5.04-21.8,5.04-32.905 c-0.016-20.376-5.21-40.751-13.814-59.952C383.734,280.207,363.084,253.893,338.475,234.219z M374.788,391.897 c-2.733,8.427-6.08,14.689-9.688,19.446c-5.446,7.096-11.42,11.137-18.718,13.917c-7.274,2.732-15.996,3.891-25.569,3.883 c-10.51,0.008-21.899-1.378-33.076-2.882c-11.215-1.489-22.112-3.142-32.689-3.174c-10.577,0.031-21.474,1.685-32.689,3.165 c-11.176,1.512-22.565,2.899-33.076,2.891c-12.818,0.016-23.896-2.056-32.457-7.152c-4.328-2.575-8.207-5.898-11.83-10.648 c-3.607-4.757-6.954-11.018-9.688-19.446c-2.332-7.199-3.466-14.87-3.466-22.951c-0.015-14.791,3.879-30.929,10.987-46.737 c10.605-23.714,28.436-46.484,48.906-62.772c10.223-8.159,21.072-14.712,31.846-19.138c10.782-4.442,21.438-6.75,31.465-6.742 c13.354-0.016,27.893,4.127,42.239,11.861c21.517,11.53,42.258,31.094,57.136,53.596c14.96,22.478,23.899,47.76,23.829,69.931 C378.254,377.027,377.119,384.698,374.788,391.897z"></path> 
            </g> 
        </g>
    </svg>
    Pets Module
</h1>

<ul class="menu gap-1 mb-8 menu-horizontal bg-base-200 rounded-box">
  <li>
    <a href="{{ url('pets/create') }}" class="btn btn-sm sm:btn-md btn-success btn-outline">
        <svg xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 24 24" stroke-width="1.5" stroke="currentColor" class="size-6">
            <path stroke-linecap="round" stroke-linejoin="round" d="M12 9v6m3-3H9m12 0a9 9 0 1 1-18 0 9 9 0 0 1 18 0Z" />
        </svg>
        Add Pet
    </a>
</li>
  <li><input class="py-2" id="qsearch" name="qsearch" type="search" placeholder="Search..."></li>
</ul>

<div class="overflow-x-auto my-2 rounded-box bg-base-100">
  <table class="table table-zebra">
    <!-- head -->
    <thead>
      <tr>
        <th>Name</th>
        <th class="sm:table-cell hidden">Kind</th>
        <th class="md:table-cell hidden">Breed</th>
        <th>Actions</th>
      </tr>
    </thead>
    <tbody id="list">
      <!-- row 1 -->
      @foreach ($pets as $pet)
      <tr class="hover:bg-base-300">
        <td>
          <div class="flex items-center gap-3">
            <div class="avatar">
              <div class="mask mask-squircle h-12 w-12">
                <img
                  src="{{ asset('images/'.$pet->image) }}"
                  alt="Image" />
              </div>
            </div>
            <div>
              <div class="font-bold">{{ $pet->name }}</div>
              <div class="text-sm opacity-50">
                @if ($pet->status == 0)
                  <div class="badge badge-outline badge-success">Stray</div>
                @else
                    <div class="badge badge-outline badge-error">Adopted</div>
                @endif
              </div>
            </div>
          </div>
        </td>
        <td class="sm:table-cell hidden">
          <span class="badge badge-outline badge-neutral">{{ $pet->kind }}</span>
        </td>
        <td class="md:table-cell hidden">{{ $pet->breed }}</td>
        <td>
          <a class="btn btn-outline btn-square btn-neutral btn-xs" href="{{ url('pets/'.$pet->id) }}">
            <svg xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 24 24" stroke-width="1.5" stroke="currentColor" class="size-4">
                <path stroke-linecap="round" stroke-linejoin="round" d="m21 21-5.197-5.197m0 0A7.5 7.5 0 1 0 5.196 5.196a7.5 7.5 0 0 0 10.607 10.607Z" />
            </svg>
          </a>
          <a class="btn btn-outline btn-square btn-neutral btn-xs" href="{{ url('pets/'.$pet->id.'/edit') }}">
            <svg xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 24 24" stroke-width="1.5" stroke="currentColor" class="size-4">
                <path stroke-linecap="round" stroke-linejoin="round" d="m16.862 4.487 1.687-1.688a1.875 1.875 0 1 1 2.652 2.652L10.582 16.07a4.5 4.5 0 0 1-1.897 1.13L6 18l.8-2.685a4.5 4.5 0 0 1 1.13-1.897l8.932-8.931Zm0 0L19.5 7.125M18 14v4.75A2.25 2.25 0 0 1 15.75 21H5.25A2.25 2.25 0 0 1 3 18.75V8.25A2.25 2.25 0 0 1 5.25 6H10" />
            </svg>
          </a>
          <a href="javascript:;" class="btn btn-outline btn-square btn-error btn-xs btn-delete" data-fullname="{{ $pet->name }}">
            <svg xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 24 24" stroke-width="1.5" stroke="currentColor" class="size-4">
                <path stroke-linecap="round" stroke-linejoin="round" d="m14.74 9-.346 9m-4.788 0L9.26 9m9.968-3.21c.342.052.682.107 1.022.166m-1.022-.165L18.16 19.673a2.25 2.25 0 0 1-2.244 2.077H8.084a2.25 2.25 0 0 1-2.244-2.077L4.772 5.79m14.456 0a48.108 48.108 0 0 0-3.478-.397m-12 .562c.34-.059.68-.114 1.022-.165m0 0a48.11 48.11 0 0 1 3.478-.397m7.5 0v-.916c0-1.18-.91-2.164-2.09-2.201a51.964 51.964 0 0 0-3.32 0c-1.18.037-2.09 1.022-2.09 2.201v.916m7.5 0a48.667 48.667 0 0 0-7.5 0" />
            </svg>
          </a>
          <form class="hidden" method="post" action="{{ url('pets/'.$pet->id) }}">
            @csrf
            @method('delete')
          </form>
        </td>
      </tr>
      @endforeach
    </tbody>
    <!-- foot -->
    <tfoot>
      <tr>
        <th>Name</th>
        <th class="sm:table-cell hidden">Kind</th>
        <th class="md:table-cell hidden">Breed</th>
        <th>Actions</th>
      </tr>
    </tfoot>
  </table>
</div>

{{ $pets->links('layouts.paginator') }}

<dialog id="message" class="modal">
    <div class="modal-box">
        <form method="dialog">
          <button class="btn btn-sm btn-circle btn-ghost absolute right-2 top-2">✕</button>
        </form>
        <h3 class="text-lg font-bold">Congratulations!</h3>
        <p id="text-message" class="py-4">Lorem ipsum dolor</p>
    </div>
</dialog>

<dialog id="confirm" class="modal">
    <div class="modal-box">
        <form method="dialog">
          <button class="btn btn-sm btn-circle btn-ghost absolute right-2 top-2">✕</button>
        </form>
        <h3 class="text-lg font-bold">Are you Sure?</h3>
        <p id="text-confirm" class="py-4">Lorem ipsum dolor</p>
        <div class="flex gap-2">
          <form method="dialog">
            <button class="btn btn-sm">Cancel</button>
          </form>
          <button class="btn btn-sm btn-error btn-accept">Accept</button>
        </div>
    </div>
</dialog>
  
@endsection

@section('js')
<script>
  // Message
  const message     = document.querySelector('#message')
  const textMessage = document.querySelector('#text-message')
  @if(session('message'))
    textMessage.textContent = "{{ session('message') }}"
    message.showModal()
  @endif

  // Delete
  const btnDelete   = document.querySelectorAll('.btn-delete')
  const confirm     = document.querySelector('#confirm')
  const textConfirm = document.querySelector('#text-confirm')
  const btnAccept   = document.querySelector('.btn-accept')
  let frmDelete     = undefined

  btnDelete.forEach(element => {
    element.addEventListener('click', function() {
      const fullName  = this.dataset.fullname
      frmDelete = this.nextElementSibling
      textConfirm.textContent = `You want to delete: ${fullName}`
      confirm.showModal()
    })
  })

  btnAccept.addEventListener('click', function() {
    frmDelete.submit()
  })

  // Search
   const qSearch = document.querySelector('#qsearch')
   const list    = document.querySelector('#list')

   qSearch.addEventListener('input', function(event) {
      event.preventDefault()
      let query = this.value
      let token = document.querySelector('input[name=_token]')

      fetch('pets/search', {
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
                              <td colspan="4">
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