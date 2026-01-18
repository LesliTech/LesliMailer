LesliMailer::Engine.routes.draw do
    Lesli::Router.mount_routes_for(LesliMailer)
end
