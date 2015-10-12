class EmbedsController < ApplicationController
  # tried adding rack-cors but that didn't seem to do the trick
  # this should fix CORS issues when requesting this action via JS embed
  skip_before_action :verify_authenticity_token, only: :show

  def show
    # Since this should only be called with JS that's the only
    # format we'll support
    respond_to do |format|
      format.js do
        @widget = Widget.find(params[:id])
        render layout: false
      end
    end
  end
end
