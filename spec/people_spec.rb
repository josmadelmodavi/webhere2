require "rails_helper"

describe Person do
    describe "When the name is not present" do
        it "should not be valid" do 
            person = Person.new
            person.nome = ""
            expect(person.valid?).to eq(false)
        end
    end

    describe "When inserted multiple records" do 
        it "should have 4 registries" do 
            4.times do 
                Person.create!(nome: Faker::Name.name)
            end

            expect(Person.count).to eq(4)
        end
    end
end
