class Api::V1::ChallengesController < Api::V1::BaseController
  before_action :authenticate_request

  def index
    # user = User.find_by(email: params[:email].to_s.downcase)
    @challenges = Challenge.where(user_id: @current_user)
  end

  def show
    @challenge = Challenge.find(params[:id])
    @benefits = Benefit.where(challenge_id: @challenge.id)
    @fears = Fear.where(challenge_id: @challenge.id)
    @arr_p = []
    @arr_f = []
    @fears.each_with_index do |f, i|
      @arr_p << instance_variable_set("@preventions_#{i}", Prevention.where(fear_id: f.id))
      @arr_f << instance_variable_set("@fixes_#{i}", Fix.where(fear_id: f.id))
    end
  end

  def create
    @challenge = Challenge.new(challenge_params)
    @challenge.user = @current_user
    if @challenge.save!
      render :show, status: :created
    else
      render_error
    end
  end

  def update
    if @challenge.update(challenge_params)
      render :show
    else
      render_error
    end
  end

  private

  def challenge_params
    params.require(:challenge).permit(
      :challenge_descr, :name, :acceptable, :cost_inaction_hy, :cost_inaction_yr, :cost_inaction_3y, :user_id, 
      {
        :benefits_attributes => [:benefit_descr]
      },
      {
        :fears_attributes => [:fear_descr]
      }
    )
  end

  def render_error
    render json: { errors: @challenge.errors.full_messages },
      status: :unprocessable_entity
  end
end