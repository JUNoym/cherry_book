module Loggable
  def log(text)
    puts "[LOGです]→ #{text}"
  end
end

s = "abc"
s.extend(Loggable)
s.log("Hello")



