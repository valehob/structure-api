class TopicsController < ApplicationController
  def index
    @topics = Topic.all
    render json: {topics: @topics}
  end

  def show
    @topic = Topic.find(params[:id])
    @drills = Drill.where(topic: @topic)
    render json: {drills: @drills}
  end
end
