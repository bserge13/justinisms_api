require 'rails_helper'

RSpec.describe Justinism, type: :model do 
  describe 'validations' do 
    it { should validate_presence_of(:saying) }
  end
end