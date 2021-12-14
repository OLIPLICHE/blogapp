class ApplicationController < ActionController::Base
  def curent_user
    User.first
  end
end
