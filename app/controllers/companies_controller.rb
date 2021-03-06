class CompaniesController < ApplicationController
  def new
    @company = Company.new
  end
  
  def create
    @company = Company.new(company_params)
    if @company.save
      log_in @company
      redirect_to new_topic_path, success: '登録が完了しました'
    else
      flash.now[:danger] = "登録に失敗しました"
      render :new
    end
  end

  private
  def company_params
    params.require(:company).permit(:name, :email, :department, :person_in_charge,:password, :password_confirmation)
  end
end
