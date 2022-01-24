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

# 正規表現のオプション
  # //の後ろに装飾子を指定する。
  //i
  # 複数のオプションを指定する場合は、続けて記述。
  //ix
  # /iオプション
    # 大文字と小文字を区別せずにマッチを行う
  # /o
    # 式展開を一度だけ行う
  # /x
    # パターンの中の空白やコメントを無視する
  # /m
  # 複数行モード。メタ文字(.)が改行にもマッチする


# chrメソッド
  # レシーバを文字コードとして見た時に、引数で与えたエンコーディング encoding に対応する文字を返す。
  p 65.chr
  p 12354.chr(Encoding::UTF_8)
  # 引数無しで呼ばれた場合は、レシーバをUS-ASCII、ASCII-8BIT、デフォルト内部エンコーディングの順で優先的に解釈する。
  p 0x79.chr.encoding

# File.openメソッド
  # 引数でモードを指定していない場合、読み込みモード"r"でファイルを開く。

# Dir.getwdメソッド
  # カレントディレクトリの取得(Dir.pwd)