class AgentsController < ApplicationController
  before_action :set_agent, only: [:show, :edit, :update, :destroy]
  before_action :set_type
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

  def set_agent
    @agent = type_class.find(params[:id])
  end

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
