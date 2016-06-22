package comum

import groovy.transform.ToString

@ToString(includes=['id', 'nome', 'caminhoRelativo'], includeNames=true, includePackage=false)
class Arquivo implements Serializable {
    String caminhoRelativo
    String url
    String nome

    static constraints = {
    }
}
