class LoginsController < ApplicationController
  before_action :set_login, only: [:show, :update, :destroy]


  def index
    @logins = Login.all
  end

  def show
  end

 
  def create
    @login = Login.new(login_params)

    if @login.save
      render :show, status: :created, location: @login
    else
      render json: @login.errors, status: :unprocessable_entity
    end
  end


  def update
    if @login.update(login_params)
      render :show, status: :ok, location: @login
    else
      render json: @login.errors, status: :unprocessable_entity
    end
  end

  

  def destroy
    @login.destroy
  end

  private
  
    def set_login
      @login = Login.find(params[:id])
    end

  
    def login_params
      params.require(:login).permit(:email, :password, :new_riders_id)
    end
end
