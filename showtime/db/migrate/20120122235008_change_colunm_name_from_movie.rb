class ChangeColunmNameFromMovie < ActiveRecord::Migration
 def change
  rename_column :movies, :showtim_time, :showtime_time
 end
end
