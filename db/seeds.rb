user = User.create(
  name: "guest",
  email: "guest@example.com",
  password: "qwerty"
)

user.blogs.create(
  name: "map",
  content: "mapメソッドは、配列の要素の数だけブロック内で処理を繰り返して、新しい配列を返します。",
  ruby_rails: "Ruby",
  code1: "mapメソッドの基本構文-->
  配列.map { |変数| 実行する処理 }\r\n
  # 実行する処理が複数行に渡る場合
  配列.map do |変数|
  実行する処理
  end",
  code2: "irb(main):001:0> numbers = [10, 20, 30, 40]
  => [10, 20, 30, 40]
  irb(main):002:0> new_numbers = numbers.map { |n| n * 2 }
  => [20, 40, 60, 80]
  irb(main):003:0> new_numbers
  => [20, 40, 60, 80]",
  code3: "irb(main):001:0> numbers = [10, 20, 30, 40]
  => [10, 20, 30, 40]
  irb(main):002:1* new_numbers = numbers.map do |n|
  irb(main):003:1*   n * 2
  irb(main):004:0> end
  => [20, 40, 60, 80]
  irb(main):005:0> new_numbers
  => [20, 40, 60, 80]"
)

user.blogs.create(
  name: "puts",
  content: "putsメソッドは、オブジェクトをコンソールに改行を加えた状態で出力するメソッドです。",
  ruby_rails: "Ruby",
  code2: "irb(main):001:0> puts \"こんにちは\"
  こんにちは
  => nil                                           
  irb(main):002:0> puts \"こんばんは\"
  こんばんは
  => nil                                           
  irb(main):003:0> puts \"東大生です\"
  東大生です
  => nil" 
)

user.blogs.create(
  name: "sort",
  content: "sortメソッドとは、配列やハッシュの中身をある一定の規則で並び替えて、新しい配列を返すメソッドのことです。",
  ruby_rails: "Ruby",
  code1: "配列.sort
  ハッシュ.sort",
  code2: "irb(main):001:0> [3, 5, 1, 2, 4].sort
  => [1, 2, 3, 4, 5]\r\n
  irb(main):002:0> { c: 3, a: 5, b: 7 }.sort
  => [[:a, 5], [:b, 7], [:c, 3]]"
)

user.blogs.create(
  name: "gets",
  content: "getsメソッドは、ユーザーがキーボードで入力した値を文字列として取得するメソッドです。返り値はユーザーが入力した値の文字列オブジェクトになります。",
  ruby_rails: "Ruby",
  code2: "irb(main):001:0> inputs = gets
  入力します。
  => \"入力します。\\n\"
  irb(main):002:0> inputs
  => \"入力します。\\n\""
)

user.blogs.create(
  name: "to_s",
  content: "to_sメソッドとは、文字列以外のオブジェクトを文字列オブジェクトに変換するメソッドです。",
  ruby_rails: "Ruby",
  code1: "オブジェクト.to_s",
  code2: "irb(main):001:0> num = 1
  => 1
  irb(main):003:0> p num
  1
  => 1                                             
  irb(main):004:0> num.to_s
  => \"1\""
)

user.blogs.create(
  name: "to_i",
  content: "to_iメソッドとは、数字の文字列を数値オブジェクトに変換するメソッドです。また、小数を整数に変換することもできます。",
  ruby_rails: "Ruby",
  code1: "オブジェクト.to_i",
  code2: "irb(main):001:0> num = \"1\"
  => \"1\"
  irb(main):002:0> p num
  \"1\"
  => \"1\"                                           
  irb(main):004:0> num.to_i
  => 1"
)

