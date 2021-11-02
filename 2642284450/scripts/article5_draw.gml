//railb draw

//offset
var x_off = 0
var g_time = get_gameplay_time()
if (g_time%6==0){x_off = 0}
if (g_time%6==1){x_off = -4*2}
if (g_time%6==2){x_off = -8*2}
if (g_time%6==3){x_off = 12*2}
if (g_time%6==4){x_off = 8*2}
if (g_time%6==5){x_off = 4*2}

//draw
draw_sprite_ext( r_sprite, 0, temp_x+x_off, temp_y, 2, 2, 0, -1, 1 )
