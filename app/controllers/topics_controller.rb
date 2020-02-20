class TopicsController < ApplicationController
  before_action :set_sub, :only [:show, :edit]
  def index
    @topics = @sub.topics
  end

  def new
    @topic = @sub.topics.new
    render partial: 'form'
  end

  def show
    @topic = Topic.find(params[:id])
    #@sub.topics.find(params[:id])
  end

  def edit
    @topic = Topic.find(params[:id])
    render partial: 'form'
  end

  def create
    @topic = @sub.topics.new(topics_params)
    if @topic.save
      redirect_to sub_topic_paath(@sub, @topic)
      #could also be redirect_to [@sub, @topic]
    else
      render :new
    end
  end

  def destroy
    @topic = Topic.find(params[:id])
    topic.destroy
    redirect_to sub_topic_path(@sub)
  end

  def update
    @topic = Topic.find(params[:id])
    if (@topic.update(topics_params))
      redirect_to [@sub, @topic]
    else
      render :edit
    end

private

def topics_params
  params.require(:topic).permit(:name, :body)
end

def set_sub
  @sub = Sub.find(params[:sub_id])
end



end
