data_hash = JSON.parse(File.open(Rails.root.join('db', 'data.json')).read)

[User, Post, Comment, Album, Photo, Todo].each(&:delete_all)

data_hash['users'].each do |record|
  User.create!({
    name:     record['name'],
    username: record['username'],
    email:    record['email'],
    phone:    record['phone'],
    website:  record['website'],
  })
end

data_hash['posts'].each do |record|
  Post.create!({
    user_id: record['userId'],
    title:   record['title'],
    body:    record['body'],
  })
end

data_hash['comments'].each do |record|
  Comment.create!({
    post_id: record['postId'],
    name:    record['name'],
    email:   record['email'],
    body:    record['body'],
  })
end

data_hash['albums'].each do |record|
  Album.create!({
    user_id: record['userId'],
    title:   record['title'],
  })
end

data_hash['photos'].each do |record|
  Photo.create!({
    album_id:      record['albumId'],
    title:         record['title'],
    url:           record['url'],
    thumbnail_url: record['thumbnailUrl'],
  })
end

data_hash['todos'].each do |record|
  Todo.create!({
    user_id:   record['userId'],
    title:     record['title'],
    completed: record['completed'],
  })
end
