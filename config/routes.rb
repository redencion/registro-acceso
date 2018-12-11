Rails.application.routes.draw do
  #resources :organizacion
  get 'admin/index'
  get 'sesion/crear'
  get 'sesion/eliminarSesion' => 'sesion#eliminarSesion', as: "cerrarSesion"
  get 'sesion', to: 'sesion#inicio'
  post 'sesion', to: 'sesion#crear'
  #routes Acceso 
  get 'acceso', to: 'acceso#index'
  post 'acceso', to: 'acceso#verificacion'

  #routes usuario
  get 'usuario', to: 'usuario#index'
  get 'usuario/nuevo', to: 'usuario#nuevo'
  post 'usuario', to: 'usuario#crearUsuario'
  get 'usuario/:id' => 'usuario#editar', as: 'usuario_editar'
  get 'usuario/:id' => 'usuario#mostrar', as: 'usuario_mostrar'
  patch 'usuario/:id' => 'usuario#actualizar'
  put 'usuario/:id' => 'usuario#actualizar'

  delete "usuario/:id" => "usuario#eliminar", as: "usuario_eliminar"

  #routes verificacion
  get 'verificacion', to: 'verificacion#index'
  post 'verificacion', to: 'verificacion#buscando'
  get 'verificacion/credencial', to: 'verificacion#credencial'

 # resources :organizacion, :organizacion_path => { :update  => 'actualizar', :create => 'registrarOrganizacion'}
  #resources  :organizacions, controller: 'organizacion'
  #resolve("organizacions") { [:organizacion]  }
  #get 'organizacions', controlller: 'organizacion'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get  "organizacion" => "organizacion#index"
  get "organizacion/registrar" =>  "organizacion#registrar", as: :organizacion_nueva
  post "organizacion"  => "organizacion#registrarOrganizacion"
  patch "organizacion/:id/" => "organizacion#actualizar"
  put "organizacion/:id/" => "organizacion#update"
  get 'organzacion/:id' => 'organizacion#mostrar', as: :organizacion_mostrar
  get "organizacion/:id/", to: "organizacion#editar", as: :organizacion_editar

  delete "organizacion/:id" => "organizacion#eliminar", as: "organizacion_eliminar"
  #resources  :organizacion, only: [:update ]

  #This routes Persona controller and model
  get "persona", to: "persona#index"
  post "persona", to: "persona#registrarPersona"
  post "persona/buscando", to: "persona#buscando"
  post "persona/verificando", to: "persona#verificando"
  get "persona/buscar"
  get "persona/registrar"
  get "persona/:id/mostrar", to:  "persona#mostrar", as: "persona_mostrar"
  get "persona/:id/", to: "persona#editar", as: "persona_editar"
  patch "persona/:id" => "persona#actualizar", as: "persona_actualizar"
  put "persona/:id" => "persona#actualizar"
  delete "persona/:id" => "persona#eliminar", as: "persona_eliminar"


end
