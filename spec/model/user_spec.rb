require 'rails_helper'

RSpec.describe User, type: :model do
  subject { User.new(name: "Jose", photo: "url", bio: "test") }
  before { subject.save }

  it "name should be present" do
    subject.name = nil
    expect(subject).to_not be_valid
  end

  it "posts_counter allows nil values" do
    subject.posts_counter = nil
    expect(subject).to be_valid
  end
end
