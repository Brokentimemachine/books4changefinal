class PagesController < ApplicationController
  def search
    if params[:search].blank?
      redirect_to('/posts/index', alert: "Please enter a valid search term") and return
    else
      @paramateer = params[:search].downcase
      @results = Article.all.where("lower(name LIKE, :search", search: "%#{@paramateer}%")
    end
  end
end
