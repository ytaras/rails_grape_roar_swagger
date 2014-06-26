class API < Grape::API
  mount V1
  mount V2
end
