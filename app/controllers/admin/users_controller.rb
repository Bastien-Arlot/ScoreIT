module Admin
    class UsersController < ApplicationController
        
        def index
            @users = User.all
            @startups = Startup.all
            @scores = Score.all
        end

        def show
            @user = User.find(params[:id])
            @startup = Startup.find_by(user_id:params[:id])
            @score = Score.find_by(startup_id:@startup.id)
            @scores = Score.all
            @score_last = @startup.scores.last
            select_score()
        end

        private     
        def select_score
        
            @score_completed = []
            @scores.each do |element|
                if element.startup_id == @startup.id && !element.name.nil?
                @score_completed << element 
                end
            end
                @all_score_user = @score_completed
        
        end

    end
end