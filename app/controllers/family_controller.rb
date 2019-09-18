class FamilyController < ApplicationController
  skip_before_action :authenticate_user!
  def show
    @family = Family.find(params[:id])
  end
end
