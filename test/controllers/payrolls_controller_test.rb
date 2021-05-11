require "test_helper"

class PayrollsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @payroll = payrolls(:one)
  end

  test "should get index" do
    get payrolls_url
    assert_response :success
  end

  test "should get new" do
    get new_payroll_url
    assert_response :success
  end

  test "should create payroll" do
    assert_difference('Payroll.count') do
      post payrolls_url, params: { payroll: { abortions_seen: @payroll.abortions_seen, bacterial_count: @payroll.bacterial_count, calving_heifers: @payroll.calving_heifers, cell_count: @payroll.cell_count, childbirth_racks: @payroll.childbirth_racks, clinical_mastitis: @payroll.clinical_mastitis, conc_energy: @payroll.conc_energy, conc_protein: @payroll.conc_protein, cow_dough: @payroll.cow_dough, cows_on_detour: @payroll.cows_on_detour, cows_served: @payroll.cows_served, cows_with_foot_problems: @payroll.cows_with_foot_problems, cryoscopy: @payroll.cryoscopy, dairy_surface: @payroll.dairy_surface, dead_cows: @payroll.dead_cows, discarded_cows: @payroll.discarded_cows, dry_cows: @payroll.dry_cows, form_of_supply: @payroll.form_of_supply, form_of_supply_energy: @payroll.form_of_supply_energy, form_of_supply_grain: @payroll.form_of_supply_grain, form_of_supply_henilages: @payroll.form_of_supply_henilages, form_of_supply_protein: @payroll.form_of_supply_protein, grams_of_ration_liter: @payroll.grams_of_ration_liter, grams_of_salt_liter: @payroll.grams_of_salt_liter, grease: @payroll.grease, henilages: @payroll.henilages, liter_sent: @payroll.liter_sent, liters_of_milk_not_sent: @payroll.liters_of_milk_not_sent, location: @payroll.location, milking_cows: @payroll.milking_cows, mineral_salts: @payroll.mineral_salts, no_grazing_days: @payroll.no_grazing_days, pregnant_cows: @payroll.pregnant_cows, producer: @payroll.producer, protein: @payroll.protein, rains: @payroll.rains, reproductive_losses: @payroll.reproductive_losses, rodeos_main_breed: @payroll.rodeos_main_breed, silo: @payroll.silo, string,: @payroll.string,, suckling_calves: @payroll.suckling_calves, technical: @payroll.technical, urea: @payroll.urea, user_type: @payroll.user_type, vm_surface: @payroll.vm_surface, wet_grain: @payroll.wet_grain, year: @payroll.year } }
    end

    assert_redirected_to payroll_url(Payroll.last)
  end

  test "should show payroll" do
    get payroll_url(@payroll)
    assert_response :success
  end

  test "should get edit" do
    get edit_payroll_url(@payroll)
    assert_response :success
  end

  test "should update payroll" do
    patch payroll_url(@payroll), params: { payroll: { abortions_seen: @payroll.abortions_seen, bacterial_count: @payroll.bacterial_count, calving_heifers: @payroll.calving_heifers, cell_count: @payroll.cell_count, childbirth_racks: @payroll.childbirth_racks, clinical_mastitis: @payroll.clinical_mastitis, conc_energy: @payroll.conc_energy, conc_protein: @payroll.conc_protein, cow_dough: @payroll.cow_dough, cows_on_detour: @payroll.cows_on_detour, cows_served: @payroll.cows_served, cows_with_foot_problems: @payroll.cows_with_foot_problems, cryoscopy: @payroll.cryoscopy, dairy_surface: @payroll.dairy_surface, dead_cows: @payroll.dead_cows, discarded_cows: @payroll.discarded_cows, dry_cows: @payroll.dry_cows, form_of_supply: @payroll.form_of_supply, form_of_supply_energy: @payroll.form_of_supply_energy, form_of_supply_grain: @payroll.form_of_supply_grain, form_of_supply_henilages: @payroll.form_of_supply_henilages, form_of_supply_protein: @payroll.form_of_supply_protein, grams_of_ration_liter: @payroll.grams_of_ration_liter, grams_of_salt_liter: @payroll.grams_of_salt_liter, grease: @payroll.grease, henilages: @payroll.henilages, liter_sent: @payroll.liter_sent, liters_of_milk_not_sent: @payroll.liters_of_milk_not_sent, location: @payroll.location, milking_cows: @payroll.milking_cows, mineral_salts: @payroll.mineral_salts, no_grazing_days: @payroll.no_grazing_days, pregnant_cows: @payroll.pregnant_cows, producer: @payroll.producer, protein: @payroll.protein, rains: @payroll.rains, reproductive_losses: @payroll.reproductive_losses, rodeos_main_breed: @payroll.rodeos_main_breed, silo: @payroll.silo, string,: @payroll.string,, suckling_calves: @payroll.suckling_calves, technical: @payroll.technical, urea: @payroll.urea, user_type: @payroll.user_type, vm_surface: @payroll.vm_surface, wet_grain: @payroll.wet_grain, year: @payroll.year } }
    assert_redirected_to payroll_url(@payroll)
  end

  test "should destroy payroll" do
    assert_difference('Payroll.count', -1) do
      delete payroll_url(@payroll)
    end

    assert_redirected_to payrolls_url
  end
end
