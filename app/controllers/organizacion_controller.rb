class OrganizacionController < ApplicationController
  before_action  :set_organizacion, only: [:mostrar, :actualizar, :editar, :eliminar]

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

  def set_organizacion
    @org = Organizacion.find(params[:id])
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

  private

  def set_organizacion
    @org = Organizacion.find(params[:id])
  end

  def organizacion_params
    params.require(:organizacion).permit(:nombre)
  end


end
