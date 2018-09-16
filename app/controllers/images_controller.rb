class ImagesController < ApplicationController
    def index
        render :json => Image.all
    end

    def create
        fields = params.permit(:title, :description, :image)
        @image = Image.new(fields)
    end

    def update
      @image = Image.find(params[:id])
      @image.update_attributes(params.permit(:title, :description))
    end
end
