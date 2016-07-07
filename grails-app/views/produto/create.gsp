<!DOCTYPE html>
<html>
<head>
    <meta name="layout" content="main"/>
    <g:set var="entityName" value="${message(code: 'produto.label', default: 'Produto')}"/>
    <title><g:message code="default.create.label" args="[entityName]"/></title>
</head>

<body>
<a href="#create-produto" class="skip" tabindex="-1"><g:message code="default.link.skip.label"
                                                                default="Skip to content&hellip;"/></a>

<div class="nav" role="navigation">
    <ul>
        <li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
        <li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]"/></g:link></li>
    </ul>
</div>
<div id="create-produto" class="content scaffold-create" role="main">
<h1><g:message code="default.create.label" args="[entityName]"/></h1>
<g:if test="${flash.message}">
    <div class="message" role="status">${flash.message}</div>
</g:if>
<g:hasErrors bean="${this.produto}">
    <ul class="errors" role="alert">
        <g:eachError bean="${this.produto}" var="error">
            <li <g:if test="${error in org.springframework.validation.FieldError}">data-field-id="${error.field}"</g:if>><g:message
                    error="${error}"/></li>
        </g:eachError>
    </ul>
</g:hasErrors>
<g:form action="save">
    <fieldset class="form">

%{--<f:all bean="produto"/>--}%

    <div class="row">
        <div class="col-lg-12">
            <h1 class="page-header">Produto</h1>
        </div>
        <!-- /.col-lg-12 -->
    </div>


    <div class="panel panel-default">

        <div class="panel-heading">
            Criar produto
        </div>

        <div class="panel-body">
            <div class="row">
                <div class="col-md-2">
                    <div class="form-group">
                        <label>Código *</label>
                        <g:textField name="codigo" class="form-control" value="" required="" maxlength="20"/>
                        %{--<p class="help-block">Informe o código do produto.</p>--}%
                    </div>
                </div>

                <div class="col-md-6">
                    <div class="form-group">
                        <label>Nome *</label>
                        <g:textField name="nome" class="form-control" value="" required="" maxlength="255"/>
                    </div>
                </div>

            </div>

            <div class="row">
                <div class="col-md-2">
                    <div class="form-group">
                        <label>Valor *</label>

                        <div class="input-group">
                            <span class="input-group-addon">R$</span>
                            <g:textField name="valor" data-affixes-stay="true" data-thousands="." data-decimal=","
                                         type="number_decimal" value="" required="" class="form-control maskMoney"
                                         placeholder="Valor" maxlength="12"/>
                        </div>
                    </div>
                </div>

                <div class="col-md-6">
                    <div class="form-group">
                        <label>Descrição *</label>
                        <g:textArea name="descricao" type="text" class="form-control" value="" required=""
                                    maxlength="1000"/>
                    </div>
                </div>
            </div>
        </div>
    </div>

    </div>
</fieldset>
    <fieldset class="buttons">
        <g:submitButton name="create" class="save"
                        value="${message(code: 'default.button.create.label', default: 'Create')}"/>
    </fieldset>
</g:form>
</div>
</body>
</html>
