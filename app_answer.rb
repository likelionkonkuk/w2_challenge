=begin

한 학기가 끝난 지금 미연이의 성적을 알아보자!
미연이는 이번에 6개의 전공 수업을 들었다. (6개의 수업 성적을 직접 입력받아보자.)
각 학점의 점수는 Hash에 저장하여라.
("A+": 4.5 "A": 4.0 "B+": 3.5 "B": 3.0 "C+": 2.5 "C": 2.0 "D": 1.0 "F": 0)

미연이의 6개의 과목 성적 중 재수강이 필요한 과목(C+이하)과 우수한 과목(A이상)의 수를 출력해보자.
평점을 구하는 함수를 구현해서 출력해보자.
그리고 미연이의 평점과 미연이의 평점이 학사경고(2.0)인지, 성적장학금(4.0)을 받을 수 있는지 출력해보자.

=end
score = {
	"A+" => 4.5,
	"A" => 4.0,
	"B+" => 3.5,
	"B" => 3.0,
	"C+" => 2.5,
	"C" => 2.0,
	"D" => 1.0,
	"F" => 0,
}

miyon2 = []
for i in 1..6
	print "미연이의 #{i}번째 과목 성적을 입력하세요:  "
	miyon2.push(score[gets.chomp.upcase])
end

print miyon2
puts ""

#우수한 과목, 재수강이 필요한과목
count = [0,0]

miyon2.each do |a|
	if a >= 4.0
		count[0]+=1
	elsif a <= 2.5
		count[1]+=1
	end
end

def avg(input_arr)
	sum = 0

	input_arr.each do |a|
		sum += a
	end

	return sum/input_arr.length
end

puts "미연이의 재수강 과목의 수는 #{count[1]}개 , 우수한 과목의 수는 #{count[0]}개 입니다."
puts "미연이의 평점은 #{avg(miyon2)}입니다."

if avg(miyon2) >= 4.0
	puts "성적장학금을 받을 수 있습니다!!!우와아아"
elsif avg(miyon2) < 2.0
	puts "학사경고입니다. 분발하세요"
end
