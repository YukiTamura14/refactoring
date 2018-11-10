class BlogCallbacks
  def before_create(blog)
    blog.title = 'タイトルなし' if blog.title.blank?
    blog.content = '内容なし' if blog.content.blank?
  end
end
