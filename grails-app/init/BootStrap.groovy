import login.Usuario

class BootStrap {

    def init = { servletContext ->
        def adminUser = Usuario.findByUsername('admin') ?: new Usuario(
                username: 'admin',
                password: 'senha',
                enabled: true).save(failOnError: true)
    }
    def destroy = {
    }
}
