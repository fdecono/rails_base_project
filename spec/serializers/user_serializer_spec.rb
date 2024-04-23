require 'rails_helper'

RSpec.describe UserSerializer do
  let(:user) { create :user }
  let(:user_serialization) { serialize user }

  it 'renders the user correctly' do
    expect(user_serialization).to eq({
      id: user.id,
      email: user.email
    })
  end
end
