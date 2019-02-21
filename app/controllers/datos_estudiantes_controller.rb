class DatosEstudiantesController < ApplicationController
  before_action :set_datos_estudiante, only: [:show, :edit, :update, :destroy]

  # GET /datos_estudiantes
  # GET /datos_estudiantes.json
  def index
    @datos_estudiantes = DatosEstudiante.all
  end

  # GET /datos_estudiantes/1
  # GET /datos_estudiantes/1.json
  def show
  end

  # GET /datos_estudiantes/new
  def new
    @datos_estudiante = DatosEstudiante.new
  end

  # GET /datos_estudiantes/1/edit
  def edit
  end

  # POST /datos_estudiantes
  # POST /datos_estudiantes.json
  def create
    @datos_estudiante = DatosEstudiante.new(datos_estudiante_params)

    respond_to do |format|
      if @datos_estudiante.save
        format.html { redirect_to @datos_estudiante, notice: 'Datos estudiante was successfully created.' }
        format.json { render :show, status: :created, location: @datos_estudiante }
      else
        format.html { render :new }
        format.json { render json: @datos_estudiante.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /datos_estudiantes/1
  # PATCH/PUT /datos_estudiantes/1.json
  def update
    respond_to do |format|
      if @datos_estudiante.update(datos_estudiante_params)
        format.html { redirect_to @datos_estudiante, notice: 'Datos estudiante was successfully updated.' }
        format.json { render :show, status: :ok, location: @datos_estudiante }
      else
        format.html { render :edit }
        format.json { render json: @datos_estudiante.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /datos_estudiantes/1
  # DELETE /datos_estudiantes/1.json
  def destroy
    @datos_estudiante.destroy
    respond_to do |format|
      format.html { redirect_to datos_estudiantes_url, notice: 'Datos estudiante was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_datos_estudiante
      @datos_estudiante = DatosEstudiante.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def datos_estudiante_params
      params.require(:datos_estudiante).permit(:nombres, :apellidos, :carrera, :carnet)
    end
end
