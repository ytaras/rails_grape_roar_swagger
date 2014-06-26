
module PostRepresenter
  include Roar::Representer::JSON::HAL

  property :title
  property :body, as: :post_body

  link :self do
    "/api/posts/#{id}"
  end
end
