require "rails_helper"

describe PeopleController, :type => :controller do
    describe "GET index" do
        it "has a 200 status code" do
            get :index
            expect(response.status).to eq(200)
        end
    end

    describe "GET new" do
        it "has a 200 status code" do
            get :new
            expect(response.status).to eq(200)
        end
    end

    describe "GET get_all_user_json_status" do
        it "has a 200 status code" do
            get :get_all_user_json
            expect(response.status).to eq(200)
        end
    end

    describe "GET json content" do
        it "should be equals to Person.all" do
            Person.create!(nome: "ABC")
            get :get_all_user_json
            expect(response.body).to eq(Person.all.to_json)
        end
    end

    describe "GET json content from get_all_users_ordered" do
        it "should be equals to Person.all.sort(nome: :asc)" do
            Person.create!(nome: "ABC")
            Person.create!(nome: "ZBC")
            Person.create!(nome: "XBC")
            get :get_users_ordered
            expect(response.body).to eq(Person.all.order(nome: :asc).to_json)
        end
    end
end
