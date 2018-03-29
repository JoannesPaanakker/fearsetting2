class Api::V1::FearsController < Api::V1::BaseController
  before_action :authenticate_request

  def create
    @fear = Fear.new(fear_params)
    if @fear.save!
      render :show, status: :created
    else
      render_error
    end
  end

  def update
    if @fear.update(fear_params)
      render :show
    else
      render_error
    end
  end

  private

  def fear_params
    params.require(:fear).permit(
      :fear_descr, :challenge_id, 
      {
        :preventions_attributes => [:prevention_descr]
      },
      {
        :fixes_attributes => [:fix_descr]
      }
    )
  end

  def render_error
    render json: { errors: @fear.errors.full_messages },
      status: :unprocessable_entity
  end
end