// a3 post draw
// Calculate trajectory angle


draw_sprite(sprite_get("dspecial_proj_2"),clock_timer * 18 / teleport_time,x,y);
if(charged)draw_sprite(sprite_get("hitfx11"),(get_gameplay_time()%(12*4))/4,x,y);