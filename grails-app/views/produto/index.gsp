<!DOCTYPE html>
<html>
<head>
    <meta name="layout" content="main"/>
    <g:set var="entityName" value="${message(code: 'produto.label', default: 'Produto')}"/>
    <title><g:message code="default.list.label" args="[entityName]"/></title>
</head>

<body>
<div id="list-produto" class="content scaffold-list" role="main">
    <div class="row">
        <div class="col-lg-12">
            <h1 class="page-header"><g:message code="default.list.label" args="[entityName]"/><g:link action="create"
                                                                                                      type="button"
                                                                                                      class="btn btn-primary pull-right">Novo produto</g:link></h1>
        </div>
        <!-- /.col-lg-12 -->
    </div>
    <g:if test="${flash.message}">
        <div class="message" role="status">${flash.message}</div>
    </g:if>
    <table class="table table-bordered table-hover table-striped">
        <thead>
        <tr>
            <th>Ações</th>
            <th>Código</th>
            <th>Nome</th>
            <th>Valor</th>
            <th>Descrição</th>
        </tr>
        </thead>
        <tbody>
        <g:each in="${produtoList}" var="produto">
            <tr>
                <td>
                    <g:link action="edit" params="[id: produto.id]" type="button" class="btn btn-success"><i
                            class="fa fa-edit"></i></g:link>

                    <button class="btn btn-danger" data-toggle="modal" data-target="#myModal"><i
                            class="fa fa-times"></i></button>
                    <!-- Modal -->
                    <div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel"
                         aria-hidden="true" style="display: none;">
                        <div class="modal-dialog">
                            <div class="modal-content">
                                <div class="modal-header">
                                    <button type="button" class="close" data-dismiss="modal"
                                            aria-hidden="true">×</button>
                                    <h4 class="modal-title" id="myModalLabel">Modal title</h4>
                                </div>

                                <div class="modal-body">
                                    Você deseja realmente apagar o produto?
                                </div>

                                <div class="modal-footer">
                                    <button type="button" class="btn btn-default" data-dismiss="modal">Cancelar</button>
                                    <g:link action="deletar" params="[id: produto.id]" type="button"
                                            class="btn btn-primary">Confirmar</g:link>
                                </div>
                            </div>
                        </div>
                    </div>

                </td>
                <td>${produto.codigo}</td>
                <td>${produto.nome}</td>
                <td><g:formatNumber number="${produto.valor}" type="currency" currencyCode="BRL"/></td>
                <td>${produto.descricao}</td>
            </tr>
        </g:each>
        </tbody>
    </table>

    <div class="pagination">
        <g:paginate total="${produtoCount ?: 0}"/>
    </div>
</div>
</body>
</html>