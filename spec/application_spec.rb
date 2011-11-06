require 'spec_helper'

describe 'visiting my application' do
  include Rack::Test::Methods

  def app
    Sinatra::Application
  end

  it 'should render index view' do
    get '/'
    last_response.body.should include "Hello Sinatra"
  end

end

