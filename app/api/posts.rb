module Posts
  class API < Grape::API
    version 'v1', using: :header, vendor: 'ytaras'
    format :json

    resource :posts do
      desc 'List all posts'
      get do
        Post.all
      end

      desc 'Create a post'
      params do
        requires :title, type: String, desc: 'Post title'
        requires :post_body, type: String, desc: 'Post body'
      end
      post do
        Post.create!(title: params[:title], body: params[:post_body])
      end
    end
  end
end
