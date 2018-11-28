class UsuarioController < ApplicationController
  before_action :set_usuario, only: [:mostrar, :editar, :actualizar, :eliminar] 
  
  def index
    @usuario = Usuario.all
  end

  def nuevo
    @usuario = Usuario.new
  end
  def editar
  end

  def crearUsuario
    @usuario = Usuario.new(usuario_params)
    respond_to do |format|
      if @usuario.save
        format.html { redirect_to usuario_url,
          notice: " ¡El usuario #{@usuario.nombre} fue creado satisfactoriamente! " }
      else
        #puts @usuario.password_digest 
        format.html { render :nuevo }
        #format.html { render @usuario_url }

      end
    end
  end
  def actualizar
    respond_to do |format|
      if @usuario.update(usuario_params)
        format.html { redirect_to @usuario, notice: 'Usuario was successfully updated.' }
        format.json { render :show, status: :ok, location: @usuario }
      else
        format.html { render :edit }
        format.json { render json: @usuario.errors, status: :unprocessable_entity }
      end
    end
  end
  def eliminar
    @usuario.destroy
    respond_to do |format|
      format.html { redirect_to usuario_path, notice: '¡el usuario fue eliminado satisfactoriamente!' }
      format.json { head :no_content }
    end
  end

  private
    def set_usuario
      @usuario = Usuario.find(params[:id])
    end

    def usuario_params
       params.require(:usuario).permit(:nombre, :password,:correo, :fecha_registro, :estatus)
    end
end

