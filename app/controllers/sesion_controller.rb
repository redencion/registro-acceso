class SesionController < ApplicationController
  skip_before_action :autorizado, only: [:inicio,:crear]

  def inicio
  end

  def crear
    @usuario = Usuario.find_by(correo: params[:correo])
    if @usuario and @usuario.authenticate(params[:password])
      session[:usuario_id] = @usuario.usuario_id
      redirect_to admin_index_url
    else
      #flash[:notice] = "Datos de usuario/password incorrectos"
      redirect_to sesion_url, alert: 'Datos de usuario/password incorrectos'
    end
  end

  def eliminarSesion
    session[:usuario_id] = nil
    redirect_to sesion_url, alert: '¡Usted ha cerrado Sesion!'
  end
end
