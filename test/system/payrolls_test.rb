require "application_system_test_case"

class PayrollsTest < ApplicationSystemTestCase
  setup do
    @payroll = payrolls(:one)
  end

  test "visiting the index" do
    visit payrolls_url
    assert_selector "h1", text: "Payrolls"
  end

  test "creating a Payroll" do
    visit payrolls_url
    click_on "New Payroll"

    fill_in "Abortions seen", with: @payroll.abortions_seen
    fill_in "Bacterial count", with: @payroll.bacterial_count
    fill_in "Calving heifers", with: @payroll.calving_heifers
    fill_in "Cell count", with: @payroll.cell_count
    fill_in "Childbirth racks", with: @payroll.childbirth_racks
    fill_in "Clinical mastitis", with: @payroll.clinical_mastitis
    fill_in "Conc energy", with: @payroll.conc_energy
    fill_in "Conc protein", with: @payroll.conc_protein
    fill_in "Cow dough", with: @payroll.cow_dough
    fill_in "Cows on detour", with: @payroll.cows_on_detour
    fill_in "Cows served", with: @payroll.cows_served
    fill_in "Cows with foot problems", with: @payroll.cows_with_foot_problems
    fill_in "Cryoscopy", with: @payroll.cryoscopy
    fill_in "Dairy surface", with: @payroll.dairy_surface
    fill_in "Dead cows", with: @payroll.dead_cows
    fill_in "Discarded cows", with: @payroll.discarded_cows
    fill_in "Dry cows", with: @payroll.dry_cows
    fill_in "Form of supply", with: @payroll.form_of_supply
    fill_in "Form of supply energy", with: @payroll.form_of_supply_energy
    fill_in "Form of supply grain", with: @payroll.form_of_supply_grain
    fill_in "Form of supply henilages", with: @payroll.form_of_supply_henilages
    fill_in "Form of supply protein", with: @payroll.form_of_supply_protein
    fill_in "Grams of ration liter", with: @payroll.grams_of_ration_liter
    fill_in "Grams of salt liter", with: @payroll.grams_of_salt_liter
    fill_in "Grease", with: @payroll.grease
    fill_in "Henilages", with: @payroll.henilages
    fill_in "Liter sent", with: @payroll.liter_sent
    fill_in "Liters of milk not sent", with: @payroll.liters_of_milk_not_sent
    fill_in "Location", with: @payroll.location
    fill_in "Milking cows", with: @payroll.milking_cows
    fill_in "Mineral salts", with: @payroll.mineral_salts
    fill_in "No grazing days", with: @payroll.no_grazing_days
    fill_in "Pregnant cows", with: @payroll.pregnant_cows
    fill_in "Producer", with: @payroll.producer
    fill_in "Protein", with: @payroll.protein
    fill_in "Rains", with: @payroll.rains
    fill_in "Reproductive losses", with: @payroll.reproductive_losses
    fill_in "Rodeos main breed", with: @payroll.rodeos_main_breed
    fill_in "Silo", with: @payroll.silo
    fill_in "String,", with: @payroll.string,
    fill_in "Suckling calves", with: @payroll.suckling_calves
    fill_in "Technical", with: @payroll.technical
    fill_in "Urea", with: @payroll.urea
    fill_in "User type", with: @payroll.user_type
    fill_in "Vm surface", with: @payroll.vm_surface
    fill_in "Wet grain", with: @payroll.wet_grain
    fill_in "Year", with: @payroll.year
    click_on "Create Payroll"

    assert_text "Payroll was successfully created"
    click_on "Back"
  end

  test "updating a Payroll" do
    visit payrolls_url
    click_on "Edit", match: :first

    fill_in "Abortions seen", with: @payroll.abortions_seen
    fill_in "Bacterial count", with: @payroll.bacterial_count
    fill_in "Calving heifers", with: @payroll.calving_heifers
    fill_in "Cell count", with: @payroll.cell_count
    fill_in "Childbirth racks", with: @payroll.childbirth_racks
    fill_in "Clinical mastitis", with: @payroll.clinical_mastitis
    fill_in "Conc energy", with: @payroll.conc_energy
    fill_in "Conc protein", with: @payroll.conc_protein
    fill_in "Cow dough", with: @payroll.cow_dough
    fill_in "Cows on detour", with: @payroll.cows_on_detour
    fill_in "Cows served", with: @payroll.cows_served
    fill_in "Cows with foot problems", with: @payroll.cows_with_foot_problems
    fill_in "Cryoscopy", with: @payroll.cryoscopy
    fill_in "Dairy surface", with: @payroll.dairy_surface
    fill_in "Dead cows", with: @payroll.dead_cows
    fill_in "Discarded cows", with: @payroll.discarded_cows
    fill_in "Dry cows", with: @payroll.dry_cows
    fill_in "Form of supply", with: @payroll.form_of_supply
    fill_in "Form of supply energy", with: @payroll.form_of_supply_energy
    fill_in "Form of supply grain", with: @payroll.form_of_supply_grain
    fill_in "Form of supply henilages", with: @payroll.form_of_supply_henilages
    fill_in "Form of supply protein", with: @payroll.form_of_supply_protein
    fill_in "Grams of ration liter", with: @payroll.grams_of_ration_liter
    fill_in "Grams of salt liter", with: @payroll.grams_of_salt_liter
    fill_in "Grease", with: @payroll.grease
    fill_in "Henilages", with: @payroll.henilages
    fill_in "Liter sent", with: @payroll.liter_sent
    fill_in "Liters of milk not sent", with: @payroll.liters_of_milk_not_sent
    fill_in "Location", with: @payroll.location
    fill_in "Milking cows", with: @payroll.milking_cows
    fill_in "Mineral salts", with: @payroll.mineral_salts
    fill_in "No grazing days", with: @payroll.no_grazing_days
    fill_in "Pregnant cows", with: @payroll.pregnant_cows
    fill_in "Producer", with: @payroll.producer
    fill_in "Protein", with: @payroll.protein
    fill_in "Rains", with: @payroll.rains
    fill_in "Reproductive losses", with: @payroll.reproductive_losses
    fill_in "Rodeos main breed", with: @payroll.rodeos_main_breed
    fill_in "Silo", with: @payroll.silo
    fill_in "String,", with: @payroll.string,
    fill_in "Suckling calves", with: @payroll.suckling_calves
    fill_in "Technical", with: @payroll.technical
    fill_in "Urea", with: @payroll.urea
    fill_in "User type", with: @payroll.user_type
    fill_in "Vm surface", with: @payroll.vm_surface
    fill_in "Wet grain", with: @payroll.wet_grain
    fill_in "Year", with: @payroll.year
    click_on "Update Payroll"

    assert_text "Payroll was successfully updated"
    click_on "Back"
  end

  test "destroying a Payroll" do
    visit payrolls_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Payroll was successfully destroyed"
  end
end
