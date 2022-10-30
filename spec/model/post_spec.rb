require 'rails_helper'

RSpec.describe Post, type: :model do
  subject { Post.new(title: "Title", text: "Text")}
  before { subject.save }

  it "name should be present" do
    subject.title = nil
    expect(subject).to_not be_valid
  end

  it "text should be present" do
    subject.text = nil
    expect(subject).to_not be_valid
  end

  it "comments_counter is greater or equal to zero" do
    subject.comments_counter = -1
    expect(subject).to_not be_valid
  end
end