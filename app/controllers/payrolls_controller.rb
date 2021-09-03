class PayrollsController < ApplicationController
  before_action :set_payroll, only: %i[ show edit update destroy ]
  before_action :authenticate_user!, except: [:show, :index]
  before_action :set_form_of_supp, only: [ :show ,:edit ,:update ,:destroy ]

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
        render pdf: "#{@payroll.saved_date.strftime("%Y %m %d")}, #{@payroll.estate}.pdf", template: "payrolls/show.html.erb", layout: 'pdf.html', type: "application/pdf"
      end
    end
    
  end

  def set_form_of_supp
    if !@payroll.form_of_supply_protein.nil?
      @form_of_supply_protein = FormOfSupply.find( @payroll.form_of_supply_protein)
    end
    if !@payroll.form_of_supply_energy.nil?
      @form_of_supply_energy = FormOfSupply.find( @payroll.form_of_supply_energy)
    end
    if !@payroll.form_of_supply_grain.nil?
      @form_of_supply_grain = FormOfSupply.find( @payroll.form_of_supply_grain)
    end
    if !@payroll.form_of_supply_henilages.nil?
      @form_of_supply_henilages = FormOfSupply.find( @payroll.form_of_supply_henilages)
    end
    if !@payroll.form_of_supply.nil?
      @form_of_supply = FormOfSupply.find( @payroll.form_of_supply)
    end
    if !@payroll.form_of_supply_balanced_ration.nil?
      @form_of_supply_balanced_ration = FormOfSupply.find( @payroll.form_of_supply_balanced_ration)
    end
  end

  # GET /payrolls/new
  def new
    @payroll = current_user.payrolls.build
  end

  # GET /payrolls/1/edit
  def edit
    @estates = current_user.estates.order(created_at: :desc)
  end

  # POST /payrolls or /payrolls.json
  def create
    @payroll = current_user.payrolls.build(payroll_params)

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
      @payroll = current_user.payrolls.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def payroll_params
      params.require(:payroll).permit( 
        :user_type, 
        :liter_sent, 
        :liters_of_milk_not_sent, 
        :cell_count, 
        :bacterial_count, 
        :grease, 
        :protein, 
        :mun, 
        :cryoscopy, 
        :vm_surface, 
        :dairy_surface, 
        :milking_cows, 
        :dry_cows, 
        :cow_dough, 
        :suckling_calves, 
        :conc_protein, 
        :form_of_supply_protein, 
        :conc_energy, 
        :form_of_supply_energy, 
        :wet_grain, 
        :form_of_supply_grain, 
        :henilages, 
        :form_of_supply_henilages, 
        :silo, 
        :form_of_supply, 
        :grams_of_ration_liter, 
        :mineral_salts, 
        :grams_of_salt_liter, 
        :no_grazing_days, 
        :childbirth_racks, 
        :calving_heifers, 
        :discarded_cows, 
        :cows_served, 
        :pregnant_cows, 
        :clinical_mastitis, 
        :cows_on_detour, 
        :abortions_seen, 
        :reproductive_losses, 
        :cows_with_foot_problems, 
        :dead_cows, 
        :rains, 
        :user_id, 
        :lactose, 
        :saved_date, 
        :estate_id, 
        :rodeos_main_breed_id, 
        :balanced_ration, 
        :form_of_supply_balanced_ration, 
        :urea_nitrogen_in_mil, 
        :bale, 
        :form_of_supply_bale, 
        :urea_nitrogen_in_milk,
        :daily_dry_bases_protein_conc,
        :daily_dry_bases_balanced_ration,
        :daily_dry_bases_total,
        :daily_dry_bases_wet_grain_silo,
        :daily_dry_bases_henilaje,
        :daily_dry_bases_silo,
        :daily_dry_bases_bale,
        :daily_dry_bases_total_without_pasture,
        :daily_dry_bases_pasture_consumption,
        :daily_proteins_energy_conc,
        :daily_proteins_protein_conc,
        :daily_proteins_balanced_ration,
        :daily_proteins_total,
        :daily_proteins_wet_grain_silo,
        :daily_proteins_henilaje,
        :daily_proteins_silo,
        :daily_proteins_bale,
        :daily_proteins_total_without_pasture,
        :daily_proteins_pasture_consumption,
        :relationship_VO_VM )
    end
end
