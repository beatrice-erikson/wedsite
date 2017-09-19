class AccessNeedsController < ApplicationController
    def destroy
        AccessNeed.find(params[:id]).destroy
        redirect_back fallback_location: root_path
    end
end