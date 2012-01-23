class CreateMovies < ActiveRecord::Migration
  def change
    create_table :movies do |t|
      t.date :showtime_date
      t.time :showtim_time

      t.timestamps
    end
  end
end
