class RecordsController < ApplicationController
  before_action :set_record, only: [:show, :edit, :update, :destroy]

  # GET /records
  # GET /records.json
  def index
    @records = Record.all
  end

  # GET /records/1
  # GET /records/1.json
  def show
  end

  # GET /records/new
  def new
    @record = Record.new
  end

  # GET /records/1/edit
  def edit
  end

  # POST /records
  # POST /records.json
  def create
    @record = Record.new(record_params)

    respond_to do |format|
      if @record.save
        format.html { redirect_to @record, notice: 'Record was successfully created.' }
        format.json { render :show, status: :created, location: @record }
      else
        format.html { render :new }
        format.json { render json: @record.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /records/1
  # PATCH/PUT /records/1.json
  def update
    respond_to do |format|
      if @record.update(record_params)
        format.html { redirect_to @record, notice: 'Record was successfully updated.' }
        format.json { render :show, status: :ok, location: @record }
      else
        format.html { render :edit }
        format.json { render json: @record.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /records/1
  # DELETE /records/1.json
  def destroy
    @record.destroy
    respond_to do |format|
      format.html { redirect_to records_url, notice: 'Record was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_record
      @record = Record.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def record_params
      params.require(:record).permit(:crime_id, :name, :first, :last, :compas_screening_date, :sex, :dob, :age, :age_cat, :race, :juv_fel_count, :decile_score, :juv_misd_count, :juv_other_count, :priors_count, :days_b_screening_arrest, :c_jail_in, :c_jail_out, :c_case_number, :c_offense_date, :c_arrest_date, :c_days_from_compas, :c_charge_degree, :c_charge_desc, :is_recid, :r_case_number, :r_charge_degree, :r_offense_date, :r_charge_desc, :r_jail_in, :r_jail_out, :is_violent_recid, :vr_case_number, :vr_charge_degree, :vr_offense_date, :vr_charge_desc, :type_of_assessment, :score_text, :screening_date, :v_type_of_assessment, :v_decile_score, :v_score_text, :v_screening_date, :in_custody, :out_custody, :Start, :end, :event, :two_year_recid, :age_at_first_arrest, :first_arrest, :active_supervision, :pending_charge, :fta_1, :fta_2, :fta_3, :fta_4, :fta_5, :fta_6, :fta_older, :prior_misdemeanors, :prior_felonies, :prior_misdemeanors_last_year, :prior_misdemeanors_last_two_years, :violent_priors, :prior_incarcerations, :prior_drug_convictions, :current_violent_charge, :current_f_dtf, :Employment, :expects_someone, :drug_abuse_history, :illegal_drug_use, :current_residences, :current_residence, :children_spouse_or_parent, :Nyc, :Telephone, :r_days_from_arrest)
    end
end
