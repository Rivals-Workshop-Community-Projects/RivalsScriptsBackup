//x = (room_width / 2) - ((number + 1) * .1 * (view_get_xview() - 160)) + (number * 20 * (view_get_xview() - 160))






if  -26 > obj_stage_main.monoX {
image_index = 1
x = (room_width / 2) - ((4 - number) * xScale * ((view_get_xview()/160) - 1)) + (xPos * (view_get_xview() - 160)) - obj_stage_main.monoX - 32
y = (room_height / 2) - ((number + 1) * yScale * (114 - view_get_yview())) + yDisplay + 99  - (yPos * (view_get_yview() - 114)) + 16
if -127 > obj_stage_main.monoX {
instance_destroy()
}
} else {
x = (room_width / 2) - ((4 - number) * xScale * ((view_get_xview()/160) - 1)) + (xPos * (view_get_xview() - 160))
y = (room_height / 2) - ((number + 1) * yScale * (114 - view_get_yview())) + yDisplay + 99  - (yPos * (view_get_yview() - 114))
}

if -127 > obj_stage_main.monoX {
instance_destroy()
}



if obj_stage_main.monitorCancel = 0 && obj_stage_main.monitorKilling != -4 {
obj_stage_main.monoX = -128
obj_stage_main.monitorCancel = 1
}