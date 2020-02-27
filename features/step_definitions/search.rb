# frozen_string_literal: true

require 'selenium-cucumber'
require 'selenium-webdriver'

Given('I enter a real {string} name in the searchbox') do |clothes|
  enter_text(:name, clothes, 'search_query')
end

When('I click the magnifying glass') do
  click(:name, 'submit_search')
end

And('The tittle of results have the word {string}') do |tittle|
  check_element_partial_text(:class, tittle, 'product-container', true)
  checksearchresults(:class, tittle, 'product-name')
end

Then('Appears the search results of {string}') do |clothes|
  wait_for_element_to_display(:id, 'center_column', 10)
  check_element_partial_text(:id, clothes, 'center_column', true)
  check_element_text(:xpath, '0 results have been found.', "//span[contains(@class,'heading-counter')]", false)
end