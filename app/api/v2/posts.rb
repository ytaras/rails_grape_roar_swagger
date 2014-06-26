module V2::Posts
  class API < Grape::API
    format :json
    version 'v2'
    resource :posts do
      get do
        {all: Post.all}
      end
    end
  end
end
