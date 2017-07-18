#--------------SuperSay--------------
class SuperSay
  def say(text)
    prepare_text(text)
  end

  def prepare_text(text)
    do_something_with(text)
  end
end
#---------------HtmlSay--------------
class HtmlSay < SuperSay
  def say(text)
    "<p>" + prepare_text(text) + "</p>"
  end

  def say(text)
    prepare_text = (text)
  end

  def prepare_text(text)
text = super
  end
end
#--------------CssSay--------------
class CssSay < HtmlSay
  def say(text)
    "<p>" + prepare_text(super) + "</p>"
  end

  def prepare_text(text)
    do_something_with = (text)
  end

  def do_something_with(text)
p text
  end
end

doc= CssSay.new
style= HtmlSay.new

#test
p doc.say("You've refactored") == "<p>You've refactored</p>"
p style.say("I like to code") == "I like to code"
