# 破壊的メソッド
  # (Array)pop
  # (Array)shift
  # (Array)unshift
  # (Array)push
  # (Hash)update
  # (Hash)delete


# フォーマット文字列
  # %x => 日付(%m/%d/%y)
  # %F	日付(%Y-%m-%d)

# String#indexメソッド
  # 文字列や配列の中に指定した文字列が含まれていた場合、その文字列の開始位置を整数の値で返す。
  # 第１引数は、検索したい文字列、第2引数は検索を開始する位置
  str = "milkman is coming back!! milkman is not superman."
  puts str.index("man")
  puts str.index("man",10)


# Enumerable#any?
  # ブロックの戻り値がtrueになると繰り返し、その時点で止める。

# invert
  # キーと値を入れ替える。入れ替えの結果キーが重複した場合は、後に定義された方が優先される。
  p ({a: 100, b: 100}).invert

# String#scanメソッド
  # レシーバに対して引数で指定したパターンにマッチした部分文字列を配列で返す。
  str = "aaabbcccddd"
  p str.scan("c")

# step(limit, step)メソッド
  # レシーバからstepずつ加算し、limitまでをブロックに渡す。
  def hoge
    x = 0
    1.step(5,1) do |i|
      x += 1
    end
    puts x
  end
  hoge

# Date#to_s
  # 2015-01-05形式で日付を出力します => %F


# 例外処理
  # 引数は省略可能で例外クラスの指定を省略した場合はRuntimeErrorが発生します。