//
number = 0
rngCheck = 0

songType = 1
musicSelect = 0

for (i = 0; 8 > i; i++) {
  instance_create( room_width / 2 ,room_height / 2 + 100, "obj_stage_article", 1)
  number ++
}

number = -3
for (i = 0; 7 > i; i++) {
  instance_create( room_width / 2 ,room_height / 2 + 100, "obj_stage_article", 2)
  number ++
}

number = 0
for (i = 0; 2 > i; i++) {
  instance_create( room_width / 2 ,room_height / 2 + 100, "obj_stage_article", 4)
  number ++
}



player_death = -4
guiltySprite = -4
monoX = 0
guiltyScreen = -4

monitorKilling = -4
killingTime = 0

monitorCancel = 0


oneStock = 0


finalStock[0] = -4
finalStock[1] = -4
finalStock[2] = -4
finalStock[3] = -4

//music timer (thanks baconator)

music_timer = 0;