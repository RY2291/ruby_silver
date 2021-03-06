# メソッド呼び出し時の引数
  # 引数の括弧の前にスペースが入ると、式をグループ化する括弧になる
  # メソッド名の後ろにスペースがあると、メソッド呼び出しの括弧が省略されたと解釈される
  def foo(n)
    n ** n
  end
  
  puts foo (2) * 2

# Stirng#%
  # フォーマットされた文字列を返す。フォーマットには、"%d"や%sなどの指示子を用いる。
  # レシーバにフォーマットに必要な指示子がない場合は、そのまま出力される。
  p "Hello" % 5

# keyメソッド
  # 返却ちは引数の値にあったキーを返す。対応するキーがない場合は、nilを返す。メソッドの引数には１つしか取れない。
  hash = {price: 100, order_code: 200, order_date: "2018/09/20", tax: 0.8}
  p hash.key(100)

  v1 = 1 - 1 == 0
  v2 = v1 || (raise RuntimeError)
  puts v2 && false

# timesメソッド
  # レシーバの回だけ繰り返す。プロックパラメータには0からレシーバから−１までの数値が渡されます。
  5.times {|n| p n }

  

# Hashの初期化
  # {}かHash.newで行う。

# 空のHashオブジェクトの生成
  # Hash({}), [], Hash.newのいずれかで行う。

# storeメソッド
  # hashにkeyとvalueを追加するもしくはvalueを変更する際に使用するhashのメソッドの１つ。
  h = {}
  h.store(:key, "value")
  p h

  m = {"a" => 20}
  m.store("a", 30)
  p m
