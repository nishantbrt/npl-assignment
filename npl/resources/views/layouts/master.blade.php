<!doctype html>
<html lang="{{ str_replace('_', '-', app()->getLocale()) }}">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <!-- CSRF Token -->
    <meta name="csrf-token" content="{{ csrf_token() }}">

    <title>{{ config('app.name', 'Laravel') }}</title>

    <!-- Scripts -->
    <script src="{{ asset('js/app.js') }}" defer></script>

    <!-- Fonts -->
    <link rel="dns-prefetch" href="//fonts.gstatic.com">
    <link href="https://fonts.googleapis.com/css?family=Nunito" rel="stylesheet">

    <!-- Styles -->
    <link href="{{ asset('css/app.css') }}" rel="stylesheet">
</head>
<body class="bg-white">
    <header>
        <nav class="navbar navbar-expand-lg navbar-light bg-info">
          <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarTogglerDemo03" aria-controls="navbarTogglerDemo03" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
          </button>
          <a class="navbar-brand" href="/"><img src="{{ url('/images/logo.png') }}" height="30px"></a>
          <div class="collapse navbar-collapse" id="navbarTogglerDemo03">
            <ul class="navbar-nav mr-auto mt-2 mt-lg-0">
              <li class="nav-item active">
                <a class="nav-link" href="/">Home <span class="sr-only">(current)</span></a>
              </li>
              <li class="nav-item">
                <a class="nav-link" href="{{ route('matchlanding') }}">Maches</a>
              </li>
              <li class="nav-item">
                <a class="nav-link" href="{{ route('pointlanding') }}">Points</a>
              </li>
            </ul>
          </div>
        </nav>
    </header>
    <div id="app">
        <main class="py-4">
            @yield('content')
        </main>
    </div>
    <footer class="page-footer font-small bg-dark text-white fixed-bottom">
      <div class="footer-copyright text-center">© 2020 Copyright
      </div>
    </footer>
</body>
</html>
