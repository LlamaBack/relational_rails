require 'rails_helper'

RSpec.describe Player, type: :model do
    it {should belong_to :nba_team}
end