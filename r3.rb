#conding:utf-8
class Lists
  def initialize(name)
    @name = name
  end
  
  def ar_any(ar)
    p ar.any?{|w| w.size > 2}#10文字以上ある場合新を返す
    p ar.any? #1つでも新があればtrueを返す
  end

  def ar_all(ar)
    p ar.all?{|w|  w.kind_of?(String)}#もしstrがあれば、その時点でtrueを返して処理中断
  end

  def ar_find(ar)
    #もし１００で割る値がなければ、notfound
    proc = Proc.new{ :Not_found }
    p ar.find(proc) {|item|  item % 100 == 0}
  end

  def ar_include(ar)
    if(ar.include?(1))
      ar.each{|i| 
        if i % 2 == 0
          p i
        end
      }
    end
  end

  def ar_length(ar)
    ar.each_with_index{|i,key|  p "#{i} . #{key}" }
    p ar[0,3]
    p ar[-2,1]
    p ar[0..3]
  end

  def maps_test(lists)
    num = [104,101]
    p num.map {|item| item.to_s(16)}
  end

  def choice_test(ar)
    p ar.choice
  end

  def at_test(ars)
    p ars.at(1)
  end

  def assoc_test(ar1,ar2)
    p ar1.assoc("test")
  end

  def animals_test(lists)
    p lists[-1]
    animals = ["ringo","lala","ll","klj","lkj","k"]
    p animals[0,1,3] = lists
    p animals[0..1]
  end

  def ar_equal(ar1,ar2)
    strs1 = "hello"
    strs2 = "hello"
    p strs1 == strs2
    p strs1.equal?(strs1)#同じ内容でも変数が違えばfalse 変数が同じ時のみtrue
  end

  def ar_mainasu(ar1,ar2)
    p ar1 - ar2
  end

  def ar_plus(ar1,ar2)
    p ar1 + ar2 << "test"
  end

  def ar_select(lists)
    p lists.select{|item| item%5 == 0}#5の倍数のみリストに入れて返す
  end

  def scan_test(strs,regexp)
    p strs.scan(regexp)
  end

  def rpartition_test(strs,regexp)
    p strs.rpartition(regexp)
  end

  def partitoin_test(strs,regexp)
    p strs.partition(regexp)
  end

  def split_test(strs)
    p "split pattern1"
    i_list = strs.split(",")
    p "split pattern2"
    p strs.split(/\s*,\s*/)
    p "split pattern3"
    p strs.split(/\s*(,|;)\s*/)
  end
  
  def ar_join(arr)
    p arr.join(" ")
  end

  def ast(arr)
    p arr * " and "
  end

  def and_and(list1,list2)
    p list1 & list2
  end

  def display()
    p @name
  end
end

li = Lists.new("List_Test_Start")
li.display()
#li.and_and([1,1,1,1,2,1,1,],[1,2,2,2,3,3])  #共通の要素のみ、取り出す　（重複している値は取り除く）
#li.ast(["one","two","three"])#区切文字で連結する
#li.ar_join(["hello","world"])
#li.ar_join([1,2,3,[4,5],[6,[6,7,[[8]]]]])#平坦化する
#li.split_test("hello,ringo,test;ringo")
#li.partitoin_test("thankyou for your adbise you're welcome","f")#前
#li.rpartition_test("myfriend is very happy","s")#後ろから
#li.scan_test("you are very much.you ware python.","you")
#li.ar_select([1,2,3,4,5,6,7,8,9,10])
#li.ar_plus(["test"],["ringo","lalala"])#連結
#li.ar_mainasu([1,1,2,2,3,3],[3,4,4,5,5,6,6,1,1])
#li.ar_equal(["dog","cat"],["dog","cat"])
#li.animals_test(["dog","cat","mouse"])
#li.assoc_test(["test","test"],["ringo","test"])
#li.at_test([0,1,2,3,4,5])
#li.choice_test([1,2,3,4,5,6,7,8,10])
#li.choice_test([1,2,3,4,5,6,7,8,10])
#li.maps_test([1,2,3,4,5,6,7,8,10])
#li.ar_length[1,2,3,4,5])(
#li.ar_include([1,2,3,4,5])
#li.ar_find([1,2,3,4,5])
#li.ar_all(["1","2","3"])
li.ar_any(["aaa","bbb","cccc"])
