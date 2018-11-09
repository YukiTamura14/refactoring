class BlogValidator < ActiveModel::Validator
  def validate(record)
    if record.title.length < 3
      record.errors.add(:title, ": 3文字以上書きましょう")
    end

    if record.content.length < 20
      record.errors.add(:content, ": 20文字以上書きましょう")
    end
  end
end
