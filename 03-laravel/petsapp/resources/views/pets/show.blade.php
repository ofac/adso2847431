@extends('layouts.app')
@section('title', 'Show Pet')

@section('content')
@include('layouts.navbar')


<h1 class="text-3xl pt-30 flex gap-2 items-center text-white font-bold mb-10 pb-2 border-b-2">
    <svg xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 24 24" stroke-width="1.5" stroke="currentColor" class="size-12">
        <path stroke-linecap="round" stroke-linejoin="round" d="m21 21-5.197-5.197m0 0A7.5 7.5 0 1 0 5.196 5.196a7.5 7.5 0 0 0 10.607 10.607Z" />
    </svg>
    Show Pet
</h1>

<div class="breadcrumbs text-sm text-white">
  <ul>
    <li><a href="{{ url('pets') }}">Pets Module</a></li>
    <li>Show Pet</li>
  </ul>
</div>

<ul class="list my-8 bg-base-100 rounded-box shadow-md w-4/12">
    <li class="list-row mx-auto">
        <div class="avatar">
            <div class="mask mask-squircle w-48 hover:scale-110 transition-transform">
                <img src="{{ asset('images/'.$pet->image) }}" />
            </div>
        </div> 
    </li>
  <li class="list-row">
    <div class="flex gap-4 items-center">
      <div class="font-bold w-24">Name: </div>
      <div class="text-xs font-semibold opacity-60">
        {{ $pet->name }}
      </div>
    </div>
  </li>
  <li class="list-row">
    <div class="flex gap-4 items-center">
      <div class="font-bold w-24">Kind: </div>
      <div class="text-xs font-semibold opacity-60">
        {{ $pet->kind}}
      </div>
    </div>
  </li>
  <li class="list-row">
    <div class="flex gap-4 items-center">
      <div class="font-bold w-24">Weight: </div>
      <div class="text-xs font-semibold opacity-60">
        {{ $pet->weight}}
      </div>
    </div>
  </li>
  <li class="list-row">
    <div class="flex gap-4 items-center">
      <div class="font-bold w-24">Age: </div>
      <div class="text-xs font-semibold opacity-60">
        {{ $pet->age}}
      </div>
    </div>
  </li>
  <li class="list-row">
    <div class="flex gap-4 items-center">
      <div class="font-bold w-24">Breed: </div>
      <div class="text-xs font-semibold opacity-60">
        {{ $pet->breed}}
      </div>
    </div>
  </li>
  <li class="list-row">
    <div class="flex gap-4 items-center">
      <div class="font-bold w-24">Location: </div>
      <div class="text-xs font-semibold opacity-60">
        {{ $pet->location}}
      </div>
    </div>
  </li>
  <li class="list-row">
    <div class="flex gap-4 items-center">
      <div class="font-bold w-32">Description: </div>
      <div class="text-xs font-semibold opacity-60">
        {{ $pet->description}}
      </div>
    </div>
  </li>
  <li class="list-row">
    <div class="flex gap-4 items-center">
      <div class="font-bold w-24">Status: </div>
      <div class="text-xs font-semibold opacity-60">
        @if ($pet->status == 0)
          <div class="badge badge-outline badge-success">Unadopted/Stray</div>
        @else
            <div class="badge badge-outline badge-error">Adopted</div>
        @endif
      </div>
    </div>
  </li>

  
</ul>


@endsection
