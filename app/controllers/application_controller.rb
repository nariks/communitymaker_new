class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  before_action :authenticate_user!, :unread_messages_count
  rescue_from CanCan::AccessDenied do |exception|
    redirect_to root_url, :alert => exception.message
  end
  
 def unread_messages_count
  
  if user_signed_in?
  	@unread_count = Message.count(:conditions => ["receiver_id = ?", current_user.id])
  end
end
  		
end
