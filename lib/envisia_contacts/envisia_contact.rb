class EnvisiaContact
  include Her::Model

  collection_path "/api/v1/contacts"

  parse_root_in_json :contact
  include_root_in_json :contact

  use_api EnvisiaContacts.api

  custom_get :by_email

  class << self
    def find_by_email(email)
      EnvisiaContact.by_email(email: email)    
    end

    def contact_added_to_cms_project(guid, params = {})
      post "/api/v1/contacts/#{guid}/contact_added_to_cms_project", params
    end

    def update_contact_lifetime_value(guid, params = {})
      post "/api/v1/contacts/#{guid}/update_contact_lifetime_value", params
    end
  end
end