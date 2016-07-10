class DashboardController < ApplicationController
  before_filter :authenticate_user!

  def index
    if current_user.role == 'doctor'
      @doctor = Doctor.where(email: current_user.email).last
      render partial: 'doctor_dashboard'
    else
      @patient = Patient.where(email: current_user.email).last
      render partial: 'patient_dashboard'
    end
  end

end
