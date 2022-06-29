class ProjectfeaturesController < ApplicationController
  before_action :authenticate_user!

  def index
    @projectfeatures = Projectfeature.all
  end

  def show
    @projectfeatures = Projectfeature.find(params[:id])
  end

  def new
    @projectfeatures = Projectfeature.new
  end

  def create
    @projectfeatures_new = Projectfeature.new(projectfeatures_params)
    @projectfeatures_new.save
    redirect_to projectfeatures_path(@projectfeatures_new)
  end

  def edit
    @projectfeatures = Projectfeature.find(params[:id])
  end

  def update
    @projectfeatures = Projectfeature.find(params[:id])
    @projectfeatures.update(projectfeatures_params)
    redirect_to projectfeatures_path(@projectfeatures)
  end

  def destroy
    @projectfeatures = Projectfeature.find(params[:id])
    @projectfeatures.destroy
    redirect_to projectfeatures_main_path
  end

  private

  def projectfeatures_params
    params.require(:projectfeatures).permit(:projectfeaturesname, :context, :codetags, { features: [] })
  end
end
