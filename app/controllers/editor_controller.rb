class EditorController < ApplicationController
	before_filter :load_job



private

	def load_job
		@job = Job.find(params[:id])
	end

end
