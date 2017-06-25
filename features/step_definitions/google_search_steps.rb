Given(/^I am on google UK$/) do
  #visit method goes to google.co.uk the specified Capybara.app_host in env.rb
  #visit '/'
  @search_page = SearchPage.new
  @search_page.load
end

And(/^I search for "([^"]*)"$/) do |arg|
 @search_page.google_search arg
end

Then(/^I should be able to access the cucumber wiki page$/) do
  #use xpath to find the link we require and click it
  find(:xpath, ".//*[@id='rso']/div/div/div[1]/div/div/h3/a").click
  sleep 3
  #test the h1 title is equal to Cucumber
  find('#firstHeading').text == "Cucumber"
end


