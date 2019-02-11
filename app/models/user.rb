class User < ActiveRecord::Base
    has_secure_password

    validates :name, presence: :true
    validates :email, presence: :true
    validates :email, uniqueness: true 

    has_many :users_cards_teams
    has_many :cards, through: :users_cards_teams
    has_many :teams, through: :users_cards_teams
end