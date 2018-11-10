class Blog < ApplicationRecord
  # validates :title, presence: true, presence: {message: '入力してやー！登録できへんでー！'}
  # validates :content, presence: true

  # def self.latest(number)
  #   order(created_at: :desc).limit(number)
  # end

  #上のメソッドをscopeで記述
  # scope :latest, -> (number = 3){order(created_at: :desc).limit(number)}

  #共通化
  include CommonModule
  # include ActiveModel::Validations
  # validates_with BlogValidator
  # test_puts
  before_create BlogCallbacks.new
  #callbackの切り出し
  # before_create :default_title
  # before_create :default_content
  #
  # private
  #
  # def default_title
  #   self.title = 'タイトルなし' if self.title.blank?
  # end
  #
  # def default_content
  #   self.content = '内容なし' if self.content.blank?
  # end

  # validate :title_more_write
  # validate :content_more_write
  #
  # private
  #
  # def title_more_write
  #   if title.length < 3
  #     errors.add(:title, ": 3文字以上書きましょう")
  #   end
  # end
  #
  # def content_more_write
  #   if content.length < 20
  #     errors.add(:content, ": 20文字以上書きましょう")
  #   end
  # end

  # def title_change
  #   update(title: 'changed')
  # end
end
