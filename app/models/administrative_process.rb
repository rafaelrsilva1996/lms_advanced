class AdministrativeProcess < ApplicationRecord
  has_many :task_administratives
  belongs_to :clients
end
