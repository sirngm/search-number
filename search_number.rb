# -*- coding: utf-8 -*-

class SearchNumber

  First = 1
  Last = 1000
  Num = Last - First + 1

  @param       #標準入力の値
  @removed_num #配列から取り除く値
  @arr = []    #値を取り除かれた後の配列

  attr_accessor :param

  def search
    set_removed_num
    set_arr

    org_arr_sum = (First + Last) * Num / 2
    arr_sum = @arr.inject(:+)
    answer = org_arr_sum - arr_sum

    print "入力値：#{@removed_num}\n解答：#{answer}\n"
  end

  private

  # @removed_numをセットする
  # @return [Integer] @removed_numを返す
  def set_removed_num
    @removed_num = @param.to_i
  end

  # @arrをセットする
  # @return [Array] @arrを返す
  def set_arr
    arr = Array(First..Last)
    removed_index = @removed_num - 1
    arr.delete_at(removed_index)
    @arr = arr.sample(Num)
  end

end
