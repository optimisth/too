class HomeController < ApplicationController
  def index
    @content = Info.last.nil? ? 'not updated' : Info.last.home
  end

  def profile
    @data1 = Profile.where(list: 1).all
    @data2 = Profile.where(list: 2).all
    @data3 = Profile.where(list: 3).all
  end

  def category
    @categories = Category.all
    @category = Category.where(id: params[:id]).first
    @works = @category.works.all
    @is_work = "container-fluid-category"
  end

  def work
    @categories = Category.all
    @work = Work.where(id: params[:id]).first
    @pictures = @work.pictures
    @category = @work.category
    @is_work = "container-fluid-category"
  end

  def contact
    info = Info.last
    @website = info.nil? ? "not upadted" : info.website
    @email = info.nil? ? "not upadted" : info.email
    @address = info.nil? ? "not upadted" : info.address
  end
end
