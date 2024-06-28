alarm[0] = 30
incrementor = 1
damageless = false
allTreasure = false
hunter = false
pacifist = false
perfect = false
scr1 = 0
scr2 = 0
scr3 = 0
scr4 = 0

if !global.damage_taken {
	damageless = true
	score += 2000
}
scr1 = score

if global.treasure_count >= global.treasure_count_bonus {
	allTreasure = true
	score += 2000
}
scr2 = score

if global.enemies_feinted >= global.enemy_count_bonus {
	hunter = true
	score += 2000
}
scr3 = score

if global.enemies_feinted == 0 {
	pacifist = true
	score += 2000
}
scr3 = score

if damageless and allTreasure and (hunter or pacifist) perfect = true

if perfect score *= 2
scr4 = score
