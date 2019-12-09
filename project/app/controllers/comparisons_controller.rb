class ComparisonsController < ApplicationController
  before_action :set_comparison, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!

  # GET /comparisons
  # GET /comparisons.json
  def index
    @comparisons = Comparison.all
  end

# GET /comparisons/survey_size
def how_many_pairs

end

# GET /comparisons/survey_end 
# controller method for finishing survey 
def survey_analytics


end

def save_form_params
  @num_pairs = params[:num_pairs].to_i 
  if @num_pairs >= 1
    current_user.pairs_count =  0 
    current_user.survey_size = @num_pairs
    if current_user.save
        redirect_to action: "start_survey"
    else
      render 'users/home'
    end
  else 
    render 'how_many_pairs'
  end 
end

  def start_survey
    # get two records (that aren't the same) and create comparison object
    random_index = 2.times.map {rand(Record.count)}
    @records = Record.find(random_index)
    @record_1 = @records[0]
    @record_2 = @records[1]
  end
  
  # handle post request from survey page
  # save comparison data 
  # redirect
  def save_comparison 
    # save comparison
    @comparison = Comparison.new({user_id: current_user.id, record_1_id: params[:record_1_id], record_2_id: params[:record_2_id], choice: params[:choice]})
    current_user.pairs_count += 1
    current_user.save
    if @comparison.save
      if current_user.pairs_count >= current_user.survey_size
        redirect_to action: "survey_analytics"
      else
        redirect_to action: "start_survey"
      end 
    else
      render 'users/home'
    end

  end

  # GET /comparisons/1
  # GET /comparisons/1.json
  def show
  end

  # GET /comparisons/new
  def new
    @comparison = Comparison.new
  end

  # GET /comparisons/1/edit
  def edit
  end

  # POST /comparisons
  # POST /comparisons.json
  def create
    @comparison = Comparison.new(comparison_params)
    if @comparison.save
      redirect_to @comparison
    else
      render :new 
    end
  end

  # PATCH/PUT /comparisons/1
  # PATCH/PUT /comparisons/1.json
  def update
    if @comparison.update(comparison_params)
      redirect_to @comparison
    else
      render :edit 
    end
  end

  # DELETE /comparisons/1
  # DELETE /comparisons/1.json
  def destroy
    @comparison.destroy
    redirect_to comparisons_url
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_comparison
      @comparison = Comparison.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def comparison_params
      params.require(:comparison).permit(:user_id, :record_1_id, :record_2_id, :choice)
    end
end
