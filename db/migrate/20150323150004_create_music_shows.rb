class CreateMusicShows < ActiveRecord::Migration
  def change
    create_table :music_shows do |t|
      t.string :band_name
      t.string :location
      t.date :date_of_show
      t.decimal :ticket_price

      t.timestamps null: false
    end
  end
end
