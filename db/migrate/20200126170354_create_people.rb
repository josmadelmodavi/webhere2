class CreatePeople < ActiveRecord::Migration[5.2]
  def change
    create_table :people do |t|
      t.string :nome
      t.string :nascimento
      t.string :endereco
      t.string :mae
      t.string :pai
      t.boolean :mora_com_pais
      t.string :mora_com_quem
      t.integer :integrantes_familia
      t.float :renda_familiar
      t.boolean :casa_alugada
      t.boolean :estuda
      t.string :escolaridade
      t.boolean :tempo_integral
      t.boolean :escola_alimentacao
      t.boolean :biblioteca
      t.boolean :laboratorio

      t.timestamps
    end
  end
end
