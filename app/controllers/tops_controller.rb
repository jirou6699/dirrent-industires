class TopsController < ApplicationController
  protect_from_forgery except: :create
  def index
  end

  def new
    @experience = Experience.new
    #セレクトボックスの初期値設定
    @industry_parent_array = [""]
    # categoriesから親カテゴリーの名前のみ抽出し、配列化
    Industry.where(ancestry: nil).each do |parent|
      @industry_parent_array << parent.name
    end
  end

  def create
    @experience = Experience.new(experience_params)
    if @experience.save
      redirect_to root_path
    else
      redirect_to new_top_path, notice: "必須項目は入力してください"
    end
  end

  # 親カテゴリーが選択された後に動くアクション
  def get_category_children
    Industry.find("#{params[:parent_id]}").children
  end

  # 子カテゴリーが選択された後に動くアクション
  def get_category_grandchildren
    #選択された子カテゴリーに紐付く孫カテゴリーの配列を取得
    Industry.find("#{params[:child_id]}").children
  end


  private
  def experience_params
    params.require(:experience).permit(:company, :position, :title, :text, :price_id, :talk, :talk_time, :industry_id, :occupation, :prefecture_id)
  end
end
