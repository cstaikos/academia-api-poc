require "rails_helper"

describe "Manuscripts API" do
  it 'does the thing' do
    FactoryBot.create_list(:manuscript, 10)
    get '/manuscripts'
    puts response.body
  end
end
