class CreateStations < ActiveRecord::Migration[5.2]
  def change
    create_table :stations do |t|
      t.text  :route
      t.text :near_station
      t.text :time

      t.timestamps
    end
  end
end
