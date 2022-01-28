# Io.readメソッド
  # 引数に指定したファイルを指定の位置から指定バイト分読み込み文字または文字列として返す。
  # 第１引数で読み込むファイル名、第２引数で読み込む文字数、第３引数で読み込み開始位置を指定する。
   p IO.read("text.txt", 3, offset = 1)

# File.dirnameメソッド
  # 引数に指定した文字列の一番後ろの/より前の文字列を返す。/を含まない文字列の場合は"."を返す。
  p File.dirname("text.txt")
  p File.dirname("Silver/text.txt")

