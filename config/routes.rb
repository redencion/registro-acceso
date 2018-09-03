Rails.application.routes.draw do
  #resources :persona
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get  "organizacion", to: "organizacion#index"
  get "organizacion/registrar"
  post "organizacion", to: "organizacion#registrarOrganizacion"
  get  "organzacion/mostrar"
  get "organizacion/editar"

  #This routes Persona controller and model
  get "persona", to: "persona#index"
  post "persona", to: "persona#registrarPersona"
  get "persona/registrar"
  get "persona/:id", to:  "persona#mostrar", as: "persona_mostrar"
  get "persona/:id/editar" => "persona#editar", as: "persona_editar"

end
