class ApplicationController < ActionController::Base
  protect_from_forgery

  include SessionsHelper

  helper_method :h_search

private

  def h_search
       @q = Hotel.search(params[:q])
    @q.sorts = "name_en asc"
    @hotels = @q.result
  end
end
