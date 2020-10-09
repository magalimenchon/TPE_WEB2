<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="style.css">
    <base href="{BASE_URL}">
    <!-- Bootstrap CSS -->

    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css"
        integrity="sha384-JcKb8q3iqJ61gNV9KGb8thSsNjpSL0n8PARn9HuZOnIxN0hoP+VmmDGMN5t9UJ0Z" crossorigin="anonymous">

    <title>{$titulo}</title>
</head>

<body>
    <header class="header">
        <div>
            <h1>{$titulo}</h1>
        </div>
        <div>
            {if $sessionActive eq false}
                <a href="login" class="button1">Login</a>
            {else}
                <p>Hola user, estás logueado{*{$user}*}</p>
                <a href="logout" class="button1">Logout</a>
            {/if}
        </div>
    </header>
    <ul class="navigation">
        <li><a href="showCities">Ciudades</a></li>
        <li><a href="showFlats">Departamentos</a></li>
    </ul>