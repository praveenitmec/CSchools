require 'rails_helper'

RSpec.describe BaseController, type: :controller do
  it "renders the index template" do
    get :index
    expect(response.status).to eq(200)
  end
end
