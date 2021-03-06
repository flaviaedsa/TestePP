Quando("faco uma chamada do tipo DELETE para o endpoint de exclusao de usuarios") do
  endpoint = "#{CONFIG["apis"]["base_url"]}#{@id_usuario}"
  excluir_usuario(endpoint)
end

Então("o usuario nao deve mais ser listado na base") do
  endpoint = "#{CONFIG["apis"]["base_url"]}#{@id_usuario}"
  listar_usuarios(endpoint)
  expect(@resultado["data"]["message"]).to eql "Resource not found"
end
