<html>
<head>
    <meta name="layout" content="main"/>
    <g:set var="entityName" value="${message(code: 'produto.label', default: 'Produto')}"/>
    <title><g:message code="default.list.label" args="[entityName]"/></title>
    <link href="${resource(dir: "style/", file: "login.css")}" rel="stylesheet">
</head>

<body>

<div class="row">
    <div class="login">
        <div class="col-md-4 col-md-offset-4 col-sm-8 col-sm-offset-2">
            <div class="panel panel-default">

                <div class="panel-heading">
                    Por favor faça login
                </div>

                <div class="panel-body">
                    <div class="inner">
                        %{--<div class="fheader">Por favor faça login</div>--}%


                        <form action="/login/authenticate" method="POST" id="loginForm" class="cssform"
                              autocomplete="off">

                            <div class="row">
                                <div class="col-md-12">
                                    <div class="form-group">
                                        <label>Usuário:</label>
                                        <g:textField name="username" class="form-control" value="" required=""/>
                                        %{--<p class="help-block">Informe o código do produto.</p>--}%
                                    </div>
                                </div>

                                <div class="col-md-12">
                                    <div class="form-group">
                                        <label>Senha:</label>
                                        <g:passwordField name="password" class="form-control" value="" required=""/>
                                    </div>
                                </div>

                                <div class="col-md-12">
                                    <div class="form-group">
                                        <div class="checkbox">
                                            <label><g:checkBox name="remember-me"/> Lembrar</label>
                                        </div>
                                    </div>
                                </div>

                                <div class="col-md-12">
                                    <fieldset class="buttons">
                                        <g:submitButton name="create" class="save"
                                                        value="Login"/>
                                    </fieldset>
                                </div>
                            </div>

                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>


<script>
    (function () {
        document.forms['loginForm'].elements['username'].focus();
    })();
</script>

</body>
</html>