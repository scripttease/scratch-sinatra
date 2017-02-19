require 'spec_helper'
require_relative "../hapi"
RSpec.describe 'hapi app' do

  def app 
    Sinatra::Application
  end

  it 'says hello' do
    get '/' 
    expect(last_response).to be_ok
    expect(last_response.body).to eq 'Hello everyone'
  end
end
