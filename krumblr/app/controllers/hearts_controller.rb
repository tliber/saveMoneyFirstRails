class HeartsController < ApplicationController
	def create
      @heart = Heart.new(heart_params)
      if @heart.save
        redirect_to '/', alert: 'Your future income thanks you.' 
      else
      	redirect_to root_url notice: "money problems homie? from hearts_controller"
      end
    end
    private 
    def heart_params
      params.require(:heart).permit(:post_id)
    end

end
