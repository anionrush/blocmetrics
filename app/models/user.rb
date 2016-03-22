class User < ActiveRecord::Base
	after_create :send_conf_email
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
<<<<<<< HEAD
         :recoverable, :rememberable, :trackable, :validatable

  private 

  def send_conf_email
  	SignUpMailer.conf_email(self).deliver_now
  end
=======
         :recoverable, :rememberable, :trackable, :validatable,
         :confirmable
>>>>>>> 2943ccb7ef2c3d326467fc4d728781d21523847f
end
