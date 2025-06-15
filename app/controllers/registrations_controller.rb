class RegistrationsController < ApplicationController
  allow_unauthenticated_access only: %i[new create]
  resume_session only: :new

  def new
    @user = User.new
  end

  def create
  end
end
