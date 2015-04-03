# EnvisiaContacts

API wrapper for Envisia Contacts


## Installation

Add this line to your application's Gemfile:

```ruby
gem 'envisia_contacts', '~> 0.1.0.beta', git: "https://github.com/envisialearning/envisia_contacts.git"
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install envisia_contacts --pre

## Usage

Create a file in your `config/initializers` folder named `envisia_contacts.rb` (or whichever name you prefer)

    EnvisiaContacts.configure do |c|
      c.api_key = 'api_key_here'
      c.url = "api_url_here"
    end

ActiveRecord methods available
    
    # Create
    contact = EnvisiaContact.create( email: 'someemail@example.com', first_name: 'Some', last_name: 'Example' )

    # Get
    contact = EnvisiaContact.find(contact_id)

    # Fetch via email
    contact = EnvisiaContact.find_by_email('someone@example.com')

    # Update
    contact.email = 'newemail@somewhere.com'
    contact.save

    # Delete
    contact.destroy

    # contact_added_to_cms_project
    contact = EnvisiaContact.contact_added_to_cms_project(guid, params)





    

    
