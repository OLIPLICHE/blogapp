require 'rails_helper'

RSpec.describe Post, type: :model do
  describe 'Validation for posts' do
    user = User.create(name: 'paka', bio: 'Test user')
    subject do
      Post.new(title: 'paka post', text: 'This is text post', author_id: user)
    end

    before { subject.save }

    it 'Is counter a number' do
      subject.comments_counter = '1'
      expect(subject).to_not be_valid
    end
  end
end
