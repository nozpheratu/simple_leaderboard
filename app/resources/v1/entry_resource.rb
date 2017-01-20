module V1
  class EntryResource < JSONAPI::Resource
    attributes :score, :name, :email
  end
end
