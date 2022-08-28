require 'rails_helper'

RSpec.describe NbaTeam do
    it {should have_many :players}
end