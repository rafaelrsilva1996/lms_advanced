class Client < ApplicationRecord

  has_many :client_professions, dependent: :destroy
  has_many :professions, through: :client_professions

end
