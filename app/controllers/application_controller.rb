class ApplicationController < ActionController::API
  before_action :authorized

  def encode_token(user_id)
    JWT.encode({user_id: user_id}, ENV['SECRET_KEY'])
  end

  def auth_headers
    request.headers['Authorization']
  end

  def decoded_token
    begin
      JWT.decode(auth_headers, ENV['SECRET_KEY'])
    rescue
      nil
    end
  end

  def logged_in
    !!curr_user
  end

  def authorized
    render json: {errors: 'unauthorized'} unless logged_in
  end

  def curr_user
    begin
      user_id = decoded_token[0]["user_id"]
      User.find(user_id)
    rescue
      nil
    end
  end

end
