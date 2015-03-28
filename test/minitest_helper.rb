$LOAD_PATH.unshift File.expand_path('../../lib', __FILE__)
require 'envisia_contacts'

require 'minitest/autorun'
require 'yaml'


CONFIG = YAML.load_file('application.yml')

EnvisiaContacts.configure do |c|
  c.api_key = CONFIG['API_KEY']
  c.url = CONFIG['SITE_URL']
end