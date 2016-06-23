import comum.Parametro
import enums.ChaveParametro
import login.Usuario

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
    }
    def destroy = {
    }
}
