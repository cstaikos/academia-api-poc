require "rails_helper"

describe "Manuscripts API" do
  it 'Get all manuscripts works' do
    FactoryBot.create_list(:discipline_with_manuscripts, 10)
    get '/manuscripts'
    expect(response).to be_success
    body = JSON.parse(response.body)
    expect(body.size).to eq(10)
  end
end
