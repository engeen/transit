class AddAudioColumnToJobs < ActiveRecord::Migration[5.0]
  def up
    add_attachment :jobs, :audio
  end

  def down
  	remove_attachment :jobs, :audio
  end

end
