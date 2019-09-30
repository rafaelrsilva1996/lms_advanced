class Profession < ApplicationRecord
  has_many :client_professions, dependent: :destroy
  has_many :clients, through: :client_professions
end
