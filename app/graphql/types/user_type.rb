Types::UserType = GraphQL::ObjectType.define do
  name 'User'
  field :name, types.String
  field :username, types.String
  field :email, types.String
  field :phone, types.String
  field :website, types.String
  field :posts, types[Types::PostType]
  field :albums, types[Types::AlbumType]
  field :todos, types[Types::TodoType]
end
