class SessionsController < ApplicationController
  def new
  end
  
  def create
    company = Company.find_by(email_params)
    if company && company.authenticate(password_params[:password])
      log_in company
      redirect_to new_topic_path, success: "ログインに成功しました"
    else
      flash.now[:danger] = "ログインに失敗しました"
      render :new
    end
  end
  
  def destroy
    log_out
    redirect_to root_url, info: "ログアウトしました"
  end
  
  private
  def log_in(company)
    session[:company_id] = company.id
  end  
  
  def log_out
    session.delete(:company_id)
    @current_company = nil
  end
  
  def email_params
    params.require(:session).permit( :email )
  end

  def password_params
    params.require(:session).permit( :password )
  end
  
end
