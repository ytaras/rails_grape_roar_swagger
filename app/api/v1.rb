class V1 < Grape::API
  version 'v1'
  format :json
  mount Posts::API
end
