class SelfiesController < ApplicationController
	def index		
	end


def new
	@selfie = Selfie.new
end

def create
	@selfie = Selfie.new(selfie_params)
end


private

def selfie_params
	params.require(:selfie).permit(:message, :email_custom)
end

end
