#=begin =endを外して実行。

#4-2
=begin
a = [1,2,3]
puts a[0] #要素の始まりは、0
puts a.size #上下、同義
puts a.length


#4-2-1
b = [1,2,3]
b[1] = 10 #要素の変更　→破壊的に実行される。
puts b


#4-2-2
#商数の割り算の計算
a = 14.divmod(3)
puts "商#{a[0]}余り#{a[0]}"


#4-3
numbers = (1..6)
sum = 0
numbers.each do |n|
    sum += n
end
puts sum


#4-3-1
del = [1,2,3,1]
del.delete(1) #引数の要素を全削除
puts del


del2 = [1,2,4,6]
del2.delete_if do |n|
    n.odd?
end
puts del2


#4-3-5
num1 = [1,2,3,4]
sum = 0
num1.each {|n| sum += n} #do end省略形
puts sum


#4-4
num = [1,2,3,4,5]
aft_num = []
num.map {|n| aft_num << n * 10}
puts aft_num


#4-4-2
num = [1,2,3,4,5,6]
even_num = num.select{ |n| n.even? }
puts even_num


#4-4-3
num = [1,2,3,4,5]
chk = num.find{ |n| n.odd?} #1件目を抽出
puts chk



#4-4-4
sample = ["test", "sample"]
result = sample.join("/")
puts result


#4-4-5
temp = [1,2,3,4,5,6]
result =  temp.select(&:odd?) # -> {|n| n.odd?}と同義 (シンボルオブジェクト)
puts result


#4-5
a = 1...5
puts a.include?(5)
puts a.include?(4)


def value(age)
    case age
    when 1
        puts 'baby'
    when 5
        puts 'boy'
    else
        puts 'adult'
    end
end
puts value(3)


#4-7-1
a = [1,2,3,4,5]
puts a[1,3] #要素何番目〜いくつ分まで取得。
puts a.values_at(0,1,4) #複数要素を抽出。
puts a.first(2) #firstから2件分取得できる。


#4-7-2
a = []
b = [2,3]
a.push(1)
puts a.push(*b)
# 配列を展開して、複数の引数で値を渡す方法。
#1.a.push(*b)
#2.a.push(*[2,3])
#3.a.push(2,3)


#4-7-8
a = [1,2,3]
p [a] #-> [[1,2,3]]
p [*a] #-> [1,2,3] 要素が展開される。上記と同じ。


#4-8. #添字付きでインデックスを回す場合は、each_with_index
a = [1,2,3,4,5]
a.each_with_index{|n, i|puts "#{i}番目の要素は#{n}です" }


#4-8-3. 添字付きかつ、インデックスを回す場合
#添字無しの場合は、each_index_with,ありの場合は、each.index_with
a = [1,2,3,4,5]
a.each.with_index(1) {|n, i|puts "#{i}番目の要素は#{n}です" }


#4-8-6.
num = [1,2,3,4,5,6]
sum = 0
num.each do |n; sum| #「;」を使用することでローカル変数を定義することが可能。 
    sum = 0
    sum += n
    puts sum
end


#4-8-8
#{ブロックの書き方}と()の書き方では、計都合度が違う為に、解釈が異なる場合がある。


#4-10
a = []
10.upto(14){|n| a << n}
p a
=end

#4-10-3
a = []
1.step(10,2){|n| a << n}
p a