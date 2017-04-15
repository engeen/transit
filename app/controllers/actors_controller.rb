class ActorsController < ApplicationController
	before_action :load_job




	def index
		render layout: false
	end

private


	def load_job
		@job = Job.find(params[:job_id])
	end


end
