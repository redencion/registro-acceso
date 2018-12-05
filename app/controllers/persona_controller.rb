class PersonaController < ApplicationController
  before_action :autorizado, :set_persona, only: [:mostrar, :editar, :actualizar, :eliminar] 
  #before_action :set_persona, only: [:mostrar, :editar, :update, :destroy]

  # GET /personas
  # GET /personas.json
  def index
    @personas = Persona.order(params[:sort]).page(params[:page]).per_page(5)
    #@personas = Persona.all
  end

  # GET /personas/1
  # GET /personas/1.json
  def mostrar
  end

  #GET /personas/busqueda

  def buscar
    @persona = Persona.new
  end

  def buscando
    @persona = Persona.new(persona_params)
  end

  # GET /personas/new
  def registrar
    @persona = Persona.new
  end

  # GET /personas/1/edit
  def editar
  end

  # POST /personas
  # POST /personas.json
  def registrarPersona
    @persona = Persona.new(persona_params)

    respond_to do |format|
      if @persona.save
        format.html { redirect_to persona_path, notice: ' ¡Persona ha sido creado satifactoriamente! ' }
        format.json { render :mostrar, status: :created, location: @persona }
      else
        format.html { render :registrar }
        format.json { render json: @persona.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /personas/1
  # PATCH/PUT /personas/1.json
  def actualizar
    respond_to do |format|
      if @persona.update(persona_params)
        format.html { redirect_to @persona, notice: 'Persona was successfully updated.' }
        format.json { render :show, status: :ok, location: @persona }
      else
        format.html { render :edit }
        format.json { render json: @persona.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /personas/1
  # DELETE /personas/1.json
  def eliminar
    @persona.destroy
    respond_to do |format|
      format.html { redirect_to persona_url, notice: '¡La persona fue eliminada satisfactoriamente!' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_persona
      @persona = Persona.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def persona_params
      params.require(:persona).permit(:organizacion_id,:persona_id, :cedula, :nombre, :apellido, :credencial, :fecha_registro, :estatus)
    end
end
