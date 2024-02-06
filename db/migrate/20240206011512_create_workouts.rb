class CreateWorkouts < ActiveRecord::Migration[7.1]
  def change
    create_table :workouts do |t|
      t.datetime :starts_at
      t.references :location, null: false, foreign_key: true

      t.timestamps
    end
  end
end
