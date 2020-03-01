require "rails_helper"

describe Person do
    describe "A pessoa sem nome" do
        it "não deve ser válida" do
            person = Person.new
            person.nome = ""
            expect(person.valid?).to eq(false)
        end
    end

    describe "Inserção de multiplas pessoas" do
        it "deve estar condizente com a quantidade" do
            4.times do 
                person = Person.new
                person.nome = Faker::Name.name
                person.save
            end
            expect(Person.count).to eq(4)
        end
    end

    describe "Tamanho do registro" do
        it "Não tem limite de tamanho" do
            person = Person.new
            person.nome = "abc" * 255
            person.save
            expect(person.nome.size).to eq(255*3)
        end
    end

    describe "Busca de registro" do
        it "deve retornar o ultimo registro inserido" do 
            person = Person.new
            nome = Faker::Name.name
            person.nome = nome
            person.save
            person = Person.find_by_nome(nome)
            expect(person.nil?).to eq(false)
        end
    end

    describe "O registro" do
        it "Deve ser excluido" do
            person = Person.new
            person.nome = "abc"
            person.save
            person = Person.find_by_nome("abc")
            person.destroy
            person = Person.find_by_nome("abc")
            expect(person.nil?).to eq(true)
        end
    end

end
