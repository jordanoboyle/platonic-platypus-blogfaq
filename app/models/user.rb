class User < ApplicationRecord
  has_secure_password
  
  validates :email, presence: true, uniqueness: true, on: :create
  validates :password, presence: true, length: {minimum: 8}, on: :create

  def update_with_password(params)
    if params[:password].blank?
      params.delete(:password)
      params.delete(:password_confirmation)
    end
    update(params)
  end

  
end
