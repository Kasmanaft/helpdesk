require 'spec_helper'

describe Ticket do
  before do
    @ticket = FactoryGirl.create :ticket
  end

  subject { @ticket }

  it { should validate_presence_of :customer_name }
  it { should validate_presence_of :customer_email }
  it { should validate_presence_of :description }

end
