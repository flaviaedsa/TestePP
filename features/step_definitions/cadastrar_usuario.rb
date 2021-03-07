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
  log("Usuario: #{@id_usuario}")
  log("Página: #{@found_page}")
  expect(@found).to be true
end
