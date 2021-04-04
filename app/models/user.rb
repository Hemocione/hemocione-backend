# frozen_string_literal: true

class User < ApplicationRecord
  devise :database_authenticatable, :confirmable, :registerable,
         :trackable, :rememberable, :recoverable,
         :jwt_authenticatable, jwt_revocation_strategy: JwtDenylist

  before_validation :setup_document_type, on: :create

  validates :password, presence: true, on: :create
  validates :document_id, :email, presence: true
  validates :email, :document_id, uniqueness: { case_sensitive: false }
  validates :email, format: { with: URI::MailTo::EMAIL_REGEXP }
  validates :document_type, inclusion: { in: %w[CPF CNPJ] }

  has_many :subscriptions

  private

  def setup_document_type
    return self.document_type = 'CPF' if CPF.valid?(document_id)

    self.document_type = 'CNPJ' if CNPJ.valid?(document_id)
  end
end
