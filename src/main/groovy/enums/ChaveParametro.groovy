package enums


enum ChaveParametro {
    NOME_SISTEMA('Vendas (Provisório)'),
    REPOSITORIO("C:/Jogos"),
    QUANTIDADE_PAGINACAO("20")

    final String valor;

    ChaveParametro(String valor){
        this.valor = valor;
    }
}