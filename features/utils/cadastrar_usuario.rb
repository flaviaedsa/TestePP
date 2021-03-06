def cadastrar_usuario(endpoint)
  header = {
    'Authorization': "Bearer 2275e2cbbf8dc1d113b25fb018cdb2e07e088b35bb5f7b7c13ca160ed96a82ba",
    'Content-Type': "application/json",
  }

  body_cadastro_usuario = {
    name: Faker::Name.name,
    email: Faker::Internet.email,
    gender: "Female",
    status: "Active",
  }.to_json

  @resultado = HTTParty.post(endpoint, headers: header, body: body_cadastro_usuario)
end

def listar_usuarios(endpoint)
  @resultado = HTTParty.get(endpoint)
  expect(@resultado.code).to eql 200

  pages = @resultado["meta"]["pagination"]["pages"]
end
