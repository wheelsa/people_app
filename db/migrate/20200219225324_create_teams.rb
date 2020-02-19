class CreateTeams < ActiveRecord::Migration[6.0]
  def change
    create_table :teams do |t|
      t.string :name
      t.string :coach
      t.string :player

      t.timestamps
    end
  end
end
