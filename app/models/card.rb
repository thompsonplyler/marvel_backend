class Card < ActiveRecord::Base
validates :name, presence: :true
validates :name, uniqueness: :true

has_many :users_cards_teams
has_many :users, through: :users_cards_teams
has_many :teams, through: :users_cards_teams

end
