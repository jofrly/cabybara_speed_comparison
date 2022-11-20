class PagesController < ApplicationController
  def index
    @current_count = params[:count].to_i || 0
    @next_count = @current_count + 1
  end
end
