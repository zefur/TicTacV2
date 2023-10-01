class ApplicationController < ActionController::Base
  include CableReady::Broadcaster 
   helper_method :current_player

end
