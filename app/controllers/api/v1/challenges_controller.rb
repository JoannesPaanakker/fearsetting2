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
    params.require(:challenge).permit(:description, :name, :acceptable, :cost_inaction_hy, :cost_inaction_yr, :cost_inaction3y, :user_id, {:benefit_attributes => [:description]})
  end

  def render_error
    render json: { errors: @challenge.errors.full_messages },
      status: :unprocessable_entity
  end
  
  # def user_params
  #   params.require(:user).permit(:email, :name, :password, :password_confirmation)
  # end
end