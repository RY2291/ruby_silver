# Dirクラス
  # ディレクトリの移動や作成、ディレクトリ内のファイル一覧の取得などディレクトリを扱うクラス

# Dir.openメソッド
  # ディレクトリを開く。返り値は、Dirクラスのオブジェクトで、eachメソッドでファイルの一覧を取得できる。
  dir = Dir.open("/Users/r/Desktop/ruby_silver/test.rb")
  
# ディレクトリが自動的に閉じる
  # Dir.openはブロックを取る事ができ、ブロックを出る時に自動で閉じられる。
  Dir.open("/Users/r/Desktop/ruby_silver/test.rb"){|dir| puts dir.path}

# カレントディレクトリの取得
  Dir.pwd
  Dir.getwd

Dir.chdir
  # ファイルの指定があれば、カレントディレクトリを変更。カレントディレクトリの変更に成功すれば 0 を返す。
    Dir.chdir("/usr/local")

  # 指定がない場合は、環境変数HOMEやLOGDIRが設定されていれば、そのディレクトリに移動。

  # ブロックが与えられている場合は、そのブロック内でのみディレクトリを移動し、ブロックを出る時に元に戻る。移動に成功すれば、０が返る。
  p Dir.pwd #=> "/home/rubytips86"
  FileUtils.chdir('/'){
    p Dir.pwd #=> "/"
  }
  p Dir.pwd #=> "/home/rubytips86"

