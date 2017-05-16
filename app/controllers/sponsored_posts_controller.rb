class SponsoredPostsController < ApplicationController
      def show
     @SponsoredPost = SponsoredPost.find(params[:id])
  end

  def new
    @topic = Topic.find(params[:topic_id])
    @SponsoredPost = SponsoredPost.new
  end

    def edit
     @SponsoredPost = SponsoredPost.find(params[:id])
   end

   def destroy
     @SponsoredPost = SponsoredPost.find(params[:id])
 
     if @SponsoredPost.destroy
       flash[:notice] = "\"#{@SponsoredPost.title}\" was deleted successfully."
       redirect_to @SponsoredPost.topic
     else
       flash.now[:alert] = "There was an error deleting the post."
       render :show
     end
   end   
end
