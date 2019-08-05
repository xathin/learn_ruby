class Book
  def initialize
    @title = ''
  end

  def title=(new_title)
    @title = titleize(new_title)
  end

  def title
    @title
  end

  private

    def titleize(phrase)
      non_cap_words = %w(a an and the in of)
      phrase.split(' ').map.with_index { |w,idx| idx == 0 ? w.capitalize : non_cap_words.include?(w) ? w : w.capitalize }.join(' ')
    end
end
