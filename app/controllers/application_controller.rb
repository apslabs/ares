class ApplicationController < ActionController::Base
  protect_from_forgery
  before_filter :authenticate_user!
  before_filter :set_current_company
  helper_method :current_company 
    
  layout 'apslabs'
  
protected
  def set_current_company
    current_user.set_current_company(params[:cc]) unless params[:cc].blank? 
  end  

  def current_company
    @current_company ||= current_user.current_company || current_user.empresas.first()
  end

private

end
