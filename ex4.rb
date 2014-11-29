def age born
  (Time.now.strftime('%Y%m%d').to_i - born.strftime('%Y%m%d').to_i) / 1_00_00
end

age Time.local(1993, 2, 24)     # => 21

age '1993-02-24'                # => 
# ~> -:2:in `age': undefined method `strftime' for "1993-02-24":String (NoMethodError)
# ~> 	from -:7:in `<main>'
