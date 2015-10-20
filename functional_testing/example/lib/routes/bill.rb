class Bill < Sinatra::Base
  helpers StatementHelpers

  get '/' do
    haml :bill, locals:{statement_date: statement_date}
  end
end