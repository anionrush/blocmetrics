class User < ActiveRecord::Base
	after_create :send_conf_email
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  private 

  def send_conf_email
  	SignUpMailer.conf_email(self).deliver_now
  end
end
