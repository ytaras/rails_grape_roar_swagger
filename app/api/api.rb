class API < Grape::API
  mount Posts::API
  add_swagger_documentation base_path: '/api'
end
