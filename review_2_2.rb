# zipメソッド
  # レシーバと引数に渡した配列の各要素からなる配列の配列を生成して返す。生成される配列の数はレシーバの要素数と同じ
  arr = [1,2].zip([3,4])
  p arr

  p [1,2,3].zip([4,5,6], [7,8,9])

# Hashクラスのupdateメソッド
  # 破壊メソッド。
  hash = {"apple" => "grate", "banana" => "ole", "orange" => "juice"}
  hash.update({"grape" => "juice"})
  p hash

# 定数はメソッド内で定義する事ができない

# appendメソッド
  # appendメソッドはArrayクラスのメソッド

# 可変長引数
  # 可変長引数は２つ定義する事ができない

# Hash#delete
  # keyに対応する要素を取り除き、取り除いた値を返す。
  h = {:ab => "some" , :cd => "all"}
  p h.delete(:ab)

# chompメソッド
  # レシーバに指定した文字列オブジェクトの末尾から"\r", “\r\n”, “\n”を改行コードとみなして取り除く。
  p ["foo\r\n", "bar\n", "baz\n\r"].map {|i| i.chomp }

# 正規表現の[]と^
  # []は文字クラス。[]の中で^を入れると文字クラスに列挙した文字以外にマッチする。
  p /[^P|p]rogramming/ =~　“Arogramming”