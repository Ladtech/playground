Then(/^I should be on the '(.*)' page$/) do |page|
  page_class = eval("#{page.capitalize}Page")
  fail "Still on the #{browser.current_page}" unless browser.current_page.class == page_class
end
