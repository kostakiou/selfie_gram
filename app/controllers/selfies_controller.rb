class SelfiesController < ApplicationController
	before_action :find_selfie, only: [:show, :edit, :update, :destroy]
	def index		
	end


def new
	@selfie = Selfie.new
end

def create
	@selfie = Selfie.new(selfie_params)

	if @selfie.save
		redirect_to root_path, notice:"Succesfully message submitted"
	else
		render 'new'
	end
end


private

def selfie_params
	params.require(:selfie).permit(:message, :email_custom)
end


def find_selfie
	@selfie = Selfie.find(params[:id])		
end

end
