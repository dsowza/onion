package noticias

import groovy.transform.ToString

@ToString(includes = ['titulo'], includeNames = true, includePackage = false)
class Publicacao {
    String titulo;
    String conteudo;
    String fonte;

    static constraints = {
        titulo maxSize: 255, nullable: false
        conteudo maxSize: 2000, nullable: false
        fonte maxSize: 255
    }
}
