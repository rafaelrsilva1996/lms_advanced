class LaborProcess < ApplicationRecord
  has_many :task_labors
  belongs_to :clients
end
