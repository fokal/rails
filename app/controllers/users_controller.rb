class UsersController < ApplicationController
    def index

    end

    def show
        render :json => User.find_by(username: params[:id]).to_builder.target!
    end

    def update
        @user = User.find_by(username: params[:id])
        if @user == nil
            head 404
        elsif @user.update_attributes(editable_attributes)
            head 200
        else
            head 400
        end
    end

    def create

    end

    private

    def editable_attributes
        params.permit(:name, :bio, :url, :twitter, :instagram, :location)
    end
end
