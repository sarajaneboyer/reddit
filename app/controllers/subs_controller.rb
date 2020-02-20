class SubsController < ApplicationController
  before_action :set_sub, only: [:show, :edit, :update, :create, :destroy]
  def index
    @sub = Sub.all
  end

  def show
  end

  def new
  end

  def edit
  end

  private
  def set_sub
    @sub = Sub.find(params[:id])
  end
end
