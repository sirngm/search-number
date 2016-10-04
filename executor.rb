# -*- coding: utf-8 -*-

require './search_number'

print "配列から取り除く値を入力してください。\n"
param = gets
search_number = SearchNumber.new
search_number.param = param
search_number.search
