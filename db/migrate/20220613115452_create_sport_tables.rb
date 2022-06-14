class CreateSportTables < ActiveRecord::Migration[7.0]
  def change
    create_table :sport_tables do |t|
      t.text :weight
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
