$LOAD_PATH.unshift File.expand_path('../../lib', __FILE__)
require 'envisia_contacts'

require 'minitest/autorun'

EnvisiaContacts.configure do |c|
  c.api_key = '1234'
  c.url = "http://el.dev"
end