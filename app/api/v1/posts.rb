module V1::Posts
  class API < Grape::API
    format :json
    version 'v1'
    resource :posts do
      desc 'List all posts'
      get do
        Post.all
      end
    end
  end
end
