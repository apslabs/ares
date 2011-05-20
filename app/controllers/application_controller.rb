class ApplicationController < ActionController::Base
  protect_from_forgery

  before_filter :login_required
#  before_filter :set_current_company
  helper_method :current_company 
  helper_method :current_user
  helper_method :user_signed_in?
  
  layout 'apslabs'
  
    
protected
  def set_current_company
    current_user.set_current_company(params[:cc]) unless params[:cc].blank? 
  end  

  def current_company
    @current_company ||= current_user.current_company || current_user.empresas.first()
  end

  def user_signed_in?
    !!current_user
  end

  def login_required
    if !current_user
      respond_to do |format|
        format.html  {
          redirect_to '/auth/apslabs'
        }
        format.json {
          render :json => { 'error' => 'Access Denied' }.to_json
        }
      end
    end
  end

  def current_user
    return nil unless session[:user_id]
    @current_user ||= User.find_by_uid(session[:user_id]['uid'])
  end

private

end
