json.extract! person, :id, :nome, :nascimento, :endereco, :mae, :pai, :mora_com_pais, :mora_com_quem, :integrantes_familia, :renda_familiar, :casa_alugada, :estuda, :escolaridade, :tempo_integral, :escola_alimentacao, :biblioteca, :laboratorio, :created_at, :updated_at
json.url person_url(person, format: :json)
