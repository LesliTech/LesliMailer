LesliMailer::Engine.routes.draw do
    Lesli::Router.mount_lesli_engine_routes(self)
end
