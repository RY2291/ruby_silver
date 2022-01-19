# 100点中68点

# Dirクラスのクラスメソッド
  # Dir.open
    # メソッドにブロックを取る事ができ、ブロックを出る場合は自動でファイルが閉じられる。
  # Dir.pwd / Dir.getwd
    # カレントディレクトリの取得
  # Dir.chdir
    # カレントディレクトリを指定されたディレクトリに変更する。カレントディレクトリの変更に成功すれば 0 を返す。指定がない場合は、環境変数HOMEやLOGDIRが設定されていれば、そのディレクトリに移動。
  # Dir.mkdir
    # ディレクトリの作成
  # Dir.rmdir / Dir.unlink / Dir.delete
    # 空のディレクトリの削除。ディレクトリがからでない場合は、削除に失敗する。

# popメソッド（破壊的）
  # レシーバの末尾より１要素を破壊的に取り出す
  s = ["one", "two", "three"]
  s.pop
  p s

# 複数の例外クラスを補足する方法
  # rescue節を捕捉したい例外クラスだけ記述する
    begin
    rescue KeyError
    rescue StopIteration
    end
  # rescue節で例外クラスをすべて記述する
    begin
    rescue KeyError, StopIteration
    end
  # rescue節で例外クラスをすべて記述し、配列で指定してsplat演算子(*)で展開する
    array = [:a, :b, :c]

    def alphabet(a, b, c)
      puts a
      puts b
      puts c
    end

# ハッシュの初期値
  # ハッシュに対して存在していないキーを指定していないとnilが返る。
    h = {}
    p h[:foo]

  # nil以外を返したい時は、Hash.newで作成し、引数に初期値を指定する。
    h = Hash.new("hello")
    p h[:foo]

  # hash.newとブロックを組み合わせることで、破壊的な変更をしても初期値は変わらない。ブロックの実行時に毎回新しい文字列が生成される。
    h = Hash.new{"bye"}
    a = h[:foo]
    b = h[:foo]
    p a.equal?(b)

    a.upcase!
    p a
    p b

# compactメソッド（非破壊）
  # レシーバからnilを取り除く。
    a = [1]
    a[5] = 10
    a.compact
    p a

# 配列の要素の取得方法
    # 配列に添字を２つある場合は、添字の位置と取得する長さを指定することができる。　配列[位置、取得する長さ]
    str = "abcdefghijk"
    p str[2,4]