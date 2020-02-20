class TopicsController < ApplicationController
  def index
    @sub = Sub.find(params[:sub_id])
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
  end

  def create
    @topic = @sub.topics.new(topics_params)
    if @topic.save
      redirect_to sub_topic_path(@sub, @topic)
      #could also be redirect_to [@sub, @topic]
    else
      render :new
    end
  end


private

def topics_params
  params.require(:topic).permit(:name, :body)
end

def set_sub
  @sub = Sub.find(params[:sub_id])
end



end
