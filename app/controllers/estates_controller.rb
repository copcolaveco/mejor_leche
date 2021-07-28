class EstatesController < ApplicationController
  before_action :set_estate, only: [ :show ,:edit ,:update ,:destroy ]
  before_action :authenticate_user!, except: [:show, :index]
  # before_action :correct_user, only: [:edit, :update, :destroy]

  # GET /estates or /estates.json
  def index
    @estates = current_user.estates.order(created_at: :desc)
    @departments = Department.all
    @user_type = UserType.find_by(typename: 'Productor')
  end

  # GET /estates/1 or /estates/1.json
  def show
    respond_to do |format|
      format.html
      format.pdf do
        render pdf: "#{@estate.name}", template: "estates/show.html.erb", layout: 'pdf.html'
      end
    end
  end

  # GET /estates/new
  def new    
    @estate = current_user.estates.build
  end

  # GET /estates/1/edit
  def edit
  end

  def estates_users
  end

  def create
    
    @estate = current_user.estates.build(estate_params)
    respond_to do |format|
      if @estate.save
        format.html { redirect_to @estate, notice: "Predio creado correctamente." }
        format.json { render :show, status: :created, location: @estate }     
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @estate.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /estates/1 or /estates/1.json
  def update
    respond_to do |format|
      if @estate.update(estate_params)
        format.html { redirect_to @estate, notice: "Predio modificado correctamente." }
        format.json { render :show, status: :ok, location: @estate }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @estate.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /estates/1 or /estates/1.json
  def destroy
    @estate.destroy
    respond_to do |format|
      format.html { redirect_to estates_url, notice: "Predio eliminado correctamente." }
      format.json { head :no_content }
    end
  end

  def from_user
    @user = User.find(params[:user_id])
  end

  def set_estate
    @has_estate = HasEstate.find(params[:id])
  end

  def correct_user
    @estate = current_user.estates.find_by(user_id: params[:id])
    redirect_to estates_path, notice: "No esta autorizado a Crear, Editar o Eliminar los Predio" if @user.nil? 
  end

  def has_estate_params
      params.require(:estate).permit(:user_id, :estate_id)
    end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_estate
      @estate = Estate.find(params[:id])
    end

    def from_user_user_type
      @secondary_user_type = SecondaryUserTypes.find(params[:secondary_user_type_id])
    end

    # Only allow a list of trusted parameters through.
    def estate_params
      params.require(:estate).permit(:name, :dicose, :user_id, :department_id)
    end

    def search_params
      params.require(:estate).permit(:user_id)
    end
end
