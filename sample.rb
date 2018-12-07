def janken
 puts "数字を入力してください。"
 puts "0: グー"
 puts "1: チョキ"
 puts "2: パー"

player_hand = gets.to_i
 if player_hand < 0 || 2 < player_hand
  puts" 0〜2の数字を入力してください。"
 return true
  puts player_hand
 end

enemy_hand = rand(0..2)
puts enemy_hand

result = (player_hand - enemy_hand + 3) % 3
puts result

if result == 0
 puts "引き分け"
 return true
elsif result == 1
 puts "負け"
else 
 puts "勝ち" 
end
end

next_janken = true

while next_janken
  next_janken = janken
end