class HomeController < ApplicationController
  before_action :check_admin, only: [:index]
  before_action :authenticate_user!
  
  def top
  end
  
  def users_icon
    @user = User.find(params[:id])
    send_data(@user.image_data, type: @user.user_image_content_type, disposition: :inline)
  end
  
  def index
    @users = User.all
  end
  
  def request_list
    @requests = Request.all
  end
  
  def request_response
    @request = Request.new
    @request.content = params[:content]
    @request.user_id = current_user.id
    @request.save
    redirect_to("/")
  end
  
  def requrest_form
  end
  
  
  def user_edit
    @user = User.find_by(id: params[:id])
  end
  
  def image_edit
    @user = User.find_by(id: params[:id])
  end
  
  def image_update
    @user = User.find_by(id: params[:id])
    @user.image_data = params[:image_data].read
    @user.user_image_content_type = params[:image_data].content_type
    @user.save
    redirect_to("/")
  end
  
  def user_change
    @user = User.find_by(id: params[:id])
    @user.email = params[:email]
    @user.name = params[:name]
    @user.admin = params[:admin]
    @user.save
    redirect_to ("/users/index")
  end
  
  
  def group
    @random_quiz = Quiz.order("RANDOM()").first
    #@rando_self_introduce_quiz = Quiz.joins(:categories).where(id:4).order("RANDOM()").first
    @quiz_greetings = Quiz.category_greetings.order("RANDOM()").first
  end
end
