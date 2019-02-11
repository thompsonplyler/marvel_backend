class Team < ActiveRecord::Base
    validates :name, presence: :true


    has_many :users_cards_teams
    has_many :users, through: :users_cards_teams
    has_many :cards, through: :users_cards_teams
end
