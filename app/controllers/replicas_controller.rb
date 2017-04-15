class ReplicasController < ApplicationController

	before_action :load_job
	before_action :load_replica, only: [:update, :destroy]

	def create
		@htmlId = params[:htmlId]
		@replica = @job.replicas.create(
			timestamp: params[:timestamp]
			)
	end


	def update
		#byebug
		@replica.update_attributes(replica_params)
	end

	def destroy
		@replica.destroy
	end


private

	def replica_params
		params.require(:replica).permit(:timestamp, :value, :actor)
	end



	def load_job
		@job = Job.find(params[:job_id])
	end



	def load_replica
		@replica = @job.replicas.find(params[:id])
	end

end
