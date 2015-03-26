require File.expand_path('../../test', __FILE__)+'/minitest_helper'

class TestEnvisiaContacts < Minitest::Test
  def test_that_it_has_a_version_number
    refute_nil ::EnvisiaContacts::VERSION
  end

  def test_should_be_able_to_create__contact
    contact = EnvisiaContact.create(email: 'johnsmith@example.com', first_name: 'John', last_name: 'Smith')

    refute_nil contact
    refute_nil contact.id
  end
end
