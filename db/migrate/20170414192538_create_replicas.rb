class CreateReplicas < ActiveRecord::Migration[5.0]
  def change
    create_table :replicas do |t|
      t.references :result, foreign_key: true
      t.datetime :timestamp
      t.string :actor
      t.text :value

      t.timestamps
    end
  end
end
