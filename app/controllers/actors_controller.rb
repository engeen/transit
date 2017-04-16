class ActorsController < ApplicationController
	before_action :load_job




	def index
		render layout: false
	end


	def new
		@actor = @job.actors.build
		respond_to do |format|
			format.js {

			}
		end
	end


	def create
		@actor = @job.actors.create(actor_params)
		if @actor.persisted? && params.has_key?(:replica_id)
			_replica  = @job.replicas.find(params[:replica_id])
			if _replica 
				_replica.update_attribute(:actor, @actor.short_name)
			end
		end
	end

private
	def actor_params
		params.require(:actor).permit(:name, :short_name)
	end


	def load_job
		@job = Job.find(params[:job_id])
	end


end
