//railm draw

//offset
var x_off = 0
var g_time = get_gameplay_time()
if (g_time%4==0){x_off = 0}
if (g_time%4==1){x_off = -9*2}
if (g_time%4==2){x_off = 19*2}
if (g_time%4==3){x_off = 9*2}

//draw
draw_sprite_ext( r_sprite, 0, temp_x+x_off, temp_y, 2, 2, 0, -1, 1 )
