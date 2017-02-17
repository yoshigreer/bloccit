require 'rails_helper'

RSpec.describe Question, type: :model do
  describe "attributes" do
    let(:question) { Question.new(title: "New Question", body: "New Question Body", resolved: true) }
    it "has title, body, and resolved attributes" do
      expect(question).to have_attributes(title: "New Question", body: "New Question Body", resolved: true)
    end
  end
end
