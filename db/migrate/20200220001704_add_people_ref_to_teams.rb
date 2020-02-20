class AddPeopleRefToTeams < ActiveRecord::Migration[6.0]
  def change
    add_reference :teams, :people, null: false, foreign_key: true
  end
end
