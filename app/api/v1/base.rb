module V1
  class Base < Grape::API
    mount V1::Posts
    add_swagger_documentation mount_path: 'v1/swagger_doc.json', api_version: 'v1',
  end
end
gra
