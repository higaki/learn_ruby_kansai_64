# いろいろな例外を発生させてみよう
# - KeyError を捕捉しよう
# - KeyError と StopIteration を捕捉しよう

def ex
  yield
rescue IndexError => ex
  # 親クラスで、ひとまとめに rescue
  ex.class
end

# 例外が発生しなければブロックの評価結果が返る
ex{1 + 1}                       # => 2

# KeyError の捕捉
ex{{}.fetch(:ex)}               # => KeyError

# StopIteration の捕捉
ex{[].each.next}                # => StopIteration

# 捕捉できない例外
ex{1 + "1"}

# ~> -:22:in `+': String can't be coerced into Fixnum (TypeError)
# ~> 	from -:22:in `block in <main>'
# ~> 	from -:6:in `ex'
# ~> 	from -:22:in `<main>'
