
module PostRepresenter
  include Roar::Representer::JSON::HAL

  property :title
  property :body

  link :self do
    "/api/posts/#{represented.id}"
  end
end
