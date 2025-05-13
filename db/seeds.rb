# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end
user1 = User.create(name: "Alice", email: "alice@example.com")
user2 = User.create(name: "Bob", email: "bob@example.com")

Post.create(title: "Alice's First Post", body: "This is Alice's first post.", user: user1)
Post.create(title: "Alice's Second Post", body: "Another post by Alice.", user: user1)

Post.create(title: "Bob's Post", body: "Bob is writing his first post.", user: user2)