class FamiliesController < ApplicationController
  before_action :authenticate_user!

  def show
    @family = current_user.family.users
    @family_name = current_user.family.name
  end
end
