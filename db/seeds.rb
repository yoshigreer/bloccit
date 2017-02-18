require 'random_data'

50.times do
  Post.create!(
    title: RandomData.random_sentence,
    body: RandomData.random_paragraph
  )
end

posts = Post.all

100.times do
  Comment.create!(
    post: posts.sample,
    body: RandomData.random_paragraph
  )
end

Post.find_or_create_by(title: "special title", body: "special body")
Comment.find_or_create_by(post_id: "101", body:"special body")

puts "Seed finished"
puts "#{Post.count} posts created"
puts "#{Comment.count} comments created"
