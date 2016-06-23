package taberna

class UrlMappings {

    static mappings = {
        "/$controller/$action?/$id?(.$format)?"{
            constraints {
                // apply constraints here
            }
        }

        "/"(view:"/index")
        "/exemplos"(view:"/exemplos/index")
        "500"(view:'/error')
        "404"(view:'/notFound')
    }
}
