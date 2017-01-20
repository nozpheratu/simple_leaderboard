class Result < ApplicationRecord
  validates_presence_of :score, :email, :name
end
