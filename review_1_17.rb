# &:
  # メソッドの前に&:を付けると、Symbol#to_procが実行される（ブロックが渡される）。
  p [1,2,3,4,5].partition(&:odd?)
  p [1,2,3,4,5].partition { |value| value.odd? }

# partitionメソッド
  # 各要素を、ブロックの条件を満たす要素と満たさない要素に分割。各要素に対してブロックを評価して、その値が真であった要素の配列と、偽であった要素の配列の2つを配列に入れて返す。

# String#%
  # フォーマットされた文字列を返します。フォーマットには、"%d"や%sなどの指示子を用います。指示子が引数の値で置換されます
  p "Hello%d" % 5

# String#stripメソッド
  # 文字列の先頭と末尾の空白文字(\t\r\n\f\v)を取り除きます。
  str = "Liberty Fish   \r\n"
  str.strip!
  p str

# zipメソッド
  # 自身と引数に渡した配列の各要素からなる配列の配列を生成して返す。生成される配列の要素数は self の要素数と同じ。
  p [1,2,3].zip([4,5,6], [7,8,9])

# Date#to_s
  # 2015-01-05形式で日付を出力します。
  require "date"
  p Date.today.strftime("%Y-%m-%d")

# each_cons(cnt)メソッド
  # レシーバからcnt個ずつ要素を取り出しブロックに渡す。ブロック引数には配列で渡され、取り出す要素は、[要素1, 要素2, 要素3], [要素2, 要素3, 要素4] ...と1つづ前に進む。
  p (1..10).each_cons(3) {|arr| p arr }

# valuesメソッド
  # 引数を取らず、返却値はレシーバーの値を集めた配列。
  hash = {price: 100, order_code: 200, order_date: "2018/09/20", tax: 0.8}
  p hash.values

# values_atメソッド
  # 引数には可変長引数を取り、返却値は引数に指定したキーの値を集めた配列です
  p hash.values_at(:price, :tax)

# Hash#new(default)
  # 空のハッシュを作成して、引数が指定された場合は、valueに引数が入る
  h = Hash.new("default value")
  h[:a]
  h[:b] = 100
  p h

# chopメソッド（非破壊）
  # 末尾の文字を取り除く。ただし、文字列の末尾が"\r\n"であれば、2文字とも取り除く。
  str = "Liberty Fish   \r\n"
  str.chop
  p str

# chompメソッド
  # 末尾から改行コードを取り除く。
  p str.chomp

# flattenメソッド（非破壊）
  # レシーバを再帰的に平坦化した配列を生成して返す
  a = [1, [2, 3, [4], 5]]
  p a.flatten

# フォーマット文字列
  # %F	日付(%Y-%m-%d)

