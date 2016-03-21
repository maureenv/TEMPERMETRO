module PostsHelper
  def post_color(post)
    (if post.color == "red"
  "<div class = 'postgradient_red'>"
  elsif post.color =="orange"
    "<div class = 'postgradient_orange'>"
  elsif post.color =="yellow"
    "<div class = 'postgradient_yellow'>"
  elsif post.color =="green"
    "<div class = 'postgradient_green'>"
  elsif post.color =="blue"
    "<div class = 'postgradient_blue'>"
  elsif post.color =="silver"
    "<div class = 'postgradient_silver'>"
  end).html_safe

  end


end