user.blogs.create(
  name: "split",
  content: "splitメソッドとは、文字列を指定した区切り文字で分割し、配列で返すメソッドです。splitメソッドの第一引数に区切り文字を指定し、第二引数に分割数を指定する事が出来ます。",
  ruby_rails: "Ruby",
  code1: "\"文字列\".split(区切り文字, 分割数)",
  code2: "irb(main):001:0> \"Apple,Orange,Cherry,Banana\".split(',')
  => [\"Apple\", \"Orange\", \"Cherry\", \"Banana\"]
  irb(main):002:0> \"Tokyo:Saitama:Okinawa\".split(':')
  => [\"Tokyo\", \"Saitama\", \"Okinawa\"]
  irb(main):003:0> \"Tokyo:Saitama:Okinawa\".split(':', 2)
  => [\"Tokyo\", \"Saitama:Okinawa\"]"
)

user.blogs.create(
  name: "join",
  content: "配列の要素を結合して一つの文字列としたい場合にjoinメソッドが使われます。joinメソッドは、配列の各要素を文字列に変換し、引数を区切り文字として結合します。",
  ruby_rails: "Ruby",
  code2: "irb(main):001:0> array = [\"GSE\", \"VSE\", \"MSE\"]
  => [\"GSE\", \"VSE\", \"MSE\"]
  irb(main):002:0> puts array.join
  GSEVSEMSE
  => nil
  irb(main):003:0> puts array.join(\",\")
  GSE,VSE,MSE
  => nil"
)

user.blogs.create(
  name: "each",
  content: "eachメソッドとは、配列の中身を一つずつ取り出すメソッドです。",
  ruby_rails: "Ruby",
  code1: "配列.each do |変数|
  # 処理
  end",
  code2: "irb(main):001:0> array = [1, 2, 3]
  => [1, 2, 3]
  irb(main):002:1* array.each do |number|
  irb(main):003:1*   puts number
  irb(main):004:0> end
  1
  2
  3
  => [1, 2, 3]"
)

user.blogs.create(
  name: "present?",
  content: "present?メソッドとは、present?メソッドを使用したオブジェクトが存在すればtrueを返し、存在しなければfalseを返すメソッドです。",
  ruby_rails: "Rails",
  code1: "オブジェクト.present?",
  code2: "name = \"John Doe\"
  age = nil
  array = []
  puts name.present?  # true
  puts age.present?   # false
  puts array.present? # false"
)

user.blogs.create(
  name: "link_to",
  content: "link_toとは、リンクを作成できるrailsのヘルパーメソッドです。ビューファイルに記述できるメソッドになります。",
  ruby_rails: "Rails",
  code1: "<%= link_to \"テキスト\", \"リンク先のパス\", \"オプション\" %>",
  code2: "<%= link_to \"Yahoo!\", \"https://www.yahoo.co.jp/\" %>
  <%= link_to \"削除\", \"/users/1\", method: :delete %>
  # メソッドのオプション
  <%= link_to \"削除\", \"/users/1\", method: :delete, data: { confirm: \"本当に削除しますか？\" } %>
  # dataの確認のオプション
  <%= link_to \"トップページ\", \"/\", class: \"hoge\" %>
  # classのオプション"
)

user.blogs.create(
  name: "render",
  content: "renderメソッドとは、呼び出すテンプレート（ビュー）ファイルを指定するメソッドです。コントローラー・ビューどちらでも使うことができます。",
  ruby_rails: "Rails",
  code1: "<%= render 'ファイル名' %>
  <%= render partial: 'ファイル名' %>",
  code2: "<%= render \"form\" %>
  # 同じディレクトリの_form.html.erbファイルを読み込む
  <%= render partial: \"form/ruby\" %>
  # partial:を省略して<%= render \"form\" %>と書いても同じ意味"
)

user.blogs.create(
  name: "redirect_to",
  content: "redirect_toとは、redirect_toは指定したURLに遷移させることができるメソッドです。",
  ruby_rails: "Rails",
  code1: "redirect_to \"リダイレクト先\"",
  code2: "redirect_to \"https://www.google.com/\"
  # googleにリダイレクト
  redirect_to root_path
  # Prefix名を指定"
)

user.blogs.create(
  name: "params",
  content: "Railsアプリケーションは、フォームに記述した内容を送信した場合、それを、Parametersという名のハッシュ値に変換して、Railsアプリケーション内部へと送り込みます。送られてきたパラメータを取得する時に使うのが、paramsメソッドです。",
  ruby_rails: "Rails",
  code1: "params.require(:blog).permit(:title)",
  code2: "\"blog\"=>{\"title\"=>\"こんにちは！\", \"content\"=>\"ハロー！\"}
  # パラメータの中身
  params.require(:blog).permit(:title, :content)"
)

user.blogs.create(
  name: "select",
  content: "selectメソッドは条件式に一致した要素を取得するためのメソッドです。一致した要素は新しい配列として返されます。",
  ruby_rails: "Ruby",
  code1: "配列オブジェクト.select { |変数| ブロック処理 }",
  code2: "irb(main):001:0> array = [1,2,3,4,5]
  => [1, 2, 3, 4, 5]
  irb(main):002:0> p array.select { |num| num > 3 }
  [4, 5]
  => [4, 5]
  irb(main):003:0> p array.select { |num| num == 3 }
  [3]
  => [3]
  irb(main):004:0> p array.select { |num| num <= 3 }
  [1, 2, 3]
  => [1, 2, 3]"
)
