class DietaryNeedsController < ApplicationController
    def destroy
        DietaryNeed.find(params[:id]).destroy
        redirect_back fallback_location: root_path
    end
end