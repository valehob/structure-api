class UsersController < ApplicationController
  def show

    @progress = Progress.where(user: @user).joins(:topic).select("topics.name, progresses.*")
    json = { :email => @user.email, :progress => @progress}.to_json

    render json: json, status: 200
  end
end
