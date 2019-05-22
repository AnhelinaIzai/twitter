require 'rails_helper'

RSpec.describe Twitt, type: :model do

  context "association" do
    it { should belong_to(:user) }
  end

end
