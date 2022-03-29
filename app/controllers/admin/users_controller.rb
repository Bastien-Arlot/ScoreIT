module Admin
    class UsersController < ApplicationController
        
        def index
            @users = User.all
            @startups = Startup.all
            @scores = Score.all
        end

        def show
            @user = User.find(params[:id])
        end
        

    end
end