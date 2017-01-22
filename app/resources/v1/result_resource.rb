module V1
  class ResultResource < JSONAPI::Resource
    attributes :score, :name, :email
    def self.default_sort
      [{field: 'score', direction: :asc}]
    end
  end
end
