package noticias

import comum.Arquivo
import groovy.transform.ToString

@ToString(includes = ['titulo'], includeNames = true, includePackage = false)
class Publicacao {
    String titulo;
    String subtitulo;
    String resumo;
    String conteudo;
    String autor;
    Arquivo imagem;
    String fonte;
    Date dateCreated;

    static constraints = {
        titulo maxSize: 255, nullable: false
        conteudo maxSize: 2000, nullable: false
        fonte maxSize: 255, nullable: true
        resumo maxSize: 255, nullable: true
        subtitulo maxSize: 255, nullable: true
        autor maxSize: 255, nullable: true
        imagem nullable: true
    }
}
