# encoding: utf-8
# frozen_string_literal: true

    def hash_dig
        user = {
            user: {
                name: {
                    name1: 'test'
                }
            }
        }
                
        puts user.dig(:user,:name,:name1)
    end
    

def array_dig
    results = [[[1, 2, 3]]]
    
    puts results.dig(0,0,0)
end

def grep_v
    friends = %w[John Alain Jim Delmer]
    
    j_friends = friends.grep(/^J/)
    others = friends.grep_v(/^J/)
    puts j_friends
    puts others
end

def grep_v_by_type
    nums = [1,1.0,"1",nil]
    
    numeric_nums = nums.grep(Numeric)
    puts numeric_nums
    
    puts "Not Num"
    ohters = nums.grep_v(Numeric)
    puts ohters
end

def hash_fetch_values
    items = {
        java: "java",
        ruby: "ruby",
        swift: "swift"
    }
    
    puts items.values_at(:java,:ruby)
    puts items.fetch_values(:java,:ruby)
    puts items.values_at(:java,:ruby,:php) # :php -> nil
    # puts items.fetch_values(:java,:ruby,:php) # :php -> KeyError
end

def numeric_positive_and_negative
    nums = (-3..3)
    
    puts nums.select(&:positive?)
    puts nums.select(&:negative?)
    puts 0.negative?
    puts 0.positive?
end

def hash_operators
    puts ({a:1, b:2} > {a:1}) # A ⊃ B の関係である
    puts ({a:1} >= {a:1}) # A ⊇ B の関係である
    puts ({a:1, b:2} < {a:1}) # A ⊂ B の関係でない
end

def frozen_string
    puts "Hello world".frozen?
end

class ::Foo
  BAR = 'Deprecated constant'
  # BARは deprecated （非推奨）な定数とする
  deprecate_constant :BAR
end

hash_dig
array_dig
grep_v
grep_v_by_type
hash_fetch_values
numeric_positive_and_negative
hash_operators
frozen_string
# puts "Hello".revers! # did_you_mean gems
puts Foo::BAR