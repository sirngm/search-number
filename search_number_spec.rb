# -*- coding: utf-8 -*-

require './search_number'

describe 'search_number#search' do
  let(:search_number) { SearchNumber.new }

  specify '入力値が1から1000の場合、入力値、解答を表示する' do
    search_number.param = "100"
    expect{ search_number.search }.to output("入力値：100\n解答：100\n").to_stdout
  end

end
