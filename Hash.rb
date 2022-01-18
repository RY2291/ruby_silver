# fetechメソッド
  # 与えられたキーに対する値を返す。キーが存在しない場合は、２番目の引数が与えられていればその値を、ブロックが与えられていればそのブロックが評価した値を返す。
  a = { 1 => "a", 2 => "b", 3 => "c", 4 => "d" }
  p a.fetch(5, "none")
  p a.fetch(2)

# selectメソッド
  # キーと値の組み合わせについてブロックを評価して、結果が真となる組み合わせのみを含むハッシュを返す。
  p a.select{ |key, value| key % 2 == 0}

# find_allメソッド
  # キーと値の組み合わせについてブロックを評価するが、返り値はハッシュでなく、キーと値の配列になる。
  p a.find_all{ |key, value| key % 2 == 0}

# deleteメソッド(破壊的メソッド)
  # 指定されたキーに対応する値を取り除く。キーが存在していれば対応する値、存在しない場合は、ブロックの評価結果を返す。
  fruit = {1 => "apple", 2 => "orange", 3 => "melon", 4 => "banana"}
  p fruit.delete(3)

# rejectメソッド（非破壊メソッド）
  # ブロックが評価した結果が真になる値を取り除いたハッシュを生成して返す。元のオブジェクトは変更されない
  p fruit.reject{ |key, value| value == "apple"}
  p fruit

# delete_if, reject!（破壊メソッド）
  # ブロックを評価した結果が真になる値を取り除く。
  p fruit.delete_if{ |key, value| value == "apple"}