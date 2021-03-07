Dado("que eu tenha um usuario cadastrado na base de dados") do
  endpoint = "#{CONFIG["apis"]["base_url"]}"
  cadastrar_usuario(endpoint)
  @id_usuario = (@resultado["data"]["id"])
  @email_usuario = (@resultado["data"]["email"])
end

Quando("faco uma chamada do tipo PUT para o endpoint de alteração de usuarios") do
  endpoint = "#{CONFIG["apis"]["base_url"]}#{@id_usuario}"
  alterar_usuario(endpoint)
  expect(@resultado.response.code).to eql "200"
end

Então("as alteracoes deve ser salvas corretamente na base") do
  endpoint = "#{CONFIG["apis"]["base_url"]}#{@id_usuario}"
  listar_unico_usuario(endpoint)
  expect(@resultado["data"]["name"]).to eql JSON.parse(@body_altera_usuario)["name"] #json parse converte um json que está dentro da string para um json do tipo hash
  expect(@resultado["data"]["email"]).to eql @email_usuario
end
