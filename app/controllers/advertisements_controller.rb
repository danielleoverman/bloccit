class AdvertisementsController < ApplicationController
  def index
    @advertisements = Advertisement.all
  end

  def show
    @advertisements = Advertisement.find(params[:id])
  end

  def new
    @advertisements = Advertisement.new
  end

  def create
     @advertisements = advertisement.new
     @advertisements.title = params[:advertisement][:title]
     @advertisements.body = params[:advertisement][:body]

     if @advertisements.save

       flash[:notice] = "Post was saved."
       redirect_to @advertisement
     else

       flash.now[:alert] = "There was an error saving the ad. Please try again."
       render :new
     end
  end
end
