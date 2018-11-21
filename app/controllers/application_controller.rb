class ApplicationController < ActionController::Base
  before_action :autorizado


  protected
  def autorizado
    unless Usuario.find_by(usuario_id: session[:usuario_id])
      redirect_to sesion_path, notice: '¡Por favor debe ingresar con sus credenciales!'
    end
  end
end
