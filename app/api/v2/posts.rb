module V2::Posts
  class API < Grape::API
    format :json
    version 'v2'
    resource :posts do
      get do
        Post.all
          .represent_with PostCollectionRepresenter
      end

      desc 'Show a post'
      params do
        requires :id, type: Integer, desc: 'Id of a post to load'
      end
      get ':id' do
        Post.find(params[:id])
          .represent_with(PostRepresenter)
      end

      desc 'Creates a post'
      params do
        requires :title, type: String, desc: 'Post title'
        requires :post_body, type: String, desc: 'Post body'
      end
      post do
        Post.new
          .represent_with(PostRepresenter)
          .from_hash(params)
          .tap(&:save!)
      end
    end
  end
end
