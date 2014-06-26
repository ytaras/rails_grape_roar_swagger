class V2 < Grape::API
  version 'v2'
  format :json
  mount NewPosts::API
end
