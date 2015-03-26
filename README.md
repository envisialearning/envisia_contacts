# EnvisiaContacts

API wrapper for Envisia Contacts


## Installation

Add this line to your application's Gemfile:

```ruby
gem 'envisia_contacts'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install envisia_contacts

## Usage

Create a file in your `config/initializers` folder named `envisia_contacts.rb` (or whichever name you prefer)

    EnvisiaContacts.configure do |c|
      c.api_key = 'api_key_here'
    end

ActiveRecord methods available
    
    # Get contaact
    contact = EnvisiaContact.find(contact_id)

    # Create a contact
    contact = EnvisiaContact.create( email: 'someemail@example.com', first_name: 'Some', last_name: 'Example' )