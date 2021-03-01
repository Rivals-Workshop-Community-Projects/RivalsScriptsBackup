//x = (room_width / 2) - ((number + 1) * .1 * (view_get_xview() - 160)) + (number * 20 * (view_get_xview() - 160))
x = (room_width / 2) - ((4 - number) * xScale * ((view_get_xview()/160) - 1)) + (xPos * (view_get_xview() - 160)) - obj_stage_main.monoX

y = (room_height / 2) - ((number + 1) * yScale * (114 - view_get_yview())) + yDisplay + 99  - (yPos * (view_get_yview() - 114))


if monoTimer > 5 {
monoTimer = 0
if image_index != 2 {
image_index += 1
} else {
image_index = 0
} 
}else {
monoTimer ++
}

obj_stage_main.monoX -= 1

if -160 > obj_stage_main.monoX {
obj_stage_main.player_death = -4
instance_destroy()
}