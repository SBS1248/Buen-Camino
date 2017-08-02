<%@ page contentType="text/html; charset=euc-kr" %>
    <html>

    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=devuce-width, initial-scale=1">
        <link rel="stylesheet" href="./bootstrap-3.3.7-dist/css/bootstrap.min.css">
        <link rel="stylesheet" href="./views/css/firstGate.css">
        <script type="text/javascript" src="./jquery-3.2.1.min.js"></script>
        <script type="text/javascript" src="./bootstrap-3.3.7-dist/js/bootstrap.min.js"></script>
        <script type="text/javascript">
        $(function(){
           $('body').on('click',function(){
              location.href="./main.jsp"; 
           });
        });
        </script>
        <title>Floracion</title>
    </head>

    <body>
        <video id="videobcg" preload="auto" autoplay="true" loop="loop" muted="muted">
    <source src="img/roadtrip.mp4">
</video>
        <div id="bg">
            <div class="container">
                <h1>Floración</h1>
                <h3>Buen Camino</h3>
            </div>
        </div>

    </body>

    </html>
