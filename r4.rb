#coding:utf-8
class Hash
  attr_accessor :id
  def initialize
    @id = Time.now.to_i
  end
  
  def hash_map()
    dic = {:name => "tanoue", :age => 3333, :sex => "man"}
    p dic.collect{|k,v| "#{k} #{v}"}.join(",")
    p (1..10).collect{|n| 2 **n}
    p (1..10).map{|n| 2 **n} #map collect は同じ意味
  end

  def hash_to_a
    dic = {:name => "onamae" , :age => 3333}
    p dic.keys
    p dic.values
    list = dic.to_a
    dic_sub = {list[0][0] => "onamae"}
    p dic.has_key?(list[0][0])
    dic.store("pc","i7") #store は、辞書の値を新規追加
    dic.update(:price => 4000)
    dic_i = {}

    for i in Range.new(1,10)
      dic_i[i] = "tset" + i.to_s
    end
    p dic_i
  end
  
  def hash_replace
    dic = {:name => "anr",  :age => 11}
    dic.replace(:name => "never")#まるまる書き換える clearをして再設定したような感じ
    p dic
  end

  def hash_dic_merge
    dic = {:name => "test",:sex => "man",:age => 11}
    dic_sub = {:pc_spec => "i7"}
    dic_merge = dic.merge(dic_sub) #複数のハッシュをマージする
    p dic_merge[:pc_spec]
  end

  def hash_length_check()
    dic = {:name => "test",:sex => "man",:age => 11}
    p dic.length
    dic_sub = {:pc_spec => "i7"}
    dic_merge = dic.merge(dic_sub) 
    p dic_merge
  end

  def hash_key_check
    #ハッシュにキーが存在しているかチェックする
    dic = {:name => "name" , :sex => "man"}
    if dic.has_key?(:name)
      p dic[:name] + " is ruby"
    end

    p dic.include?(:name)#true or falseが返る
    p dic.include?(:sex)
    p dic.has_value?("man") #hash_value や has_keyの後ろには?を入れる
    p 
    p (dic[:name] ? "ok" : "ng")#nameが存在していたら
  end

  def hash_each_key_only()#キーの値を取り出す
    h = {:test => "test", :tset1 => "test1"}
    h.each_key{|name|  p "#{name}"}
    h.each_value{|value|  p "#{value}"}
    p h
    h.clear #初期化
    p h.empty? #空なのかチェック
    h = {:tes => "tset"}
    p h.empty?
    p h
  end

  def hash_each_test()
    h = {"t1" => 1,"t2" => 2, "t3" => 3}
    h.each{|k,v|  p "#{k} #{v}"}
    t = {:a3 => 2,:a2 => 1}
    t.each{|k,v|  p "#{k},#{k}"}
   
  end

  def hash_default_key()
    h = {:t1 => "test1"}
    h["t2"] = "test"
    h.default = "Default" #キーが存在し無い場合に返す
    p h["default_check"]
    p h[:t1]
    p h["t2"]
  end

  def hash_enzanshi()
    hash1 = {:a => 1,:b => 2}
    hash2 = {:a => 1,:b => 2}
    p hash1 == hash2
    p hash1.equal?(hash2)
  end

  def kakko()
    h = {}
    h["test"] = 80
    dic = {:name => "test", :ringo => "aa",
      :aaaa => "riri"}
    p dic[:ringo]
    p dic[:aaaa]
  end

  def sample_mb(&hoge)
    hoge.call "hoge","fuga"
  end
end

h1 = Hash.new()
h2 = Hash.new()
h3 = Hash.new()
@data = [h1,h2,h3]
p @data.map {|data| data.id}
p @data.map(&:id)

#h.kakko()
#h.hash_enzanshi()
#h.hash_default_key()
#h.hash_each_test()
#h.hash_each_key_only()#キーの値を取り出す
#h.hash_key_check()
#h.hash_length_check()
#h.hash_dic_merge()
#h.hash_replace()
#h.hash_to_a()
#h.hash_map()

