class UsersCardsTeams < ActiveRecord::Migration[4.2]
  def change
    create_table :users_cards_teams do |t|
      t.integer :user_id
      t.integer :card_id
      t.integer :team_id
    end
  end
end
