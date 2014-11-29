def ex
  yield
rescue Exception
  "#{$!} (#{$!.class})"
end

ex{1.to_sym}  # => "undefined method `to_sym' for 1:Fixnum (NoMethodError)"
ex{1 + "1"}   # => "String can't be coerced into Fixnum (TypeError)"
