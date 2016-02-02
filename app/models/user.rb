class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  apply_simple_captcha
  # Setup accessible (or protected) attributes for your model
  attr_accessible :email, :password, :password_confirmation, :remember_me,
                  :captcha, :captcha_key
  
  validate :check_captcha, on: :create

  def check_captcha
    unless is_captcha_valid?
      #Remove wrong message : Captcha translation missing: en.simple_captcha.message.user
      errors[:captcha].try(:pop)
      errors.add :captcha, "does not matched"
    end
  end
end
