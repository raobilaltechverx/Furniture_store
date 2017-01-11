class Contact < ActiveRecord::Base
  include ActiveModel::Model
  include ActiveModel::Conversion
  include ActiveModel::Validations

  attr_accessor :name, :email, :description

  validates :name,
    presence: true

  validates :email,
    presence: true

  validates :description,
    presence: true
end
