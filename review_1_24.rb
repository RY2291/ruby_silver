# *(splat演算子)
  # ハッシュを展開する事ができ、ネストされた配列で表現が出来る。
  hash = {a: 100, b: 200}
  def splat_hash(a, b)
    p a
    p b
  end

  splat_hash(*hash)

# each_consメソッド
  # レシーバから引数の個数ずつ要素を取り出してブロックに配列で渡される。
  p (1..10).each_cons(3) {|arr| p arr }

# Date#to_s
  # 2022-01-24の形式で日付を出力している。（"%Y-%m-%d"）

  arr = [1,2].product([3,4]).transpose
  p arr

# メソッド名と引数の間に空白がある場合
  # foo((2) * 2)が呼ばれたと解釈される。
  def foo(n)
    n ** n
  end
  puts foo (2) * 2

# IO#rewind
  # ファイルポインターを先頭に移動させる。