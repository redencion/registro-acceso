class OrganizacionController < ApplicationController
  protect_from_forgery with: :exception
  before_action :autorizado
  before_action :set_organizacion, only: [:mostrar, :actualizar, :editar, :eliminar]

  def index
    @organizacion = Organizacion.all  
  end

  def registrar
    @org = Organizacion.new
  end

  def editar
  end
  
  def mostrar
  end

  def show
  end


  def registrarOrganizacion
   @org = Organizacion.new(organizacion_params)
   respond_to do |format|
    if @org.save
      format.html { redirect_to @org, notice: '¡La organizacion fue creada exitosamente!.'  }
      format.json { render :mostrar, status: :created, location: @org  }
    else
      format.html { render :registrar  }
      format.json { render json: @org.errors, status: :unprocessable_entity  }
    end
   end
  end

  def actualizar
    respond_to do |format|
      if @org.update(organizacion_params)
        format.html { redirect_to organizacion_path , notice: 'Organizacion was successfully updated.' }
        format.json { render :mostrar, status: :ok, location: @org }
      else
        format.html { render :editar }
        format.json { render json: @org.errors, status: :unprocessable_entity }
      end
    end
  end

  def eliminar
    @org.destroy
    respond_to do |format|
      format.html { redirect_to organizacion_path, notice: '¡La organizacion fue eliminada satisfactoriamente!' }
      format.json { head :no_content }
    end
  end
  private

  def set_organizacion
    @org = Organizacion.find(params[:id])
  end

  def organizacion_params
    params.require(:organizacion).permit(:organizacion_id,:nombre)
  end


end
