#coding:utf-8
class Strings
  def initialize
    @input_strs = ""
  end

  def input_wait
    p "Please Input Strs"
    @input_strs = gets.chop
  end

  def input_strs_views
    h = {}
    myname_list = []
    @input_strs.split(/[0-9]/).each{|i|
      unless h.has_key?(i) then
        h[i] = i + "ok"
        myname_str = "My name is #{i}"
        #配列にデータの追加
        myname_list << myname_str
        case i
          when "aaa" then
          p "aaa ok"
        else
          p "ok"
        end
      end
    }
    myname_list.reverse
    p myname_list
  end

end

st = Strings.new()
st.input_wait()
st.input_strs_views()
