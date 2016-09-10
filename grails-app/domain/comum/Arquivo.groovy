package comum

import groovy.transform.ToString

@ToString(includes=['id', 'nome', 'caminhoRelativo'], includeNames=true, includePackage=false)
class Arquivo implements Serializable {
    String url
    String nome
    byte[] arquivo

    static mapping = {
        arquivo type: 'blob'
    }

    static constraints = {
        arquivo nullable: true
    }
}
