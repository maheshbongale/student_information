module SessionsHelper

  def current_user=(user)
    @current_user = user
  end

  def current_user
    @current_user ||= user_from_remember_token
  end


  def sign_in(user)
    logger.info "zzzzzzzzzzzzzzzzzzzzz  #{user.inspect}"
    cookies.permanent[:remember_token] = user.remember_token
    self.current_user = user
  end

  def signed_in?
    logger.info "sign_in =>  iiiiiiiiiiiiiiiiiiiiii#{current_user.inspect}"
    current_user.nil?
    logger.info " sifg in   =>   mmmmmmmmmmmmmmmmmmmmmm#{current_user.inspect}"
  end

  def sign_out

    self.current_user = nil
    logger.info "sign out  =>  oooooooooooooooooooooooooo => #{current_user.inspect}"
    cookies.delete(:remember_token)
  end

  private

  def user_from_remember_token
    remember_token = cookies[:remember_token]
    User.find_by_remember_token(remember_token) unless remember_token.nil?
  end
end
