class Client < ApplicationRecord
  has_many :client_professions, dependent: :destroy
  has_many :professions, through: :client_professions
  has_many :administrative_processes
  has_many :labor_processes
end
