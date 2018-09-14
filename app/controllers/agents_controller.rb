class AgentsController < ApplicationController
  before_action :set_agent, only: [:show, :edit, :update, :destroy]
  before_action :set_type
  def index
    @agents = type_class.all
  end

  def show
  end

  def new
    @agent = type_class.new
  end

  def edit
  end

  def create
    @agent = type_class.new(agent_params)
    if @agent.save
      redirect_to @agent, notice: "#{type} was successfully created."
    else
      render action: 'new'
    end
  end

  def update
    if @agent.update(agent_params)
      redirect_to @agent, notice: "#{type} was successfully updated."
    else
      render action: 'edit'
    end
  end

  def destroy
    @agent.destroy
    redirect_to agents_url
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

  def agent_params
    params.require(type.underscore.to_sym).permit(:label, :alternateLabel,
                                                  :orcid, :note,
                                                  :identifier, :type)
  end
end
