require 'spec_helper'

describe Column do
  it { should validate_presence_of(:name) }
  it { should validate_uniqueness_of(:name) }
  it { should belong_to(:channel) }
  it { should have_and_belong_to_many(:articles) }
end
