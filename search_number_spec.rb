# -*- coding: utf-8 -*-

require './search_number'

describe 'search_number#search' do
  let(:search_number) { SearchNumber.new }

  specify '入力値が1から1000の場合、入力値、解答を表示する' do
    search_number.param = "100"
    expect{ search_number.search }.to output("入力値：100\n解答：100\n").to_stdout
  end

  specify '入力値が文字列の場合、1から1000までの数値を入力してくださいと表示する' do
    search_number.param = "文字列"
    expect{ search_number.search }.to output("#{SearchNumber::First}から#{SearchNumber::Last}までの数値を入力してください。\n").to_stdout
  end

  specify '入力値が小数の場合、1から1000までの数値を入力してくださいと表示する' do
    search_number.param = "100.0"
    expect{ search_number.search }.to output("#{SearchNumber::First}から#{SearchNumber::Last}までの数値を入力してください。\n").to_stdout
  end

  specify '入力値が1から1000まで以外の数値の場合、1から1000までの数値を入力してくださいと表示する' do
    search_number.param = "10000"
    expect{ search_number.search }.to output("#{SearchNumber::First}から#{SearchNumber::Last}までの数値を入力してください。\n").to_stdout
  end

end
