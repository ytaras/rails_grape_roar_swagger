module PostCollectionRepresenter
  include Roar::Representer::JSON::HAL

  def posts
    all
  end

  collection :posts, extend: PostRepresenter
end
