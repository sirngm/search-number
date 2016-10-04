# -*- coding: utf-8 -*-

require './str_util'

describe 'str_util#integer_string?' do

  specify '入力値が数値の文字列の場合、trueを返す' do
    expect(StrUtil.integer_string?("100")).to eq(true)
  end
  
  specify '入力値が小数の文字列の場合、falseを返す' do
    expect(StrUtil.integer_string?("0.1")).to eq(false)
  end

  specify '入力値が文字列の文字列の場合、falseを返す' do
    expect(StrUtil.integer_string?("文字列")).to eq(false)
  end
end
