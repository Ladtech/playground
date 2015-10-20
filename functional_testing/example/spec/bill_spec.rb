require 'app'

describe Bill do

  include_context :sinatra_application

  describe 'get /' do
    it 'renders the bill' do

      expect_any_instance_of(described_class).to receive(:statement_date).and_return(:todays_date)
      expect_any_instance_of(described_class).to receive(:haml).with(:bill, locals: {statement_date: :todays_date})

      get('/')
    end

  end
end