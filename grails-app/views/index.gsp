<!doctype html>
<html>
<head>
    <meta name="layout" content="mainPublic"/>
    <title>Welcome to Grails</title>

    <asset:link rel="icon" href="favicon.ico" type="image/x-ico"/>
</head>

<body>
<div class="container">
    <!-- Example row of columns -->
    <div class="row">
    <g:each in="${noticias.Publicacao.list([sort: 'dateCreated', order: 'desc']).collect {[id: it.id, titulo: it.titulo, resumo: it.resumo, imagem: it.imagem?.url, subtitulo: it.subtitulo]}}" var="publicacao">
        <div class="col-md-4">
            <h2>${publicacao.titulo}</h2>
            <h3>${publicacao.subtitulo}</h3>
            <img class="img-responsive" src="${publicacao.imagem}"/>
            <p>${publicacao.resumo}</p>
            <p><a class="btn btn-default" role="button" href="#">View details »</a></p>
        </div>
    </g:each>
    </div>
</div>
</body>
</html>
