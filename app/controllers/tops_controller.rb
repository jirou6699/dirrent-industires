class TopsController < ApplicationController

  def index
  end

  def new
    @experience = Experience.new
  end

  def create
    @experience = Experience.new(experience_paramas)
    if @experience.save
      redirect_to root_path
    else
      redirect_to new_top_path
    end
  end

  private
  def experience_paramas
    params.require(:experience).permit(:company, :position, :title, :text, :price_id, :talk, :talk_time, :industry_id, :occupation, :prefecture_id)
  end
end
