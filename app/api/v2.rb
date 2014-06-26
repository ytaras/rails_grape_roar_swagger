module V2
  class API < Grape::API
    version 'v2'
    format :json
    mount Posts::API

    add_swagger_documentation base_path: '/api', api_version: 'v2'
  end
end
