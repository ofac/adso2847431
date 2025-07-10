@extends('layouts.app')
@section('title', 'Create Pet')

@section('content')
@include('layouts.navbar')


<h1 class="text-3xl pt-30 flex gap-2 items-center text-white font-bold mb-10 pb-2 border-b-2">
    <svg xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 24 24" stroke-width="1.5" stroke="currentColor" class="size-12">
        <path stroke-linecap="round" stroke-linejoin="round" d="M12 9v6m3-3H9m12 0a9 9 0 1 1-18 0 9 9 0 0 1 18 0Z" />
    </svg>
    Create Pet
</h1>

<div class="breadcrumbs text-sm text-white">
  <ul>
    <li><a href="{{ url('pets') }}">Pets Module</a></li>
    <li>Create Pet</li>
  </ul>
</div>

<form method="post" action="{{ route('pets.store') }}" class="pt-6 pb-20" enctype="multipart/form-data">
        @csrf
        <fieldset class="fieldset w-md bg-base-200 border border-base-300 p-4 rounded-box">
                @if (count($errors->all()) > 0)
                    <div class="flex flex-col gap-1 my-4">
                        @foreach ($errors->all() as $message)
                            <div class="badge badge-error">
                                <svg class="size-[1em]" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 24 24"><g fill="currentColor"><rect x="1.972" y="11" width="20.056" height="2" transform="translate(-4.971 12) rotate(-45)" fill="currentColor" stroke-width="0"></rect><path d="m12,23c-6.065,0-11-4.935-11-11S5.935,1,12,1s11,4.935,11,11-4.935,11-11,11Zm0-20C7.038,3,3,7.037,3,12s4.038,9,9,9,9-4.037,9-9S16.962,3,12,3Z" stroke-width="0" fill="currentColor"></path></g></svg>
                                {{ $message }}
                            </div>
                        @endforeach
                    </div>
                @endif
                <div class="avatar mx-auto flex flex-col gap-2 items-center">
                    <div id="upload" class="mask mask-squircle w-36 cursor-pointer hover:scale-110 transition-transform">
                        <img id="preview" src="{{ asset('images/no-image.png') }}" />
                    </div>
                    <small class="font-bold text-gray-500 flex items-center gap-1">
                        <svg xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 24 24" stroke-width="1.5" stroke="currentColor" class="size-6">
                            <path stroke-linecap="round" stroke-linejoin="round" d="m15 11.25-3-3m0 0-3 3m3-3v7.5M21 12a9 9 0 1 1-18 0 9 9 0 0 1 18 0Z" />
                        </svg>
                        Upload Image
                    </small>
                </div> 
                <input type="file" name="image" id="image" class="hidden" accept="image/*">
                <label class="fieldset-label">Name:</label>
                <input type="text" name="name" class="input rounded-full w-full" placeholder="Firulais" value="{{ old('name') }}"/>

                <label class="fieldset-label">Kind:</label>
                <input type="text" name="kind" class="input rounded-full w-full" placeholder="Dog" value="{{ old('kind') }}"/>

                <label class="fieldset-label">Weight:</label>
                <input type="number" name="weight" class="input rounded-full w-full" placeholder="10" value="{{ old('weight') }}"/>

                <label class="fieldset-label">Age:</label>
                <input type="number" name="age" class="input rounded-full w-full" placeholder="4" value="{{ old('age') }}"/>

                <label class="fieldset-label">Breed:</label>
                <input type="text" name="breed" class="input rounded-full w-full" placeholder="Shiba Inu" value="{{ old('breed') }}"/>

                <label class="fieldset-label">Location:</label>
                <input type="text" name="location" class="input rounded-full w-full" placeholder="Kioto" value="{{ old('location') }}"/>

                <label class="fieldset-label">Description:</label>
                <textarea name="description" class="textarea rounded-sm w-full" placeholder="Lorem ipsum dolor..." cols="30" rows="4">{{ old('description') }}</textarea>
                
                <button class="btn mt-4 p-6 rounded-full text-white bg-cyan-800 w-full">Create</button>
        </fieldset>
    </form>
@endsection

@section('js')
    <script>
        const upload  = document.querySelector('#upload')
        const preview = document.querySelector('#preview')
        const image   = document.querySelector('#image')

        upload.addEventListener('click', function(e) {
            image.click()
        })

        image.addEventListener('change', function(e) {
            preview.src = window.URL.createObjectURL(this.files[0])
        })
    </script>
@endsection