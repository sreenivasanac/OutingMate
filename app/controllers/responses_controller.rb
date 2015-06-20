class ResponsesController < ApplicationController
	def create
		outing = Ouitng.find params[:outing_id]
		@response = outing.responses.new params[:response]
		if response.save
	    flash[:notice] = "#{@response.title} saved."
	    redirect_to outing_path(outing)
	  else
	    render :new # todo
	  end
	end
end
