class Api::V1::UsersController < Api::V1::ApiController
  def show
    @user = User.find(user_params[:id])
    render_object @user
  end

  def index
    @users = User.all
    render_collection @users
  end

  private

  def user_params
    params.permit(:id)
  end
end
