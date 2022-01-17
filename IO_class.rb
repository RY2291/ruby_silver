# IOクラス
  # fileクラスのスーパークラスでもあり、基本的な入出力機能を備えたクラス。
  # STDOUT（標準出力）、STDIN（標準入力）、STDERR（標準エラー出力）はIOクラスのオブジェクト


# コマンドの出力結果を得る
  # openメソッドでファイル名の代わりに、”|”に続いてコマンドを指定すると、コマンドの出力結果を得る事ができます。
  io = open("| ls -la")

# コマンドの出力結果を表示する
  # readメソッドでファイルの内容を読み込む。エンコーディングが指定されていないと、入力のエンコーディングは
  # Encoding.default_externalで指定されているものになる。


# パイプを開く
  # IO.popenメソッドを使うと、コマンドをサブプロセスとして実行し、そのプロセスと入出力のパイプを開くことができる。
  IO.open("grep -i ruby", "r+") do |io|
    io.write("this is ruby program")
    io.close_write
    puts io.read
  end
  # => nil

# IOからの入力
  # IO.readメソッド
    # IOから内容を読み込む。長さが指定されていれば、その長さだけ読み込む。
    IO.read("README.md", 5)

  # IO.foreachメソッド
    # 指定されたファイルを開き、各行にブロックを渡して実行する。IOオブジェクトでは、eachメソッドやeach_linesメソッドも同様に各行にブロックを渡して実行する。
    IO.foreach("INSTALL"){|line| puts line}

  # readlinesメソッド
    # ファイルを全て読み込んで、その各行の配列を返します。
    open("INSTALL").readlines
      # => [~~~~]

  # readline, getメソッド
    # IOオブジェクトから１行ずつ読み込む。
    io = open("INSTALL")

  # each_byteメソッド
    # 与えられたブロックにIOオブジェクトから１バイトずつ整数として読み込んで渡していく。
    io = open("INSTALL")
    io.each_byte{|i| puts i}
      # => 84
      # => 104

  # getbyte, readbyteメソッド
    # IOオブジェクトから１バイト読み込んで整数として返す。
    io = open("INSTALL")
    io.getbyte
      # => 84
    io.getbyte
      #  => 104

  # each_charメソッド
    # 与えられたブロックにIOオブジェクトから１文字ずつ読み込んで渡す。
    io = open("INSTALL")
    io.each_char{ |c| puts c}
      # => t
      # => h

  # getc, readcharメソッド
    # その文字に対応する文字列を返す
    io = open("INSTALL")
    io.getc
      # => "t"

# IOへの出力
  # writeメソッド
    # IOに対して引数の文字列を出力する。引数が文字列以外の場合は、to_sで文字列化して出力する。
    # 出力が成功すると、出力した文字列のバイト数を返す
    STDOUT.write("there is new program")
    there is new program => 24

  # putsメソッド
    # IOに対して複数のオブジェクトを出力する。引数が文字列でない場合、to_aryで配列化し、各要素をto_sにより文字列化して出力する
    STDOUT.puts("abcdefg", "hijklmn")
    abcdefg
    hijklmn

  # putscメソッド
    # IOに引数の文字を出力する。引数が整数の場合、その最下位バイトを文字コードとする文字、文字列の場合は先頭の１文字を出力する。
    

