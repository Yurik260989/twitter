class StaticPagesController < ApplicationController
  
  def about
  end

  def help
  end
  
   
   def home
    if signed_in?
      @micropost  = current_user.microposts.build
      @feed_items = current_user.feed.paginate(page: params[:page])
    end
      
  end
end
