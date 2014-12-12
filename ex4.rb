# デバッグしてみよう

# なるべく、なんとかしてみる
require 'date'

def age born
  born = Date.parse(born.to_s) unless born.respond_to? :strftime
  (Time.now.strftime('%Y%m%d').to_i - born.strftime('%Y%m%d').to_i) / 1_00_00
end

age Time.local(1993, 2, 24)     # => 21

age '1993-02-24'                # => 21
age '1993/2/24'                 # => 21
age '93/2/24'                   # => 21
age 19930224                    # => 21
age 1993224                     # => 21
age 19930230 rescue $!.class    # => ArgumentError
