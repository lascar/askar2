class User < ActiveRecord::Base
  before_create do |doc|
    doc.api_key = doc.generate_api_key
  end

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  def generate_api_key
    loop do
      token = SecureRandom.base64.tr('+/=', 'Qrt')
      break token unless (User.exists? && User.exists?(api_key: token).any?)
    end
  end
end
