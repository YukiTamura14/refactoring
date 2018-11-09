class Blog < ApplicationRecord
  validates :title, presence: true, presence: {message: '入力してやー！登録できへんでー！'}
  validates :content, presence: true

  # def self.latest(number)
  #   order(created_at: :desc).limit(number)
  # end
  #上のメソッドをscopeで記述
  scope :latest, -> (number = 3){order(created_at: :desc).limit(number)}

  # def title_change
  #   update(title: 'changed')
  # end
end
