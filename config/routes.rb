LesliMailer::Engine.routes.draw do
    Lesli::Routing.mount_routes_for(LesliMailer)
end
