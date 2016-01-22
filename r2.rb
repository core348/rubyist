class Comm
  
  """ 定数は先頭が大文字、アクセスメソッドは、3種類（参照のみ、更新のみ、参照と更新）"""
  """ クラス変数が存在する　全てのメソッド内で共有できる"""
  """ オーバーライド、親クラスのメソッドを呼び出す、親クラスのメソッドに引数を渡す"""
  """ アクセス制御をしていく public private"""

  @@count = 0
  TEISU = 0.0005
  Teisu = 0.0005

  def initialize(comm_no)
    @comm_no = comm_no
    @comm_write = comm_no
    @comm_reader = comm_no
    p TEISU
    @@count += 1
  end

  def comm_open_message(rand_int=10)
    for i in 1..rand_int
      p "ready ok comm open....."
    end
  end

  def comm_name()
    @@count += 1
    p Teisu
    p @comm_no
    p @@count
  end

  attr_reader :comm_reader#読み込みのみ
  attr_writer :comm_write#更新可能
  attr_accessor :comm_no #参照と更新が可能
end

class Special_Comm < Comm

  def initialize
    p "test"
  end

  def comm_open_message(rand_int)
    super
    print "スペシャルコミュニティ開設おめでとうございます"
  end
  public :comm_open_message

  def special_event
    print "スペシャルイベントを開催できます"
  end
end

sc = Special_Comm.new
sc.special_event
sc.comm_open_message(10)

comm = Comm.new("333")
Comm::Teisu

comm.comm_name

#更新と参照
#comm.comm_no = "tset"
#p comm.comm_no

#さん章のみ
#p comm.comm_reader

#書き込みのみ
comm.comm_write = "test_write"
