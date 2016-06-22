package comum

import enums.ChaveParametro
import groovy.transform.ToString

@ToString(includes='username', includeNames=true, includePackage=false)
class Parametro  implements Serializable {
    ChaveParametro chave
    String valor

    static constraints = {
        chave nullable: false
        valor nullable: false
    }
}
