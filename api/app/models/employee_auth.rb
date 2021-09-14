class EmployeeAuth < ApplicationRecord
  include Devise::JWT::RevocationStrategies::JTIMatcher

  devise :database_authenticatable,
          :jwt_authenticatable,
          :registerable,
          jwt_revocation_strategy: self

  has_one :employee
end