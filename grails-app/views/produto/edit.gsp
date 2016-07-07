<!DOCTYPE html>
<html>
    <head>
        <meta name="layout" content="main" />
        <g:set var="entityName" value="${message(code: 'produto.label', default: 'Produto')}" />
        <title><g:message code="default.edit.label" args="[entityName]" /></title>
    </head>
    <body>
        <a href="#edit-produto" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
        <div class="nav" role="navigation">
            <ul>
                <li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
                <li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
                <li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
            </ul>
        </div>
        <div id="edit-produto" class="content scaffold-edit" role="main">
            <h1><g:message code="default.edit.label" args="[entityName]" /></h1>
            <g:if test="${flash.message}">
            <div class="message" role="status">${flash.message}</div>
            </g:if>
            <g:hasErrors bean="${this.produto}">
            <ul class="errors" role="alert">
                <g:eachError bean="${this.produto}" var="error">
                <li <g:if test="${error in org.springframework.validation.FieldError}">data-field-id="${error.field}"</g:if>><g:message error="${error}"/></li>
                </g:eachError>
            </ul>
            </g:hasErrors>
            <g:form resource="${this.produto}" method="PUT">
                <g:hiddenField name="version" value="${this.produto?.version}" />
                %{--<fieldset class="form">--}%
                    %{--<form action="/produto/save" method="post">--}%
                        %{--<fieldset class="form">--}%
                            %{--<div class="fieldcontain required">--}%
                                %{--<label for="codigo">Codigo--}%
                                    %{--<span class="required-indicator">*</span>--}%
                                %{--</label><input type="text" name="codigo" value="" required="" maxlength="20" id="codigo">--}%
                            %{--</div><div class="fieldcontain required">--}%
                            %{--<label for="nome">Nome--}%
                                %{--<span class="required-indicator">*</span>--}%
                            %{--</label><input type="text" name="nome" value="" required="" maxlength="255" id="nome">--}%
                        %{--</div><div class="fieldcontain required">--}%
                            %{--<label for="valor">Valor--}%
                                %{--<span class="required-indicator">*</span>--}%
                            %{--</label><input type="number decimal" name="valor" value="" required="" id="valor">--}%
                        %{--</div><div class="fieldcontain required">--}%
                            %{--<label for="descricao">Descricao--}%
                                %{--<span class="required-indicator">*</span>--}%
                            %{--</label><input type="text" name="descricao" value="" required="" maxlength="1000" id="descricao">--}%
                        %{--</div><div class="fieldcontain">--}%
                            %{--<label for="imagens">Imagens</label><ul></ul><a href="/imagemProduto/create?produto.id=">Adicionar ImagemProduto</a>--}%
                        %{--</div>--}%
                        %{--</fieldset>--}%
                    %{--</form>--}%
                %{--</fieldset>--}%

                <div class="row">
                    <div class="col-lg-12">
                        <h1 class="page-header">Forms</h1>
                    </div>
                    <!-- /.col-lg-12 -->
                </div>
                <!-- /.row -->
                <div class="row">
                    <div class="col-lg-12">
                        <div class="panel panel-default">
                            <div class="panel-heading">
                                Basic Form Elements
                            </div>
                            <div class="panel-body">
                                <div class="row">
                                    Text area
                                    <!-- /.col-lg-6 (nested) -->
                                    <div class="col-lg-6">
                                        <h1>Disabled Form States</h1>
                                        <form role="form">
                                            <fieldset disabled>
                                                <div class="form-group">
                                                    <label for="disabledSelect">Disabled input</label>
                                                    <input class="form-control" id="disabledInput" type="text" placeholder="Disabled input" disabled>
                                                </div>
                                                <div class="form-group">
                                                    <label for="disabledSelect">Disabled select menu</label>
                                                    <select id="disabledSelect" class="form-control">
                                                        <option>Disabled select</option>
                                                    </select>
                                                </div>
                                                <div class="checkbox">
                                                    <label>
                                                        <input type="checkbox">Disabled Checkbox
                                                    </label>
                                                </div>
                                                <button type="submit" class="btn btn-primary">Disabled Button</button>
                                            </fieldset>
                                        </form>
                                        <h1>Form Validation States</h1>
                                        <form role="form">
                                            <div class="form-group has-success">
                                                <label class="control-label" for="inputSuccess">Input with success</label>
                                                <input type="text" class="form-control" id="inputSuccess">
                                            </div>
                                            <div class="form-group has-warning">
                                                <label class="control-label" for="inputWarning">Input with warning</label>
                                                <input type="text" class="form-control" id="inputWarning">
                                            </div>
                                            <div class="form-group has-error">
                                                <label class="control-label" for="inputError">Input with error</label>
                                                <input type="text" class="form-control" id="inputError">
                                            </div>
                                        </form>
                                        <h1>Input Groups</h1>
                                        <form role="form">
                                            <div class="form-group input-group">
                                                <span class="input-group-addon">@</span>
                                                <input type="text" class="form-control" placeholder="Username">
                                            </div>
                                            <div class="form-group input-group">
                                                <input type="text" class="form-control">
                                                <span class="input-group-addon">.00</span>
                                            </div>
                                            <div class="form-group input-group">
                                                <span class="input-group-addon"><i class="fa fa-eur"></i>
                                                </span>
                                                <input type="text" class="form-control" placeholder="Font Awesome Icon">
                                            </div>
                                            <div class="form-group input-group">
                                                <span class="input-group-addon">$</span>
                                                <input type="text" class="form-control">
                                                <span class="input-group-addon">.00</span>
                                            </div>
                                            <div class="form-group input-group">
                                                <input type="text" class="form-control">
                                                <span class="input-group-btn">
                                                    <button class="btn btn-default" type="button"><i class="fa fa-search"></i>
                                                    </button>
                                                </span>
                                            </div>
                                        </form>
                                    </div>
                                    <!-- /.col-lg-6 (nested) -->
                                </div>
                                <!-- /.row (nested) -->
                            </div>
                            <!-- /.panel-body -->
                        </div>
                        <!-- /.panel -->
                    </div>
                    <!-- /.col-lg-12 -->
                </div>
                <!-- /.row -->
                <fieldset class="buttons">
                    <input class="save" type="submit" value="${message(code: 'default.button.update.label', default: 'Update')}" />
                </fieldset>
            </g:form>
        </div>
    </body>
</html>
