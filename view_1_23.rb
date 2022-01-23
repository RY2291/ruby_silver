# timesメソッド

# each_sliceメソッド
  # レシーバから引数の個数分を区切りブッロクに返している。
  arr = (1..30).to_a
  container = []
  arr.each_slice(4) do |i|
    p i
    container << i
  end
  p container.length

# nextメソッド
  # レシーバの次の整数を返す。
  p 3.next

# <=>演算子によって比較が行われる際の並び方
  # (要素1 <=> 要素2)の結果が-1なら要素1が順番として先に並び、0ならそのまま、1なら要素2が先に並びます。
  a = [3,4,7,5,1,2,6]
  p a.sort

# with_indexメソッド
  # 要素にインデックスを添えてを繰り返す。インデックスは引数で指定された値から開始します。

  (10..15).to_a.map.with_index(1) do |elem, i|
    puts i
  end