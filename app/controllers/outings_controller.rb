class OutingsController < ApplicationController
	def new
		@outing = Outing.new
	end

	def create
		@outing = Outing.new params[:outing]
		if @outing.save
	    flash[:notice] = "#{@outing.title} saved."
	    redirect_to @outing
	  else
	    render :new
	  end
	end

	def show
		@outing = Outing.find(params[:id])
	end

	def edit
		@outing = Outing.find(params[:id])
	end
end
