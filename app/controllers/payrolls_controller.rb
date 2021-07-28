class PayrollsController < ApplicationController
  before_action :set_payroll, only: %i[ show edit update destroy ]
  before_action :authenticate_user!, except: [:show, :index]

  # GET /payrolls or /payrolls.json
  def index
    @payrolls = current_user.payrolls.order(created_at: :desc)
    @estates = current_user.estates.order(created_at: :desc) 
  end

  # GET /payrolls/1 or /payrolls/1.json
  def show
    respond_to do |format|
      format.html
      format.pdf do
        render pdf: "#{@payroll.saved_date.strftime("%Y %m %d")}, #{@payroll.estate.name}", template: "payrolls/show.html.erb", layout: 'pdf.html'
      end
    end
  end

  # GET /payrolls/new
  def new
    @estates = current_user.estates.order(created_at: :desc)
    @payroll = Payroll.new
  end

  # GET /payrolls/1/edit
  def edit
    @estates = current_user.estates.order(created_at: :desc)
  end

  # POST /payrolls or /payrolls.json
  def create
    @payroll = Payroll.new(payroll_params)

    respond_to do |format|
      if @payroll.save
        format.html { redirect_to @payroll, notice: "La Planilla se creó correctamente." }
        format.json { render :show, status: :created, location: @payroll }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @payroll.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /payrolls/1 or /payrolls/1.json
  def update
    respond_to do |format|
      if @payroll.update(payroll_params)
        format.html { redirect_to @payroll, notice: "La Planilla fue modificada correctamente." }
        format.json { render :show, status: :ok, location: @payroll }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @payroll.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /payrolls/1 or /payrolls/1.json
  def destroy
    @payroll.destroy
    respond_to do |format|
      format.html { redirect_to payrolls_url, notice: "La Planilla fue eliminada correctamente." }
      format.json { head :no_content }
    end
  end

  def from_estate
    @estate = Estate.find(params[:user_id])
  end

  def from_rodeos_main_breed
    @rodeos_main_breed = RodeosMainBreed.find(params[:rodeos_main_breed_id])
  end

  def from_user_user_type
    @secondary_user_type = SecondaryUserTypes.find(params[:secondary_user_type_id])
  end

  def from_estate_department
    @department = Department.find(params[:department_id])
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_payroll
      @payroll = Payroll.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def payroll_params
      params.require(:payroll).permit( :user_type, :liter_sent, :liters_of_milk_not_sent, :cell_count, :bacterial_count, :grease, :protein, :mun, :cryoscopy, :vm_surface, :dairy_surface, :milking_cows, :dry_cows, :cow_dough, :suckling_calves, :conc_protein, :form_of_supply_protein, :conc_energy, :form_of_supply_energy, :wet_grain, :form_of_supply_grain, :henilages, :form_of_supply_henilages, :silo, :form_of_supply, :grams_of_ration_liter, :mineral_salts, :grams_of_salt_liter, :no_grazing_days, :childbirth_racks, :calving_heifers, :discarded_cows, :cows_served, :pregnant_cows, :clinical_mastitis, :cows_on_detour, :abortions_seen, :reproductive_losses, :cows_with_foot_problems, :dead_cows, :rains, :user_id, :lactose, :saved_date, :estate_id, :rodeos_main_breed_id)
    end
end
