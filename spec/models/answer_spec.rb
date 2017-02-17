require 'rails_helper'

RSpec.describe Answer, type: :model do
  let(:question) { Question.new(title: "New Question", body: "New Question Body", resolved: true) }
  let (:answer) { Answer.create!(body: "New Answer Body") }
  describe "attributes" do
    it "has body attributes" do
      expect(answer).to have_attributes(body: "New Answer Body")
    end

  end
end
