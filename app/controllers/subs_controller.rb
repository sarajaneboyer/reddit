class SubsController < ApplicationController
  before_action :set_sub, only: [:show, :edit, :update, :destroy]
  def index
    @sub = Sub.all
  end

  def show
  end

  def new
    @sub = Sub.new 
  end

  def edit
  end

  def create
    @sub = Sub.new(sub_params)
    if @sub.save
      redirect_to subs_path
    else
      render :new
    end 
  end

  private
  def set_sub
    @sub = Sub.find(params[:id])
  end

  def sub_params
    params.require(:sub).permit(:name)
  end
end
