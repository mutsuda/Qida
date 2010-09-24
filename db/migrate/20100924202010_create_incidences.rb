class CreateIncidences < ActiveRecord::Migration
  def self.up
    create_table :incidences do |t|
      t.string :title
      t.string :location
      t.string :description
      t.date :date
      t.string :status

      t.timestamps
    end
  end

  def self.down
    drop_table :incidences
  end
end
