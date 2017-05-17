class User < ApplicationRecord
   validates :name {self.name = name.split, name.capitalize, array.joine if name.present?}
   before_save { self.email = email.downcase if email.present? }
   before_save :format
 
   validates :name, length: { minimum: 1, maximum: 100 }, presence: true
 
  validates :password, presence: true, length: { minimum: 6 }, if: "password_digest.nil?"
  validates :password, length: { minimum: 6 }, allow_blank: true
 
  validates :email,
             presence: true,
             uniqueness: { case_sensitive: false },
             length: { minimum: 3, maximum: 254 }

 
   has_secure_password
 
   def format 
    if name 
        your_name = []
        name.split each do |name_part|
            your_name.capitalize
        end
        self.name = name_array.join (" " )
    end
  end
end
