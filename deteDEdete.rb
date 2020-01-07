#! ruby 

require 'date'

puts "出会った年を西暦で入力してください。"
myear = gets.chomp.to_i
puts "出会った月を入力してください。"
mmonth = gets.chomp.to_i
puts "出会った日を入力してください。"
mday = gets.chomp.to_i

unless Date.valid_date?(myear, mmonth, mday)
  puts "正しい入力ではありません。"
  exit
end

meeting = Date.new(myear, mmonth, mday)

today = Date.today

printf("出会った日は %d年 %d月 %d日ですね。\n",myear, mmonth, mday)

meetvariance = today - meeting

printf("あなたは出会って%d日経っています。\n",meetvariance)

if meetvariance <= 62
	puts "もっとお話聞かせて？"
	puts "最後にデートした年を西暦で教えて"
	lastdateyear = gets.chomp.to_i
	puts "最後にデートした月を教えて"
	lastdatemonth = gets.chomp.to_i
	puts "最後にデートした日を教えて"
	lastdatedate = gets.chomp.to_i
	dating = Date.new(lastdateyear, lastdatemonth, lastdatedate)
	printf("最後にデートしたのは %d年 %d月 %d日なんやね。\n",lastdateyear, lastdatemonth, lastdatedate)
	datevariance = today - dating
		unless datevariance > 14
			puts "多分脈なしかな？"
		else
			puts "すごいすごーい。もっともーっと話聞かせて。"
			puts "今までデート、何回したの？"
				datenum = gets.chomp.to_i
				case datenum
					when 1
						puts "ねぇ、少ないかよ。それじゃ乙女の心射止められないよ。"
						printf("とりあえず、%dまでに次誘おう",datig + 14)
					when 2
						puts "好機！"
						printf("%dまでに次誘って告ってみて！\n王道よ。",datig + 7)
					when 3
						puts "なんで3回目で告らなかったのー"
						printf("とりあえず、%dまでに次誘って告りなさい！",datig + 7)
					when 4..6
						puts "なんで告白してないの？
						もう知らないんだからっ"
					else
					puts "たぶん無理！"
				end
		end
else
puts "あきらめも肝心\n"
end