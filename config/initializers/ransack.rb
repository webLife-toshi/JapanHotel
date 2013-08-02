Ransack.configure do |config|
  config.add_predicate 'equals_diddly', # 独自 predicate の名前を指定
                       # arel の predicate を指定(例：eq, matches, etc)
                       :arel_predicate => 'eq',
                       # 渡した引数の差し替えができる。(デフォルト: 差し替えない）
                       :formatter => proc {|v| "#{v}-diddly"},
                       # 値を validate する。戻り値がfalse ならその値を検索には>使わない。
                       # 下記がデフォルト。
                       :validator => proc {|v| v.present?},
                       # true にすると 'predicateの名前_all' と 'predicateの名前_any'の2つつの predicate が追加される。
                       # その名の通り any/all 版 の predicate。デフォルト true。
                       :compounds => true,
                       # ここで指定されたカラムの型にキャストされて検索される
                       # (デフォルト: DBカラムの型)
                       :type => :string
end


