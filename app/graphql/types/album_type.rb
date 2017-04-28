Types::AlbumType = GraphQL::ObjectType.define do
  name 'Album'
  field :title, types.String
  field :user, Types::UserType
  field :photos, types[Types::PhotoType]
end
