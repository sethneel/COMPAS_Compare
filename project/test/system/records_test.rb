require "application_system_test_case"

class RecordsTest < ApplicationSystemTestCase
  setup do
    @record = records(:one)
  end

  test "visiting the index" do
    visit records_url
    assert_selector "h1", text: "Records"
  end

  test "creating a Record" do
    visit records_url
    click_on "New Record"

    fill_in "Employment", with: @record.Employment
    fill_in "Nyc", with: @record.Nyc
    fill_in "Start", with: @record.Start
    fill_in "Telephone", with: @record.Telephone
    fill_in "Active supervision", with: @record.active_supervision
    fill_in "Age", with: @record.age
    fill_in "Age at first arrest", with: @record.age_at_first_arrest
    fill_in "Age cat", with: @record.age_cat
    fill_in "C arrest date", with: @record.c_arrest_date
    fill_in "C case number", with: @record.c_case_number
    fill_in "C charge degree", with: @record.c_charge_degree
    fill_in "C charge desc", with: @record.c_charge_desc
    fill_in "C days from compas", with: @record.c_days_from_compas
    fill_in "C jail in", with: @record.c_jail_in
    fill_in "C jail out", with: @record.c_jail_out
    fill_in "C offense date", with: @record.c_offense_date
    fill_in "Children spouse or parent", with: @record.children_spouse_or_parent
    fill_in "Compas screening date", with: @record.compas_screening_date
    fill_in "Crime", with: @record.crime_id
    fill_in "Current f dtf", with: @record.current_f_dtf
    fill_in "Current residence", with: @record.current_residence
    fill_in "Current residences", with: @record.current_residences
    fill_in "Current violent charge", with: @record.current_violent_charge
    fill_in "Days b screening arrest", with: @record.days_b_screening_arrest
    fill_in "Decile score", with: @record.decile_score
    fill_in "Dob", with: @record.dob
    fill_in "Drug abuse history", with: @record.drug_abuse_history
    fill_in "End", with: @record.end
    fill_in "Event", with: @record.event
    fill_in "Expects someone", with: @record.expects_someone
    fill_in "First", with: @record.first
    fill_in "First arrest", with: @record.first_arrest
    fill_in "Fta 1", with: @record.fta_1
    fill_in "Fta 2", with: @record.fta_2
    fill_in "Fta 3", with: @record.fta_3
    fill_in "Fta 4", with: @record.fta_4
    fill_in "Fta 5", with: @record.fta_5
    fill_in "Fta 6", with: @record.fta_6
    fill_in "Fta older", with: @record.fta_older
    fill_in "Illegal drug use", with: @record.illegal_drug_use
    fill_in "In custody", with: @record.in_custody
    fill_in "Is recid", with: @record.is_recid
    fill_in "Is violent recid", with: @record.is_violent_recid
    fill_in "Juv fel count", with: @record.juv_fel_count
    fill_in "Juv misd count", with: @record.juv_misd_count
    fill_in "Juv other count", with: @record.juv_other_count
    fill_in "Last", with: @record.last
    fill_in "Name", with: @record.name
    fill_in "Out custody", with: @record.out_custody
    fill_in "Pending charge", with: @record.pending_charge
    fill_in "Prior drug convictions", with: @record.prior_drug_convictions
    fill_in "Prior felonies", with: @record.prior_felonies
    fill_in "Prior incarcerations", with: @record.prior_incarcerations
    fill_in "Prior misdemeanors", with: @record.prior_misdemeanors
    fill_in "Prior misdemeanors last two years", with: @record.prior_misdemeanors_last_two_years
    fill_in "Prior misdemeanors last year", with: @record.prior_misdemeanors_last_year
    fill_in "Priors count", with: @record.priors_count
    fill_in "R case number", with: @record.r_case_number
    fill_in "R charge degree", with: @record.r_charge_degree
    fill_in "R charge desc", with: @record.r_charge_desc
    fill_in "R days from arrest", with: @record.r_days_from_arrest
    fill_in "R jail in", with: @record.r_jail_in
    fill_in "R jail out", with: @record.r_jail_out
    fill_in "R offense date", with: @record.r_offense_date
    fill_in "Race", with: @record.race
    fill_in "Score text", with: @record.score_text
    fill_in "Screening date", with: @record.screening_date
    fill_in "Sex", with: @record.sex
    fill_in "Two year recid", with: @record.two_year_recid
    fill_in "Type of assessment", with: @record.type_of_assessment
    fill_in "V decile score", with: @record.v_decile_score
    fill_in "V score text", with: @record.v_score_text
    fill_in "V screening date", with: @record.v_screening_date
    fill_in "V type of assessment", with: @record.v_type_of_assessment
    fill_in "Violent priors", with: @record.violent_priors
    fill_in "Vr case number", with: @record.vr_case_number
    fill_in "Vr charge degree", with: @record.vr_charge_degree
    fill_in "Vr charge desc", with: @record.vr_charge_desc
    fill_in "Vr offense date", with: @record.vr_offense_date
    click_on "Create Record"

    assert_text "Record was successfully created"
    click_on "Back"
  end

  test "updating a Record" do
    visit records_url
    click_on "Edit", match: :first

    fill_in "Employment", with: @record.Employment
    fill_in "Nyc", with: @record.Nyc
    fill_in "Start", with: @record.Start
    fill_in "Telephone", with: @record.Telephone
    fill_in "Active supervision", with: @record.active_supervision
    fill_in "Age", with: @record.age
    fill_in "Age at first arrest", with: @record.age_at_first_arrest
    fill_in "Age cat", with: @record.age_cat
    fill_in "C arrest date", with: @record.c_arrest_date
    fill_in "C case number", with: @record.c_case_number
    fill_in "C charge degree", with: @record.c_charge_degree
    fill_in "C charge desc", with: @record.c_charge_desc
    fill_in "C days from compas", with: @record.c_days_from_compas
    fill_in "C jail in", with: @record.c_jail_in
    fill_in "C jail out", with: @record.c_jail_out
    fill_in "C offense date", with: @record.c_offense_date
    fill_in "Children spouse or parent", with: @record.children_spouse_or_parent
    fill_in "Compas screening date", with: @record.compas_screening_date
    fill_in "Crime", with: @record.crime_id
    fill_in "Current f dtf", with: @record.current_f_dtf
    fill_in "Current residence", with: @record.current_residence
    fill_in "Current residences", with: @record.current_residences
    fill_in "Current violent charge", with: @record.current_violent_charge
    fill_in "Days b screening arrest", with: @record.days_b_screening_arrest
    fill_in "Decile score", with: @record.decile_score
    fill_in "Dob", with: @record.dob
    fill_in "Drug abuse history", with: @record.drug_abuse_history
    fill_in "End", with: @record.end
    fill_in "Event", with: @record.event
    fill_in "Expects someone", with: @record.expects_someone
    fill_in "First", with: @record.first
    fill_in "First arrest", with: @record.first_arrest
    fill_in "Fta 1", with: @record.fta_1
    fill_in "Fta 2", with: @record.fta_2
    fill_in "Fta 3", with: @record.fta_3
    fill_in "Fta 4", with: @record.fta_4
    fill_in "Fta 5", with: @record.fta_5
    fill_in "Fta 6", with: @record.fta_6
    fill_in "Fta older", with: @record.fta_older
    fill_in "Illegal drug use", with: @record.illegal_drug_use
    fill_in "In custody", with: @record.in_custody
    fill_in "Is recid", with: @record.is_recid
    fill_in "Is violent recid", with: @record.is_violent_recid
    fill_in "Juv fel count", with: @record.juv_fel_count
    fill_in "Juv misd count", with: @record.juv_misd_count
    fill_in "Juv other count", with: @record.juv_other_count
    fill_in "Last", with: @record.last
    fill_in "Name", with: @record.name
    fill_in "Out custody", with: @record.out_custody
    fill_in "Pending charge", with: @record.pending_charge
    fill_in "Prior drug convictions", with: @record.prior_drug_convictions
    fill_in "Prior felonies", with: @record.prior_felonies
    fill_in "Prior incarcerations", with: @record.prior_incarcerations
    fill_in "Prior misdemeanors", with: @record.prior_misdemeanors
    fill_in "Prior misdemeanors last two years", with: @record.prior_misdemeanors_last_two_years
    fill_in "Prior misdemeanors last year", with: @record.prior_misdemeanors_last_year
    fill_in "Priors count", with: @record.priors_count
    fill_in "R case number", with: @record.r_case_number
    fill_in "R charge degree", with: @record.r_charge_degree
    fill_in "R charge desc", with: @record.r_charge_desc
    fill_in "R days from arrest", with: @record.r_days_from_arrest
    fill_in "R jail in", with: @record.r_jail_in
    fill_in "R jail out", with: @record.r_jail_out
    fill_in "R offense date", with: @record.r_offense_date
    fill_in "Race", with: @record.race
    fill_in "Score text", with: @record.score_text
    fill_in "Screening date", with: @record.screening_date
    fill_in "Sex", with: @record.sex
    fill_in "Two year recid", with: @record.two_year_recid
    fill_in "Type of assessment", with: @record.type_of_assessment
    fill_in "V decile score", with: @record.v_decile_score
    fill_in "V score text", with: @record.v_score_text
    fill_in "V screening date", with: @record.v_screening_date
    fill_in "V type of assessment", with: @record.v_type_of_assessment
    fill_in "Violent priors", with: @record.violent_priors
    fill_in "Vr case number", with: @record.vr_case_number
    fill_in "Vr charge degree", with: @record.vr_charge_degree
    fill_in "Vr charge desc", with: @record.vr_charge_desc
    fill_in "Vr offense date", with: @record.vr_offense_date
    click_on "Update Record"

    assert_text "Record was successfully updated"
    click_on "Back"
  end

  test "destroying a Record" do
    visit records_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Record was successfully destroyed"
  end
end
