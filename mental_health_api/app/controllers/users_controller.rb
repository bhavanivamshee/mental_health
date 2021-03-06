class UsersController < ApplicationController
    def index
        @users = User.all

        render json: @users.to_json
    end

    def create
        @user = User.new(user_params)
        if @user.valid? && @user.save
            render json: @user.to_json
        else
            render json: @user.errors, status: 400
        end
    end

    def show
        render json: @user.to_json
    end

    def update
        if @user.update(user_params)
            render json: @user.to_json
        else
            render json: @user.errors, status: 400
        end
    end

    def destroy
        @user.destroy
    end

    def find
        @user = User.find_by(email: params[:user][:email])
        if @user
            render json: @user.to_json
        else
            @errors = @user.errors.full_messages
            render json: @errors.to_json
        end

    end

    private

    def set_user
        @user = User.find_by(id: params[:id])
    end

    def user_params
        params.require(:user).permit(:name, :email, :password)
    end
    
end

