require 'rails_helper'

RSpec.describe Question, type: :model do
   let(:question) { Question.create!(title: "New Question Title", body: "New Question Body", resolved:boolean) }
 
 # #2
   describe "attributes" do
     it "has title and body attributes and resolved response" do
       expect(question).to have_attributes(title: "New Question Title", body: "New Question Body", resolved:boolean)
     end
   end
end
