class BillPage
  include PageMagic

  path '/bill'

  element(:statement_date, id: 'statement-date')
end