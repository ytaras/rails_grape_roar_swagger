module V1
  class API < Grape::API
    version 'v1'
    format :json
    mount Posts::API

    add_swagger_documentation base_path: '/api', api_version: 'v1'
  end
end
