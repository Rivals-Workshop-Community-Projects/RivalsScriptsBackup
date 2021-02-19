//x = (room_width / 2) - ((8 + 1) * .1 * (view_get_xview() - 160)) + (number * 20 * (view_get_xview() - 160))
x = (room_width / 2) - ((4 - 8) * xScale * ((view_get_xview()/160) - 1)) + (xPos * (view_get_xview() - 160)) + (number * 220)

y = (room_height / 2) - ((8 + 1) * yScale * (114 - view_get_yview())) + yDisplay + 99  - (yPos * (view_get_yview() - 114))