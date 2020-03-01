class TopicsController < ApplicationController
  def index
    # 自社で募集をかけている案件しか見れない仕様に（現在ログイン中のIDの案件のみ一覧化される）
    @topics = Topic.where(company_id: current_company.id)
  end
  
  def new
    @topic = Topic.new
  end
  
  def create
    @topic = current_company.topics.new(topic_params)
    
    if @topic.save
      redirect_to topics_path, success: "投稿に成功しました"
    else
      flash.now[:danger] = "投稿に失敗しました"
      render :new
    end
  end
  
  private
  def topic_params
    params.require(:topic).permit(:companies_id,:topic_name,:topic_content,:topic_genre,:topic_request,:topic_cost,:topic_request_youtuber,:topic_negotiation)
  end
end
