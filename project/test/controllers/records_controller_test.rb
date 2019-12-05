require 'test_helper'

class RecordsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @record = records(:one)
  end

  test "should get index" do
    get records_url
    assert_response :success
  end

  test "should get new" do
    get new_record_url
    assert_response :success
  end

  test "should create record" do
    assert_difference('Record.count') do
      post records_url, params: { record: { Employment: @record.Employment, Nyc: @record.Nyc, Start: @record.Start, Telephone: @record.Telephone, active_supervision: @record.active_supervision, age: @record.age, age_at_first_arrest: @record.age_at_first_arrest, age_cat: @record.age_cat, c_arrest_date: @record.c_arrest_date, c_case_number: @record.c_case_number, c_charge_degree: @record.c_charge_degree, c_charge_desc: @record.c_charge_desc, c_days_from_compas: @record.c_days_from_compas, c_jail_in: @record.c_jail_in, c_jail_out: @record.c_jail_out, c_offense_date: @record.c_offense_date, children_spouse_or_parent: @record.children_spouse_or_parent, compas_screening_date: @record.compas_screening_date, crime_id: @record.crime_id, current_f_dtf: @record.current_f_dtf, current_residence: @record.current_residence, current_residences: @record.current_residences, current_violent_charge: @record.current_violent_charge, days_b_screening_arrest: @record.days_b_screening_arrest, decile_score: @record.decile_score, dob: @record.dob, drug_abuse_history: @record.drug_abuse_history, end: @record.end, event: @record.event, expects_someone: @record.expects_someone, first: @record.first, first_arrest: @record.first_arrest, fta_1: @record.fta_1, fta_2: @record.fta_2, fta_3: @record.fta_3, fta_4: @record.fta_4, fta_5: @record.fta_5, fta_6: @record.fta_6, fta_older: @record.fta_older, illegal_drug_use: @record.illegal_drug_use, in_custody: @record.in_custody, is_recid: @record.is_recid, is_violent_recid: @record.is_violent_recid, juv_fel_count: @record.juv_fel_count, juv_misd_count: @record.juv_misd_count, juv_other_count: @record.juv_other_count, last: @record.last, name: @record.name, out_custody: @record.out_custody, pending_charge: @record.pending_charge, prior_drug_convictions: @record.prior_drug_convictions, prior_felonies: @record.prior_felonies, prior_incarcerations: @record.prior_incarcerations, prior_misdemeanors: @record.prior_misdemeanors, prior_misdemeanors_last_two_years: @record.prior_misdemeanors_last_two_years, prior_misdemeanors_last_year: @record.prior_misdemeanors_last_year, priors_count: @record.priors_count, r_case_number: @record.r_case_number, r_charge_degree: @record.r_charge_degree, r_charge_desc: @record.r_charge_desc, r_days_from_arrest: @record.r_days_from_arrest, r_jail_in: @record.r_jail_in, r_jail_out: @record.r_jail_out, r_offense_date: @record.r_offense_date, race: @record.race, score_text: @record.score_text, screening_date: @record.screening_date, sex: @record.sex, two_year_recid: @record.two_year_recid, type_of_assessment: @record.type_of_assessment, v_decile_score: @record.v_decile_score, v_score_text: @record.v_score_text, v_screening_date: @record.v_screening_date, v_type_of_assessment: @record.v_type_of_assessment, violent_priors: @record.violent_priors, vr_case_number: @record.vr_case_number, vr_charge_degree: @record.vr_charge_degree, vr_charge_desc: @record.vr_charge_desc, vr_offense_date: @record.vr_offense_date } }
    end

    assert_redirected_to record_url(Record.last)
  end

  test "should show record" do
    get record_url(@record)
    assert_response :success
  end

  test "should get edit" do
    get edit_record_url(@record)
    assert_response :success
  end

  test "should update record" do
    patch record_url(@record), params: { record: { Employment: @record.Employment, Nyc: @record.Nyc, Start: @record.Start, Telephone: @record.Telephone, active_supervision: @record.active_supervision, age: @record.age, age_at_first_arrest: @record.age_at_first_arrest, age_cat: @record.age_cat, c_arrest_date: @record.c_arrest_date, c_case_number: @record.c_case_number, c_charge_degree: @record.c_charge_degree, c_charge_desc: @record.c_charge_desc, c_days_from_compas: @record.c_days_from_compas, c_jail_in: @record.c_jail_in, c_jail_out: @record.c_jail_out, c_offense_date: @record.c_offense_date, children_spouse_or_parent: @record.children_spouse_or_parent, compas_screening_date: @record.compas_screening_date, crime_id: @record.crime_id, current_f_dtf: @record.current_f_dtf, current_residence: @record.current_residence, current_residences: @record.current_residences, current_violent_charge: @record.current_violent_charge, days_b_screening_arrest: @record.days_b_screening_arrest, decile_score: @record.decile_score, dob: @record.dob, drug_abuse_history: @record.drug_abuse_history, end: @record.end, event: @record.event, expects_someone: @record.expects_someone, first: @record.first, first_arrest: @record.first_arrest, fta_1: @record.fta_1, fta_2: @record.fta_2, fta_3: @record.fta_3, fta_4: @record.fta_4, fta_5: @record.fta_5, fta_6: @record.fta_6, fta_older: @record.fta_older, illegal_drug_use: @record.illegal_drug_use, in_custody: @record.in_custody, is_recid: @record.is_recid, is_violent_recid: @record.is_violent_recid, juv_fel_count: @record.juv_fel_count, juv_misd_count: @record.juv_misd_count, juv_other_count: @record.juv_other_count, last: @record.last, name: @record.name, out_custody: @record.out_custody, pending_charge: @record.pending_charge, prior_drug_convictions: @record.prior_drug_convictions, prior_felonies: @record.prior_felonies, prior_incarcerations: @record.prior_incarcerations, prior_misdemeanors: @record.prior_misdemeanors, prior_misdemeanors_last_two_years: @record.prior_misdemeanors_last_two_years, prior_misdemeanors_last_year: @record.prior_misdemeanors_last_year, priors_count: @record.priors_count, r_case_number: @record.r_case_number, r_charge_degree: @record.r_charge_degree, r_charge_desc: @record.r_charge_desc, r_days_from_arrest: @record.r_days_from_arrest, r_jail_in: @record.r_jail_in, r_jail_out: @record.r_jail_out, r_offense_date: @record.r_offense_date, race: @record.race, score_text: @record.score_text, screening_date: @record.screening_date, sex: @record.sex, two_year_recid: @record.two_year_recid, type_of_assessment: @record.type_of_assessment, v_decile_score: @record.v_decile_score, v_score_text: @record.v_score_text, v_screening_date: @record.v_screening_date, v_type_of_assessment: @record.v_type_of_assessment, violent_priors: @record.violent_priors, vr_case_number: @record.vr_case_number, vr_charge_degree: @record.vr_charge_degree, vr_charge_desc: @record.vr_charge_desc, vr_offense_date: @record.vr_offense_date } }
    assert_redirected_to record_url(@record)
  end

  test "should destroy record" do
    assert_difference('Record.count', -1) do
      delete record_url(@record)
    end

    assert_redirected_to records_url
  end
end
