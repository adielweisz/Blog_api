require 'rails_helper'

RSpec.describe "Posts", type: :request do
  describe "GET /posts" do
    it "adds an array of posts" do
     
  user =User.create!(name: "Test", email: "test@test.com", password: "password")
    
Post.create!(user_id: user.id, title: Faker::Company.catch_phrase, body: Faker::Hipster.paragraph(sentence_count: 6), image: "https://i.picsum.photos/id/302/200/300.jpg?hmac=b5e6gUSooYpWB3rLAPrDpnm8PsPb84p_NXRwD-DK-1I")
Post.create!(user_id: user.id, title: Faker::Company.catch_phrase, body: Faker::Hipster.paragraph(sentence_count: 6), image: "https://i.picsum.photos/id/131/200/300.jpg?hmac=9q7mRSOguNBFGg_gPPRKlfjNINGjXWeDBTYPP1_gEas")


     get "/posts"
     posts = JSON.parse(response.body)

     expect(response).to have_http_status(200)
     expect(posts.length).to eq(2)
    end
  end

  describe "GET /posts/:id" do 
    it "returns post attributes" do 

   user =User.create!(name: "Test", email: "test@test.com", password: "password")
    
  post = Post.create!(user_id: user.id, title: Faker::Company.catch_phrase, body: Faker::Hipster.paragraph(sentence_count: 6), image: "https://i.picsum.photos/id/302/200/300.jpg?hmac=b5e6gUSooYpWB3rLAPrDpnm8PsPb84p_NXRwD-DK-1I")

get "/posts/#{post.id}"
post = JSON.parse(response.body)

expect(response).to have_http_status(200)
expect(post["title"]).to eq(post["title"])

    end 
 end

 describe "POST /posts" do 
  it "creates a new post" do 
    
end
