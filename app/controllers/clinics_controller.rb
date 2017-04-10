class ClinicsController < ApplicationController

  def create
    @clinic = Clinic.new(new_clinic_params)
    if @clinic.save
      flash[:notice] = "Clinic was successfully created."
      redirect_to clinic_path(@clinic)
    else
      flash[:alert] = "There was a problem."
      render :new
    end
  end

  def index
    @clinics = Clinic.all
  end

  def new
    @clinic = Clinic.new
  end

  def show
    @clinic = Clinic.find(params[:id])
  end

  def new_clinic_params
    params.require(:clinic).permit(:title, :description, :offered_at)
  end
end
