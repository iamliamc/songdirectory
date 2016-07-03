class User < ActiveRecord::Base
  has_secure_password
  
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  validates :email, presence: true, length: { maximum: 255 },
                    format: { with: VALID_EMAIL_REGEX },
                    uniqueness: { case_sensitive: false }
  
    def editor? 
        self.role == 'editor'
    end
    
    def admin?
        self.role == 'admin'
    end
  
end
