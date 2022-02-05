# Hash#mergeメソッド（非破壊メソッド）
  # レシーバと引数のハッシュをマージして、新しいHashを返す。
  h1 = { "a" => 100, "b" => 200 }
  h2 = { "b" => 246, "c" => 300 }
  p h1.merge(h2)

# with_indexメソッド
  # 要素にインデックスを添えて繰り返す。インテックスは引数の数から開始する。
  (10..15).to_a.map.with_index(1) do |elem, i|
    puts i
  end

# unless
  # elseは使用できるが、elsifは使用できない。
 

  str = "1;2:3;4"
p str.split(";|:")


a=["松","竹","梅"]
b=["松","たか","子"]


[a,b].transpose.each do |x,y|#選択肢3
  p [x,y]
end

p /^[Rr]uby$/ =~ "ruby" && "Ruby"
p /^Ruby|ruby$/ =~ "ruby" && "Ruby"

str = "abcdefgh"
p str[-4...7]

