class TaskController < ApplicationController
  skip_before_action :authenticate_user!
  def index
    @tasks = Task.all
  end
end
