class TopicsController < ApplicationController
  def index
    @sub = Sub.find(params[:sub_id])
    @topics = @sub.topics
  end

  def new
  end

  def show
  end

  def edit
  end
end
