class TaskviewsController < ApplicationController
  def index
@tasks = Task.all
  end
end
