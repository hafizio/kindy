module RatingHelper
  def star_rating(n)
    content_tag(:ul, class: 'rating') do
      o = n.times.map { content_tag(:li, fa_icon('star'), class: 'rating__star') }.reduce(&:+) if n > 0
      e = (5 - n).times.map { content_tag(:li, fa_icon('star-o'), class: 'rating__star') }.reduce(&:+)
      "#{o}#{e}".html_safe
    end
  end
end
