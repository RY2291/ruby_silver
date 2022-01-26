# splitメソッド
  # レシーバの文字列を引数で指定さたもので文字列を分割
  str = "1;2;3;4"
  p str.split(";")

# each_sliceメソッド
  # レシーバから引数で指定された数で配列を区切りブロックに渡す。
  arr = (1..30).to_a
  container = []
  arr.each_slice(7) do |i|
    container << i
  end
  p container.length

# each_consメソッド
  # レシーバから引数の個数ずつ要素を取り出してブロックに配列で渡される。
  p (1..10).each_cons(3) {|arr| p arr }

# any?メソッド
  # ブロックの戻り値がtrueになると繰り返しをその時点で止める。


# appendメソッド
  # Arrayクラスのメソッド

# to_sメソッド
  # 2022-01-26の形式で表される。（"%Y-%m-%d") == %F

# Mathモジュール
  # 定数PIにMathモジュールに定義されている。使用する際は、includeするか、Math::PIと記述する。

# オーバーライドできない演算子
  # = ?: .. ... not && and || or ::

# io.seek(offset, whence = IO::SEEK_SET)
  # ファイルポインタをwhenceの位置からoffsetだけ移動させる。offset 位置への移動が成功すれば 0 を返します。
  # IO::SEEK_SET: ファイルの先頭から (デフォルト)
  # IO::SEEK_CUR: 現在のファイルポインタから
  # IO::SEEK_END: ファイルの末尾から