class HasEstatesController < ApplicationController
	before_action :set_has_estate, only: [ :show ,:edit ,:update ,:destroy ]
  before_action :authenticate_user!, except: [:show, :index]

	def index
		@has_estates = HasEstate.where(estate_id: current_user.estates)
		@estates = current_user.estates.order(created_at: :desc)
		@user_type = UserType.find_by(typename: 'Técnico')
		@sec = SecondaryUserType.where(user_type_id: @user_type.id)
		@users = User.where(user_type: @user_type)
	end
	
  def new
		@has_estate = HasEstate.new
	end

	def show
  	end

	def create
    
    @has_estate = HasEstate.new(has_estate_params)

    respond_to do |format|
	      if @has_estate.save
	        format.html { redirect_to has_estates_path, notice: "Asociacion creado correctamente." }
	        format.json { render :show, status: :created, location: @has_estate }
	      else
	        format.html { redirect_to has_estates_path, notice: "Esta asociacion ya existe." }
	        format.json { render json: @has_estate.errors, status: :unprocessable_entity }
	      end
	    end
	  end

	def has_estate_params
      params.require(:has_estate).permit(:user_id, :estate_id)
    end

  def destroy
    @has_estate.destroy
    respond_to do |format|
      format.html { redirect_to has_estates_path, notice: "Asociacion eliminada correctamente." }
      format.json { head :no_content }
    end
  end

	private
  def set_has_estate
    @has_estate = HasEstate.find(params[:id])
  end

  def from_user_user_type
	@secondary_user_type = SecondaryUserTypes.find(params[:secondary_user_type_id])
  end

  def from_user_type
	@user_type = UserType.find_by(typename: 'Técnico')
  end

  def from_user
    @user = User.find(params[:user_id])
	end

	def from_estate
		@estate = Estate.find(params[:estate_id])
	end

	def from_secondary_user_type
		@secondary_user_type = SecondaryUserType.find(params[:secondary_user_type_id])
	end

end
