class AddChestWaistBellyAssLegToSportTables < ActiveRecord::Migration[7.0]
  def change
    add_column :sport_tables, :chest, :string
    add_column :sport_tables, :waist, :string
    add_column :sport_tables, :belly, :string
    add_column :sport_tables, :ass, :string
    add_column :sport_tables, :leg, :string
  end
end
