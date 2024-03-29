class EntitiesController < ApplicationController
  before_filter :authenticate_entity!, except: [:index, :show]
  before_action :set_entity, only: [:show, :edit, :update, :destroy, :cambiar_contrasena]

  # GET /entities
  # GET /entities.json
  def index
    @entities = Entity.where('name is NOT NULL') # .where(logo: "is NOT NULL")
  end

  # GET /entities/1
  # GET /entities/1.json
  def show
  end

  # GET /entities/new
  def new
    @entity = Entity.new
  end

  # GET /entities/1/edit
  def edit
    if current_entity.email == @entity.email
      render :edit
    else
      redirect_to root_path, notice: 'Ha ocurrido un error, por favor abre el link de la invitación desde el correo que te enviamos.'
    end
  end

  def settings
    @entity = current_entity
  end

  def update_password
    @entity = Entity.find(current_entity.id)
    params[:entity].delete :password if params[:entity][:password].blank?
    params[:entity].delete :password_confirmation if params[:entity][:password_confirmation].blank?
    if @entity.update(entity_params)
      # Sign in the entity by passing validation in case their password changed
      bypass_sign_in(@entity)
      redirect_to configuracion_path, notice: 'Tu cuenta fue actualizada correctamente.'
    else
      redirect_to configuracion_path, alert: 'Tu cuenta no pudo ser actualizada.'
    end
  end

  # POST /entities
  # POST /entities.json
  def create
    @entity = Entity.new(entity_params)

    respond_to do |format|
      if @entity.save
        format.html { redirect_to entities_url, notice: 'Entity was successfully created.' }
        format.json { render :show, status: :created, location: @entity }
      else
        format.html { render :new }
        format.json { render json: @entity.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /entities/1
  # PATCH/PUT /entities/1.json
  def update
    respond_to do |format|
      if @entity.update(entity_params)
        format.html { redirect_to edit_entity_path, notice: 'Tu perfil fue actualizado correctamente.' }
        format.json { render :show, status: :ok, location: @entity }
      else
        p @entity.errors
        format.html { render :edit }
        format.json { render json: @entity.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /entities/1
  # DELETE /entities/1.json
  def destroy
    @entity.destroy
    respond_to do |format|
      format.html { redirect_to entities_url, notice: 'Entity was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_entity
    @entity = Entity.friendly.find(params[:id])
  end

  # Never trust parameters from the scary internet, only allow the white list through.
  def entity_params
    params.require(:entity).permit(:name, :description, :website, :phone, :contact_email, :facebook, :twitter, :instagram, :medium, :linkedin, :behance, :github, :pinterest, :youtube, :gplus, :logo, :email, :password, :password_confirmation)
  end
end
