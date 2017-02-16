class RsvpController < ApplicationController
	def index
	end
	def show
		@user = Rsvp.find_by(name: params[:name].humanize.titleize)
		redirect_to(root_url, :notice => 'Record not found') unless @user
	end
	def update
		@user = Rsvp.find(params[:id])
		@user.update(rsvp_params)
		redirect_back fallback_location: root_url
	end
	private
		def rsvp_params
			params.require(:rsvp).permit(:name, :has_rsvpd, :is_attending)
		end
end
