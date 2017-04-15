class ChangeReplicaFields < ActiveRecord::Migration[5.0]
  def change
  	remove_column :replicas, :timestamp
  	add_column :replicas, :timestamp, :float
  	remove_reference :replicas, :result
  	add_reference :replicas, :job,foreign_key: true
  end
end
