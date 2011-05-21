class UserSessionsController < ApplicationController
  skip_before_filter :login_required, :except => [ :destroy ]

  respond_to :html

  # omniauth callback method
  def create
    
    omniauth = request.env['omniauth.auth']

    #raise omniauth.inspect

    user = User.find_by_uid(omniauth['uid'])
    if user.nil?
      # New user registration
      user = User.create!(:uid => omniauth['uid'],
                          :first_name => omniauth['extra']['first_name'],
                          :last_name => omniauth['extra']['last_name'],
                          :email => omniauth['user_info']['name'])
    end

    user.update_attribute(:memberships, omniauth['extra']['memberships'])

    # Currently storing all the info
    session[:user_id] = omniauth

    flash[:notice] = "Successfully logged in"
    redirect_to root_path
  end

  # Omniauth failure callback
  def failure
    flash[:notice] = params[:message]
    #redirect_to root_path
    render :text => params[:message]
  end

  # logout - Clear our rack session BUT essentially redirect to the provider
  # to clean up the Devise session from there too !
  def destroy
    session[:user_id] = nil

    flash[:notice] = 'You have successfully signed out!'
    redirect_to "#{CUSTOM_PROVIDER_URL}/users/sign_out"
  end
end

