module StatementHelpers
  def statement_date
    Date.today.strftime('%Y-%m-%d')
  end
end