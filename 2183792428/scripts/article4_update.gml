//x = (room_width / 2) - ((number + 1) * .1 * (view_get_xview() - 160)) + (number * 20 * (view_get_xview() - 160))
x = (room_width / 2) - ((4 - number) * xScale * ((view_get_xview()/160) - 1)) + (xPos * (view_get_xview() - 160))

y = (room_height / 2) - ((number + 1) * yScale * (114 - view_get_yview())) + yDisplay + 99  - (yPos * (view_get_yview() - 114))


switch(obj_stage_main.player_death) {
case 0: 
image_index = 6 
break;
case 1: 
image_index = 2 
break;
case 2: 
image_index = 3
break;
case 3: 
image_index = 4 
break;
case 4: 
image_index = 5 
break;
}


if -127 > obj_stage_main.monoX {
obj_stage_main.guiltyScreen = -4
if sprite_index != sprite_get("killing") {
image_index = 0
}
}



if sprite_index = sprite_get("background") {
if obj_stage_main.monitorKilling = 1 && obj_stage_main.player_death = -4 {
sprite_index = sprite_get("killing")
}
}

if sprite_index = sprite_get("killing") {
image_index += .1
if image_index > 29.9 {
image_index = 0
}

if obj_stage_main.player_death != -4 {
sprite_index = sprite_get("background")
}

}
