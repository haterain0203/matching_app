class YoutubersController < ApplicationController
  def new
    @youtuber = Youtuber.new
  end
  
  def create
    @youtuber = Youtuber.new(youtuber_params)
    if @youtuber.save
      log_in @youtuber
      redirect_to root_path, success: '登録が完了しました'
    else
      flash.now[:danger] = "登録に失敗しました"
      render :new
    end
  end

  private
  def youtuber_params
    params.require(:youtuber).permit(:name, :channel_name, :registrants,:email, :genre, :accept, :career, :request, :password, :password_confirmation)
  end
end
