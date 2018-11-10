class ContentCleanupService
  def initialize(blog)
    @blog = blog
    @content = blog.content
  end

  def call
    full_to_half
    blank_delete
  end

  private
    attr_reader :blog, :content

    def full_to_half
      @content = @content.tr('０-９ａ-ｚＡ-Ｚ', '0-9a-zA-Z').gsub!(/　/, ' ')
      @blog.update(content: @content)
    end

    def blank_delete
      @content = @content.strip
      @blog.update(content: @content)
    end
end
