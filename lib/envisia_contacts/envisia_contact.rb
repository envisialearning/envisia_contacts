class EnvisiaContact
  include Her::Model
  collection_path "/contacts"

  parse_root_in_json :contact
  include_root_in_json :contact

  use_api EnvisiaContacts.api
end