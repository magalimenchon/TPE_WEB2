<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="./style.css">
    <base href="{BASE_URL}">
    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css"
        integrity="sha384-JcKb8q3iqJ61gNV9KGb8thSsNjpSL0n8PARn9HuZOnIxN0hoP+VmmDGMN5t9UJ0Z" crossorigin="anonymous">

    <title>{$title}</title>
</head>

<body>
    <div class="container-fluid">
        <div class="row">
            <div class="col"></div>
            <div class="col align-self-center bg-light">
                <img class="img-fluid" src="header-Airbnb.jpg" alt="header-Airbnb">
                <form action="verifyUser" method="POST" class="login">
                    <div>
                        <h1>{$title}</h1>
                    </div>
                    <hr>
                    <div class="form-group">
                        <input class="form-control" id="user" name="input_user" aria-describedby="emailHelp"
                            placeholder="Email">
                    </div>
                    <div class="form-group">
                        <input type="password" class="form-control" id="pass" name="input_pass"
                            placeholder="Contraseña">
                    </div>
                    <button type="submit" class="btn btn-danger col-md-4 offset-md-4" style="background-color: #fe585a; border-color:#fe585a;">Login</button>
                </form>
                <br>
                {if $message neq false}
                <div class="alert alert-danger" id="alert" role="alert">
                    {$message}
                </div>
                {/if}
                <br>
                <div>
                    <h6><a href="showCities" class="text-dark">Volver</a></h6>
                </div>
            </div>
            <div class="col"></div>
        </div>
    </div>

    <p></p>
    {include file="footer.tpl"}