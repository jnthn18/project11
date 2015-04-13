class MusicShow < ActiveRecord::Base
  #validates_presence_of to make sure every field has something
  validates_presence_of :band_name, message: "-- Please enter the band playing on this date."
  #location should contain city, state
  validates_format_of :location, with: /.+,\s\w{2}/, message: "-- Please enter the location of show as city, state."
end
