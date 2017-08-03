<%@ page contentType="text/html; charset=utf-8" %>
    <html>

    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link rel="stylesheet" href="./bootstrap-3.3.7-dist/css/bootstrap.min.css">
        <link rel="stylesheet" href="./views/css/main.css">
        <script type="text/javascript" src="./jquery-3.2.1.min.js"></script>
        <script type="text/javascript" src="./bootstrap-3.3.7-dist/js/bootstrap.min.js"></script>
        <script type="text/javascript" src="./views/js/main.js"></script>
        <script>
            $(function() {
                $('#menuclk').on('click', function() {
                    var submenu = $('#menu');
                    if (submenu.is(":visible")) {
                        submenu.slideUp();
                    } else {
                        submenu.slideDown();
                    }
                });
            });

        </script>
        <title>Document</title>
    </head>

    <body>
        <nav class="navbar navbar-default navbar-fixed-top">
            <div class="navbar-brand">
                <div id="menuclk">
                    <a class="glyphicon glyphicon-menu-hamburger"></a>
                </div>
                <ul id="menu">
                    <li>menu1</li>
                    <br>
                    <li>menu2</li>
                    <br>
                    <li>menu3</li>
                    <br>
                    <li>menu4</li>
                    <br>
                    <li>menu5</li>
                    <br>
                    <li>menu6</li>
                    <br>
                    <li>menu7</li>
                    <br>
                    <li>menu8</li>
                    <br>
                    <li>menu9</li>
                    <br>
                    <li>menu10</li>
                    <br>
                </ul>
            </div>
            <p class="navbar-text">
                <a href="#" class="navbar-link">
            Floracion
        </a>
            </p>

            <ul class="nav navbar-nav navbar-right">
                <li><a href="#"><span class="glyphicon glyphicon-user"></span> Sign Up</a></li>
                <li><a href="#" onclick="document.getElementById('id01').style.display='block'"><span class="glyphicon glyphicon-log-in"></span> Login</a></li>
            </ul>
            <form class="navbar-form navbar-right">
                <div class="form-group">
                    <input type="text" class="form-control" placeholder="Search">
                </div>
                <button id="sub" type="submit" class="btn btn-default">Submit</button>
            </form>
        </nav>
    </body>

    </html>
