# Ruby初級者向けレッスン 51回
## 例外

### 演習問題1

いろいろな例外を発生させてみよう

```ruby
def ex
  yield
rescue
  "#{$!} (#{$!.class})"
end

ex{1.to_sym}  # => "undefined method `to_sym' for 1:Fixnum (NoMethodError)"
ex{1 + "1"}   # => "String can't be coerced into Fixnum (TypeError)"
```

### 演習問題2

いろいろな例外を発生させてみよう

- KeyError を捕捉しよう
- KeyError と StopIteration を捕捉しよう

### 演習問題3

デバッグしてみよう

```ruby
[0..9].map{|i| i * 2}
```

- どんな例外が発生するか
- 本当は何をしたかったのか
- 修正してみよう

### 演習問題4

デバッグしてみよう

```ruby
def age born
  (Time.now.strftime('%Y%m%d').to_i - born.strftime('%Y%m%d').to_i) / 1_00_00
end

age Time.local(1993, 2, 24) # => 21

age '1993-02-24'

# ~> -:2:in `age': undefined method `strftime' for "1993-02-24":String (NoMethodError)
# ~> 	from -:7:in `<main>'
```