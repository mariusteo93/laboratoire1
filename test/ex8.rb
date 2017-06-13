formatter = "%{first} %{second} %{third} %{fourth}"

puts formatter
puts formatter % {first:1, second:2, third:3, fourth:4}
puts formatter %{second:2, third:3, fourth:4, first:1}

puts %q{
    what is 
happening?
  This thing follows how you write it.  
}