class AgentsController < ApplicationController
  def index
    @agents = type_class.all
  end

  def show
  end

  def new
  end

  def edit
  end

  def create
  end

  def update
  end

  def destroy
  end

  private
  def set_type
    @type = type
  end

  def type
    Agent.types.include?(params[:type]) ? params[:type] : 'Agent'
  end

  def type_class
    type.constantize
  end
end
