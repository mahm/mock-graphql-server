Types::TodoType = GraphQL::ObjectType.define do
  name 'Todo'
  field :user, Types::UserType
  field :title, types.String
  field :completed, types.Boolean
end
