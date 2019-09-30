class ClientProfession < ApplicationRecord
  belongs_to :client
  belongs_to :profession
end
