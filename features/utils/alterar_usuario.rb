def alterar_usuario(endpoint)
  header = {
    'Authorization': "Bearer 2275e2cbbf8dc1d113b25fb018cdb2e07e088b35bb5f7b7c13ca160ed96a82ba",
    'Content-Type': "application/json",
  }

  body_altera_usuario = {
    name: "Flávia Batista",
  }.to_json

  @resultado = HTTParty.put(endpoint, headers: header, body: body_altera_usuario)
end
