# popメソッド
  # レシーバの末尾より１要素を破壊的に取り出す
  s = ["one", "two", "three"]
  p s.pop

# unshiftメソッド
  # レシーバの先頭へ引数の値を破壊的に追加する。引数が指定されていない場合は何もされない。
  s = ["one", "two", "three"]
  p s.unshift("zero")


# メソッドと変数の探索順位は変数が先。
  hoge = 0
  def hoge
    x = 0
    5.times do |i|
      x += 1
    end
    x
  end
  puts hoge


# IO.readメソッド
  # 引数に指定したファイルを指定の位置から指定バイト分読み込み、文字または文字列として返す。
  # 第１引数は読み込むファイル、第２引数は読み込む文字数、第３引数は読み込み開始位置を指定している。

# stripメソッド（非破壊的）
  # 文字列の先頭と末尾の空白文字(\t\r\n\f\v)を取り除く。
  str = "Liberty Fish   \r\n"
  str.strip!
  p str


# Hashオブジェクト
  # Hash[]で空のHashオブジェクトを作成する。
  # Hashの初期化は{}またはHash.newで行う。

# invertメソッド
  # キーと値を入れ替え、入れ替えた結果キーが重複していた場合は、後に定義された方が優先される。
  p ({a: 100, b: 100}).invert

# zipメソッド
  # レシーバと引数に渡した配列の各要素からなる配列の配列を生成して返す。生成される配列の要素数はレシーバの要素数と同じ。
  arr = [1,2].zip([3,4])
  p arr 

# Time#+メソッド
  # レシーバに秒単位で加算される。
  puts Time.now + 3600

# マジックコメント
  # ソースファイルの文字コードを指定するためのもの。デフォルトでUTH-8が入ってるため、文字コードを指定する必要はない。
  # 大文字、小文字の区別はない
  # 正規表現にマッチする書き方 => /coding[:=]\s*[\w.-]+/
  # --------↓マジックコメントの書き方---------
    # encoding: ecu-jp
    # coding: ecu-jp
    # -*- coding: ecu-jp -*-
    # vim:set fileencoding=ecu-jp


# 例外クラスの継承関係
  # 全ての例外クラスはExceptionクラスを継承している。ExceptionクラスにはStandardErrorクラスとそれ以外の例外クラスがある。
  # StandardError => RuntimeError, NameError, TyepeError, ArgumentError, その他の例外クラス

  # resuce節に何もクラスを指定しなかった場合は、StandardErrorとそのサブクラスが補足される。
  

# オーバーライドできない演算子
  # = ?: .. ... not && and || or :: +=


# 特異メソッド
  # "オブジェクト.メソッド名"の形で特定のオブジェクトの紐づいているもの。
  # 特異メソッドはクラスを拡張して定義したメソッドよりも優先度が高い。