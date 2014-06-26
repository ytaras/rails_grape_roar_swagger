class V2 < Grape::API
  version 'v2'
  format :json
  mount NewPosts::API

  add_swagger_documentation base_path: '/api', api_version: 'v2'
end
