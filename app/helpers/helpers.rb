class Helpers

  def self.current_user(session)
    @current_user ||= User.find(session[:user_id]) if session[:user_id]
    # User.find_by_id(session[:user_id])
  end

  def self.is_logged_in?(session)
    !!session[:user_id]
  end

end
