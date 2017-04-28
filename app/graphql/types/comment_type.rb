Types::CommentType = GraphQL::ObjectType.define do
  name 'Comment'
  field :post, Types::PostType
  field :name, types.String
  field :email, types.String
  field :body, types.String
end
