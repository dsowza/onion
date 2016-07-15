<!DOCTYPE html>
<html>
<head>
    <meta name="layout" content="main"/>
    <g:set var="entityName" value="${message(code: 'produto.label', default: 'Produto')}"/>
    <title><g:message code="default.edit.label" args="[entityName]"/></title>
</head>

<body>

<div id="edit-produto" class="content scaffold-edit" role="main">
    <g:form resource="${this.produto}" method="PUT">
        <g:hiddenField name="version" value="${this.produto?.version}"/>
        <g:hiddenField name="id" value="${this.produto?.id}"/>

        <div class="row">
            <div class="col-lg-12">
                <h1 class="page-header">Editar Produto</h1>
            </div>
            <!-- /.col-lg-12 -->
        </div>
        <!-- /.row -->
        <div class="panel panel-default">

            <div class="panel-heading">
                Editar Produto
            </div>

            <div class="panel-body">
                <div class="row">
                    <div class="col-md-2">
                        <div class="form-group">
                            <label>Código *</label>
                            <g:textField name="codigo" class="form-control" value="${this.produto?.codigo}" required=""
                                         maxlength="20"/>
                            %{--<p class="help-block">Informe o código do produto.</p>--}%
                        </div>
                    </div>

                    <div class="col-md-6">
                        <div class="form-group">
                            <label>Nome *</label>
                            <g:textField name="nome" class="form-control" value="${this.produto?.nome}" required=""
                                         maxlength="255"/>
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
                                             type="number_decimal" value="${this.produto?.valor}" required=""
                                             class="form-control maskMoney"
                                             placeholder="Valor" maxlength="12"/>
                            </div>
                        </div>
                    </div>

                    <div class="col-md-6">
                        <div class="form-group">
                            <label>Descrição *</label>
                            <g:textArea name="descricao" type="text" class="form-control"
                                        value="${this.produto?.descricao}" required=""
                                        maxlength="1000"/>
                        </div>
                    </div>
                    <div class="col-md-12">
                        <input class="btn btn-default" type="submit" value="Atualizar"/>
                    </div>
                </div>
            </div>
        </div>

    </g:form>
</div>
</body>
</html>
