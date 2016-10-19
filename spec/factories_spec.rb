require 'spec_helper'

describe 'Factories' do
  it 'creates 20 users, each with at least 10 posts, each post with at least 1 video, each video with at least 1 comment' do
    FactoryGirl.create_list(:user, 20, :with_10_posts)
    expect(User.count).to eq(20)
    user = User.take
    expect(user.posts.count).to eq(10)
    post = user.posts.take
    expect(post.videos.count).to eq(1)
    video = post.videos.take
    expect(video.comments.count).to eq(1)
  end
end
