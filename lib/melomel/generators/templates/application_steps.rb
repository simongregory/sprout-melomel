
When /^I click the "([^"]*)" button$/ do |label|
  button = Melomel.find('spark.components.Button', :label => label)
  button.should_not be_nil
  Melomel.click(button)
end
