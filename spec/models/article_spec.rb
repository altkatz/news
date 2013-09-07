require 'spec_helper'

describe Article do
  it { should have_and_belong_to_many(:columns) }
  it { should validate_presence_of(:title) }
  it { should ensure_inclusion_of(:status).in_array(%w(draft, published, banned)) }
end
