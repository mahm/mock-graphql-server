Types::PhotoType = GraphQL::ObjectType.define do
  name 'Photo'
  field :title, types.String
  field :url, types.String
  field :thumbnail_url, types.String
  field :album, Types::AlbumType
end
