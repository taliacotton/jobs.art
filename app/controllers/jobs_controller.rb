class JobsController < ApplicationController
  def index
    @jobs = Job.all
    render :layout => 'jobs'
    if params[:search]
      @jobs = Job.search(params[:search]).order("created_at DESC")
    else
      @jobs = Job.all.order("created_at DESC")
    end
  end

# when we define a new page, we want to say something about it.
  def new
      @job = Job.new
      render :layout => 'formpage'
  end

  def create
    # @job = Job.new
    @job = Job.new(params.require(:job).permit(:Title, :Organization, :Location, :Date, :Description))
    if @job.save
      redirect_to root_path
    else
      render "new"
    end
  end
end
