Types::QueryType = GraphQL::ObjectType.define do
  name 'Query'

  field :user do
    type Types::User
    argument :id, !types.ID
    description 'Find a user by id'
    resolve ->(obj, args, ctx) { User.find(args['id']) }
  end

  field :post do
    type Types::PostType
    argument :id, !types.ID
    description 'Find a post by id'
    resolve ->(obj, args, ctx) { Post.find(args['id']) }
  end

  field :comment do
    type Types::Comment
    argument :id, !types.ID
    description 'Find a comment by id'
    resolve ->(obj, args, ctx) { Comment.find(args['id']) }
  end

  field :album do
    type Types::Album
    argument :id, !types.ID
    description 'Find a album by id'
    resolve ->(obj, args, ctx) { Album.find(args['id']) }
  end

  field :photo do
    type Types::Photo
    argument :id, !types.ID
    description 'Find a photo by id'
    resolve ->(obj, args, ctx) { Photo.find(args['id']) }
  end

  field :todo do
    type Types::Todo
    argument :id, !types.ID
    description 'Find a todo by id'
    resolve ->(obj, args, ctx) { Todo.find(args['id']) }
  end
end
