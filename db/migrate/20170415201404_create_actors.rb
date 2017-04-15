class CreateActors < ActiveRecord::Migration[5.0]
  def change
    create_table :actors do |t|
      t.references :job, foreign_key: true
      t.string :name
      t.string :short_name

      t.timestamps
    end
  end
end
