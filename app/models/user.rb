# 制約を与えてユーザーモデルを管理しましょう。
class User < ApplicationRecord
    
    before_save { self.email = email.downcase }
    
    
    
    validates :name,presence:true, length:{ maximum: 20 } 
    
    # 本アプリケーションでのメールアドレスの正規表現
    VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i  
    validates :email,presence:true, length:{ maximum: 20 },
    # メールアドレスとして有効かどうかを判定する
               format: { with: VALID_EMAIL_REGEX },
            #   一意性の検証
                uniqueness: true 
                
    has_secure_password
    validates :password, presence: true, length: { minimum: 6 }
end
