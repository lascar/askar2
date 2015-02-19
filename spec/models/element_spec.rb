require 'rails_helper'

RSpec.describe Element, type: :model do
  before do
    @element = Element.new(name: "Element1")
  end
 
  subject { @element }
 
  describe "when name is not present" do
    before { @element.name = " " }
    it { should_not be_valid }
  end
end
