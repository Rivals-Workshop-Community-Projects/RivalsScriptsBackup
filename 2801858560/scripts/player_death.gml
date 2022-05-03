//
if noclip <= 1 {
    noclip = 12*6
}
sound_play(sound_get("tstrong"),false,0,.6,.8)

if laststand < 4 laststand += 1

sound_play(sound_get("counterhit"),false,0,1,1)  


deathx = hit_player_obj.x


if hit_player_obj.y > room_height - 30 {
    
   newroom += 1 + backroom%4
    
    
}


if hit_player_obj.y < room_height/2 - 420 {
    newroom += 4 + backroom%2
}

if hit_player_obj.x < room_width/2 - 700 or hit_player_obj.x > room_width/2 + 700 {
   
    if hit_player_obj.x < room_width/2 {
    newroom += 3 + backroom%2
    } else {
      newroom += 2 + backroom%3
    }
    
}

print(deathx)
print(newroom)
