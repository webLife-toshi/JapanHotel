class CreateRecreations < ActiveRecord::Migration
  def change
    create_table :recreations do |t|

      t.timestamps
    end
    add_column :recreations, :FitnessCenter, :boolean
    add_column :recreations, :GamesRoom, :boolean
    add_column :recreations, :garden, :boolean
    add_column :recreations, :GolfCourseOnSite, :boolean
    add_column :recreations, :GolfCourseWithin3km, :boolean
    add_column :recreations, :HotSpringBath, :boolean
    add_column :recreations, :IndoorPool, :boolean
    add_column :recreations, :Jacuzzi, :boolean
    add_column :recreations, :KidsClub, :boolean
    add_column :recreations, :Massage, :boolean
    add_column :recreations, :OutdoorPool, :boolean
    add_column :recreations, :KidPool, :boolean
    add_column :recreations, :PrivateBeach, :boolean
    add_column :recreations, :Sauna, :boolean
    add_column :recreations, :Spa, :boolean
    add_column :recreations, :SquashCourts, :boolean
    add_column :recreations, :SteamRoom, :boolean
    add_column :recreations, :TennisCourts, :boolean
    add_column :recreations, :WaterSportsMotorized, :boolean
    add_column :recreations, :WaterSportsNonmotorized, :boolean
    add_index  :recreations, :FitnessCenter
    add_index  :recreations, :GamesRoom
    add_index  :recreations, :garden
    add_index  :recreations, :GolfCourseOnSite
    add_index  :recreations, :GolfCourseWithin3km
    add_index  :recreations, :HotSpringBath
    add_index  :recreations, :IndoorPool
    add_index  :recreations, :Jacuzzi
    add_index  :recreations, :KidsClub
    add_index  :recreations, :Massage
    add_index  :recreations, :OutdoorPool
    add_index  :recreations, :KidPool
    add_index  :recreations, :PrivateBeach
    add_index  :recreations, :Sauna
    add_index  :recreations, :Spa
    add_index  :recreations, :SquashCourts
    add_index  :recreations, :SteamRoom
    add_index  :recreations, :TennisCourts
    add_index  :recreations, :WaterSportsMotorized
    add_index  :recreations, :WaterSportsNonmotorized
  end
end
