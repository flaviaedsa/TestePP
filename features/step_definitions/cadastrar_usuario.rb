#------------------------------Usuario cadastrado com sucesso------------------------------#

Quando("faco uma chamada do tipo POST para o endpoint de cadastro de usuarios") do
  endpoint = "#{CONFIG["apis"]["base_url"]}"
  cadastrar_usuario(endpoint)
  @id_usuario = (@resultado["data"]["id"])
end

Então("o codigo de resposta deve ser igual a {string}") do |status_code|
  expect(@resultado.response.code).to eql status_code
end

Então("o usuario deve ser salvo corretamente na base de dados") do
  endpoint = "#{CONFIG["apis"]["base_url"]}"
  listar_usuarios(endpoint)
end

#------------------------Usuario não cadastrado - Dados invalidos -------------------------#

Dado("que eu tenha informações invalidas do usuario:") do |table|
  body_cadastro_usuario = table.rows_hash
  cadastrar_usuario(endpoint)
end

Então("devo visualizar uma {string} informando que o campo esta invalido") do |mensagem|
  expect((@result["data"]["message"]).to_s).to include mensagem
end
