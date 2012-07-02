# coding: utf-8
class User
  include Mongoid::Document
  # Include default devise modules. Others available are:
  # :token_authenticatable, :encryptable, :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable

  ## Database authenticatable
  field :email, :default => ""
  field :encrypted_password, :default => ""

  def avatar_small_url
    "/assets/avatar/normal.gif"
  end

  def name
    self.email.split("@").first
  end

  def to_param
    self.id.to_s
  end
end