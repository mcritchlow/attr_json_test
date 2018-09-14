class WorksController < ApplicationController
  def index
    @works = Work.all
  end

  def show
    @work = Work.find(params[:id])
  end

  def new
    @work = Work.new
  end

  def edit
    @work = Work.find(params[:id])
  end

  def create
    @work = Work.new(work_params)
    if @work.save
      redirect_to @work, notice: 'Work was successfully created.'
    else
      render action: 'new'
    end
  end

  def update
    @work = Work.find(params[:id])
    if @work.update(work_params)
      redirect_to @work, notice: 'Work was successfully updated.'
    else
      render action: 'edit'
    end
  end

  def destroy
    @work.destroy
    redirect_to works_url
  end

  private

  def work_params
    params.require(:work)
          .permit(:description,
                  :brief_description,
                  :identifier,
                  :call_number,
                  creator_ids: [],
                  contributor_ids: [])
  end
end
