class Player
  def hand
    puts "数字を入力してください。"
    puts "0: グー"
    puts "1: チョキ"
    puts "2: パー"

    player_hand = gets.to_i
    if player_hand < 0 || 2 < player_hand
    puts" 0〜2の数字を入力してください。"
  　　puts player_hand
    end
  end
end

class Enemy
  def hand
    enemy_hand = rand(0..2)
    puts enemy_hand
  end
end

class Janken
  def pon(player_hand, enemy_hand)
  result = (player_hand - enemy_hand + 3) % 3
  puts result
  end
end
    
if result == 0
  puts "引き分け"
elsif result == 1
  puts "負け"
else 
  puts "勝ち" 
end
  


player = Player.new
enemy = Enemy.new
janken = Janken.new


janken.pon(player.hand, enemy.hand)

