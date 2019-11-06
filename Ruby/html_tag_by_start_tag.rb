# You are implementing your own HTML editor. 
# To make it more comfortable for developers you would like to add an auto-completion feature to it.
# Given the starting HTML tag, find the appropriate end tag which your editor should propose.

def htmlEndTagByStartTag(startTag)
    tag = /[^<]\w*/.match(startTag)
    "</#{tag}>"
end

puts(htmlEndTagByStartTag("<div id='my_area' class='data' title='This is a test for title on Div tag'>")) # Expected_tag: "</div>"
puts(htmlEndTagByStartTag("<button type='button' disabled>")) # Expected_tag: "</button>"
puts(htmlEndTagByStartTag("<li class='test'>")) # Expected_tag: "</li>"
puts(htmlEndTagByStartTag("<TABLE border='1'>")) # Expected_tag: "</TABLE>"
puts(htmlEndTagByStartTag("<html>")) # Expected_tag: "</html>"
puts(htmlEndTagByStartTag("<i>")) # Expected_tag: "</i>"