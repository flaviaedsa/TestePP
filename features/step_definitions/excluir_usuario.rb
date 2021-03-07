Quando("faco uma chamada do tipo DELETE para o endpoint de exclusao de usuarios") do
  endpoint = "#{CONFIG["apis"]["base_url"]}#{@id_usuario}"
  excluir_usuario(endpoint)
end

Então("o usuario nao deve mais ser listado na base") do
  endpoint_get_all = "#{CONFIG["apis"]["base_url"]}"
  listar_usuarios(endpoint_get_all)
  expect(@found).to be false
end
