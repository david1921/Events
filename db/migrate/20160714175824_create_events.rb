class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.string :hostname
      t.string :event_string

      t.timestamps null: false
    end
  end
end
