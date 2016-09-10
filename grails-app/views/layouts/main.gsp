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

    <!-- MetisMenu CSS -->
    <link href="${resource(dir: "sb-admin/bower_components/metisMenu/dist/", file: "metisMenu.min.css")}" rel="stylesheet">

    <!-- Timeline CSS -->
    <link href="${resource(dir: "sb-admin/dist/css/", file: "timeline.css")}" rel="stylesheet">

    <!-- Custom CSS -->
    <link href="${resource(dir: "sb-admin/dist/css/", file: "sb-admin-2.css")}" rel="stylesheet">

    <!-- Morris Charts CSS -->
    %{--<link href="${resource(dir: "sb-admin/bower_components/morrisjs/", file: "morris.css")}" rel="stylesheet">--}%

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
    <g:render template="/layouts/cabecalho"/>
    <div id="page-wrapper">
        <g:layoutBody/>
    </div>
<script src="${resource(dir: "sb-admin/bower_components/jquery/dist/", file: "jquery.min.js")}"></script>

<!-- Bootstrap Core JavaScript -->
<script src="${resource(dir: "sb-admin/bower_components/bootstrap/dist/js/", file: "bootstrap.min.js")}"></script>

<!-- Metis Menu Plugin JavaScript -->
<script src="${resource(dir: "sb-admin/bower_components/metisMenu/dist/", file: "metisMenu.min.js")}"></script>

<!-- Morris Charts JavaScript -->
<script src="${resource(dir: "sb-admin/bower_components/raphael/", file: "raphael-min.js")}"></script>

<!-- Custom Theme JavaScript -->
<script src="${resource(dir: "sb-admin/dist/js/", file: "sb-admin-2.js")}"></script>

<script src="${resource(dir: "sb-admin/bower_components/inputmask/min/", file: "jquery.inputmask.bundle.min.js")}"></script>

<script src="${resource(dir: "sb-admin/bower_components/", file: "jquery.maskMoney.min.js")}"></script>

<script>
    $(function() {
        $('.maskMoney').maskMoney();
    })
</script>

</body>
</html>
