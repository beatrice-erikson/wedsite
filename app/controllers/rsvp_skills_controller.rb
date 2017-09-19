class RsvpSkillsController < ApplicationController
    def destroy
        RsvpSkill.find(params[:id]).destroy
        redirect_back fallback_location: root_path
    end
end