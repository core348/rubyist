#coding:utf-8
class Language 
  def initialize(code,name)
    @code = code
    @name = name
    @lists = [@code,@name]
  end

  def exe_loop(label)
    p label

    if(label == "file_open")
      open("testfile.txt"){|rf|
        rf.each{|line|
          puts line
        }
      }
    end
    
    if(label == "step")
      (1..10).step(2){|i|  p i}
    end

    if(label == "each_arr")
      ar = ["t1","t2","t3"]
      ar.each do |i|
        p i
      end  
    end

    if(label == "each_hash")
      hs = {"t1"=>"test1","t2"=>"test"}
      hs.each do |k,v|
        p k,v
      end
    end

    if(label == "each_next")
      count = 0
      (1..100).each{|i|
        count += 1
        if count % 5 != 0 then
          next#continueと同じ？
        end
        p i
      }
    end
    
    """ カウントダウン　未満や以下は無く、指定された見える数値の範囲のみ"""
    if(label == "downto")
      10.downto(1){|i|  p i}
    end

    """ 先頭の数値から】内に存在する値まで数値を増加させつつ処理を繰り返す"""
    if(label == "upto")
      1.upto(10){|i|  p i}
    end

    if(label == "times")
      3.times do |i| 
        p i
      end
      5.times{|i| p self.display(i)}
    end
    
    if(label == "range")
      """ 点が２つなら以下　吹いた＝ふ＝２＝ふいか、　３＝ミ＝未満"""
      #点が３つで18以上20未満
      for i in 18...23 do
        p i
      end
      #点が2つで18位以上20以下
      for i in 18..20 do
        p i
      end
      
      for i in ["test","test2"]
        p i
      end
      
      for i in 1..10 do 
        p i
      end
    end

    """ 0未満じゃなかったら実行する"""
    if(label == "until")
      un_int = 3
      until un_int < 0 do
        p un_int
        un_int = un_int - 1
      end
   end

    if(label == "while")
      while true
        for i in @lists
          self.display(i)
        end
        break
      end
    end

    if(label == "for")
      for i in @lists do
        self.display(i)
      end
    end

    if(label == "each")
      @lists.each do |i|
        self.display(i)
      end
    end
    p 
  end

  def display(value)
    puts value
  end
end


#リスト初期化
la = []

lang = Language.new("ruby","るびー")
#lang.exe_loop("for")#フォー
#lang.exe_loop("each")#イーチ
#lang.exe_loop("while")#ワイル
#lang.exe_loop("until")#アンティル
#lang.exe_loop("range")#範囲
#lang.exe_loop("times")#timesメsッド
#lang.exe_loop("upto")#アップツー
#lang.exe_loop("downto")#ダウンツー
#lang.exe_loop("each_next")#each next
#lang.exe_loop("each_hash")#hash
#lang.exe_loop("each_arr")#arr
#lang.exe_loop("step")#step飛び級
lang.exe_loop("file_open")#step飛び級



  

