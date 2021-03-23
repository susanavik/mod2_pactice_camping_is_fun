class SignupsController < ApplicationController

    def new 
        @signup = Signup.new

        @campers = Camper.all 
        @activities = Activity.all

    end
    
    def create
        @signup = Signup.create(signup_params)

        if @signup.valid?
            redirect_to campers_path
          else
            flash[:errors] = @signup.errors.full_messages
            redirect_to new_signup_path
          end
    end

    def signup_params
        params.require(:signup).permit(:camper_id, :activity_id, :time)
    end

end
