module StrUtil 

  # integerに変換できる文字列かどうか
  # @return [Boolean]
  def self.integer_string?(str)
    Integer(str)
    true
  rescue ArgumentError
    false
  end

end
