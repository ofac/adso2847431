<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>List All Users</title>
</head>
<body class="bg-linear-to-r from-teal-800 to-teal-700
               flex 
             text-teal-200
               flex-col 
               gap-8 
               justify-center
               min-h-[100dvh]
               items-center">
    <h1 class="font-bold 
               mt-4
               border-b-2
               text-4xl">
        List All Users 
        <small class="text-teal-400 
                        text-lg">
            Factory Challenge
        </small>
    </h1>

    <section class="users 
                    grid 
                    grid-cols-2
                    sm:grid-cols-3 
                    md:grid-cols-5
                    gap-2">
    @foreach ($users as $user)
        <div class="flex
                    flex-col
                    hover:scale-105
                    cursor-pointer
                    hover:bg-teal-700
                    transition-all
                  bg-teal-900
                    p-2
                    rounded-sm
                    justify-center
                    items-center">
            <img class="rounded-full h-[100px]" 
                 src="{{ asset('images/'.$user->photo) }}" 
                 width="100px" alt="{{ $user->fullname }}">
            <h3 class="font-bold">{{ $user->fullname }}</h3>
            <h4 class="text-teal-100">{{ $user->role }}</h4>
            <h5 class="text-teal-50 opacity-25">
                # Adoptions: 
                <small class="font-bold text-xl">
                  {{ $user->adoptions->count() }}
                </small>
            </h5>
        </div>
    @endforeach
    </section>

    <script src="https://cdn.jsdelivr.net/npm/@tailwindcss/browser@4"></script>
</body>
</html>