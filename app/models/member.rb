# frozen_string_literal: true
class Member < ApplicationRecord
  self.table_name = 'members'
  self.primary_key = 'id'

  validates :name,
            presence: true,
            uniqueness: false,
            allow_blank: false,
            length: { minimum: 3, maximum: 40 }
 
  validates :email,
            presence: true,
            uniqueness: true,
            allow_blank: false,
            length: { minimum: 3, maximum: 245 }
end
