class UsersController < ApplicationController
  def new
    @user = User.first
  end

  def new_post
    puts "Hello depuis le serveur"
       
    user = User.new
    user.username = params["username"]
    user.bio = params["bio"]
    if user.save   
      redirect_to action: 'show', username: user.username
    else
      redirect_to '/error'
    end    
  end

  def show
    @user = User.find_by(username: params[:username])
    #@user = User.find(params[:id])
  end

  def error
  end

end
