class WorksController < ApplicationController
  def index
    @work = Work.all
  end

  def create
    work = Work.new(params[:work])
    if work.save
      redirect_to :action => "index"
    end
  end

  def show
    @work = Work.find(params[:id])
  end

  def update
    @work = Work.find(params[:id])
    if @work.update_attributes(params[:work])
      redirect_to edit_work_path
    else
      redirect_to work_path
    end
  end

  def edit
    @slist = Slist.find(params[:id])
  end

end
