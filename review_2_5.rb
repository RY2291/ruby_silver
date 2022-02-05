# each_pair
  # 構造体のメンバ名(Symbol)と値の組を引数にブロックを繰り返し実行する。
  Foo = Struct.new(:foo, :bar)
  Foo.new('FOO', 'BAR').each_pair {|m, v| p [m,v]}

# %w
  # 要素が文字列の配列。文字列の区切りは空白文字の並び。
  p %w(Apple Banana Orange)