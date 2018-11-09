module CommonModule
  extend ActiveSupport::Concern

  included do
    scope :latest, -> (number = 3){order(created_at: :desc).limit(number)}
    
    def self.test_puts
     puts "コンソールにテスト文章が表示されるよ！"
    end
  end
end
