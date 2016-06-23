package loja

import comum.Arquivo
import groovy.transform.ToString

@ToString(includes=['codigo', 'nome'], includeNames=true, includePackage=false)
class Produto implements Serializable  {

    String codigo
    String nome
    BigDecimal valor
    String descricao

    static hasMany = [imagens: ImagemProduto]

    static constraints = {
        codigo maxSize: 20,nullable: false, unique: true
        nome maxSize: 255, nullable: false
        valor nullable: false
        descricao maxSize: 1000
    }
}
