import comum.Arquivo
import comum.Parametro
import enums.ChaveParametro
import login.Usuario
import noticias.Publicacao

class BootStrap {

    def init = { servletContext ->
        Usuario.findByUsername('admin') ?: new Usuario(
                username: 'admin',
                password: 'senha',
                enabled: true).save(failOnError: true)

                ChaveParametro.values().each {
                    Parametro.findByChave(it) ?: new Parametro(
                            chave: it,
                            valor: it.valor).save(failOnError: true)
                }

        def arquivo1 = Arquivo.findByNome('testeNoticia.jpg') ?: new Arquivo(
                url: 'http://s2.glbimg.com/fc9QFW_UQqmPL21aVFglKgHY3eY=/695x0/s.glbimg.com/po/tt2/f/original/2014/09/08/super-mario-curiosidades.jpg',
                nome: 'super-mario-curiosidades.jpg'
        ).save(failOnError: true)

        def arquivo2 = Arquivo.findByNome('testeNoticia.jpg') ?: new Arquivo(
                url: '../grails-app/assets/images/grails-cupsonly-logo-white.svg',
                nome: 'super-mario-curiosidades.jpg'
        ).save(failOnError: true)

        Publicacao.findByTitulo('Título de testes 1: Taberna primeiro capítulo') ?: new Publicacao(
                titulo: 'Título de testes 1: Taberna primeiro capítulo',
                autor: 'Douglas',
                subtitulo: 'esse realmente é o subtítulo',
                resumo: 'Não sei o que escrever esse é o resumo ou subtítulo 1.',
                imagem: arquivo1,
                conteudo: 'nada a declarar'
        ).save(failOnError: true)

        Publicacao.findByTitulo('Título de testes 2: Taberna segundo capítulo') ?: new Publicacao(
                titulo: 'Título de testes 2: Taberna segundo capítulo',
                autor: 'Evando',
                resumo: 'Não sei o que escrever esse é o resumo ou subtítulo 3.',
                imagem: arquivo2,
                dateCreated:  new Date(2016,7,10),
                conteudo: 'nada a declarar'
        ).save(failOnError: true)

        Publicacao.findByTitulo('Título de testes 3: Taberna terceiro capítulo') ?: new Publicacao(
                titulo: 'Título de testes 3: Taberna terceiro capítulo',
                autor: 'Thiago',
                resumo: 'Não sei o que escrever esse é o resumo ou subtítulo 3.',
                dateCreated: new Date(2016,7,5),
                conteudo: 'nada a declarar'
        ).save(failOnError: true)
    }


    def destroy = {
    }
}
