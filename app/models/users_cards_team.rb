class UsersCardsTeam < ActiveRecord::Base
    belongs_to :user 
    belongs_to :card
    belongs_to :team
end
