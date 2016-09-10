<!DOCTYPE html>
<html lang="pt">

<head>

    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>SB Admin 2 - Bootstrap Admin Theme</title>

    <!-- Bootstrap Core CSS -->
    <link href="${resource(dir: "sb-admin/bower_components/bootstrap/dist/css/", file: "bootstrap.min.css")}" rel="stylesheet">

    <!-- Custom Fonts -->
    <link href="${resource(dir: "sb-admin/bower_components/font-awesome/css/", file: "font-awesome.min.css")}" rel="stylesheet" type="text/css">

    <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
        <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
        <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->

</head>

<body>
<div class="container">
    <nav class="navbar navbar-inverse navbar-fixed-top">
        <div class="container">
            <div class="navbar-header">
                <button class="navbar-toggle collapsed" aria-expanded="false" aria-controls="navbar" type="button" data-toggle="collapse" data-target="#navbar">
                    <span class="sr-only">Toggle navigation</span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>
                <a class="navbar-brand" href="#">Project name</a>
            </div>
            <div class="navbar-collapse collapse" id="navbar">
                <form class="navbar-form navbar-right">
                    <div class="form-group">
                        <input class="form-control" type="text" placeholder="Email">
                    </div>
                    <div class="form-group">
                        <input class="form-control" type="password" placeholder="Password">
                    </div>
                    <button class="btn btn-success" type="submit">Sign in</button>
                </form>
            </div><!--/.navbar-collapse -->
        </div>
    </nav>
      <div class="jumbotron">
    <div class="container">
        <h1>Hello, world!</h1>
        <p>This is a template for a simple marketing or informational website. It includes a large callout called a jumbotron and three supporting pieces of content. Use it as a starting point to create something more unique.</p>
        <p><a class="btn btn-primary btn-lg" role="button" href="#">Learn more »</a></p>
    </div>
</div>
    <g:layoutBody/>
    <hr>

    <footer>
        <p>© 2016 Company, Inc.</p>
    </footer>
<script src="${resource(dir: "sb-admin/bower_components/jquery/dist/", file: "jquery.min.js")}"></script>
<!-- Bootstrap Core JavaScript -->
<script src="${resource(dir: "sb-admin/bower_components/bootstrap/dist/js/", file: "bootstrap.min.js")}"></script>

<script src="${resource(dir: "sb-admin/bower_components/inputmask/min/", file: "jquery.inputmask.bundle.min.js")}"></script>

</body>
</html>
