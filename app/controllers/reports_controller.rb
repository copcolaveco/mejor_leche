class ReportsController < ApplicationController

   before_action :set_estate, only: [ :show ,:edit ,:update ,:destroy ]
  before_action :authenticate_user!, except: [:show, :index]
  before_action :user_autorization, only: [ :show ,:edit ,:update ,:destroy, :new ]

  # GET /estates or /estates.json
  def index
    @estates = current_user.estates.order(created_at: :desc)
    @departments = Department.all
    @user_type = UserType.find_by(typename: 'Productor')
    @payrolls = Payroll.where(estate_id: current_user.estates.ids )
  end

  # GET /estates/1 or /estates/1.json
  def show
    respond_to do |format|
      format.html
      format.pdf do
        render pdf: "Predio.pdf", template: "estates/show.html.erb", layout: 'pdf.html', type: "application/pdf"
      end
    end
    @payrolls = Payroll.where(estate_id: @estate.id)
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

  def from_user
    @user = User.find(params[:user_id])
  end

  def from_department
    @department = Department.find(params[:department_id])
  end

  def from_productive_area
    @productive_area = ProductiveArea.find(params[:productive_areas_id])
  end

  def set_estate
    @has_estate = HasEstate.find(params[:id])
  end

  def has_estate_params
    params.require(:estate).permit(:user_id, :estate_id)
  end

  def user_autorization
    unless current_user.user_type_id != 2 and current_user.user_type_id != 4
      redirect_to root_path, notice: "No tienes los permisos necesarios para crear un Predio."
    end  
  end 

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_estate
      @estate = current_user.estates.find(params[:id])
    end

    def from_user_user_type
      @secondary_user_type = SecondaryUserTypes.find(params[:secondary_user_type_id])
    end

    # Only allow a list of trusted parameters through.
    def estate_params
      params.require(:estate).permit(:name, :dicose, :user_id, :department_id, :productive_area_id)
    end

    def search_params
      params.require(:estate).permit(:user_id)
    end

end
