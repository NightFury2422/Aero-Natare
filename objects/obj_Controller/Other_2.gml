global.heichpea = debughp
global.treasure_count = 0
global.level = 1
global.scroll_speed = 3
global.treasure_count_bonus = 0
global.enemy_count_bonus = 0
global.enemies_feinted = 0
global.damage_taken = false
global.updatedscores = false
global.name = ""
global.nameid = ""
global.midTransition = false
global.roomTarget = -1
score = 0
fnt_TheFont = font_add("thunderstrike.ttf",20,false,false,32,128)
draw_set_font(fnt_TheFont)
draw_set_color(#7A2A04)
load_highscores()
randomize()
load1 = 0