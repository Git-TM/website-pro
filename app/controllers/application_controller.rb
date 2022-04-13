class ApplicationController < ActionController::Base
  def redirect_to_https
    redirect_to :protocol => "https://" unless (request.ssl? || request.local?)
  end
end
