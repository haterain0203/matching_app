module ApplicationHelper
  def log_in(company)
    session[:company_id] = company.id
  end  
  
  def current_company
    @current_company ||= Company.find_by(id: session[:company_id])
  end
  
  def logged_in?
    !current_company.nil?
  end
end
