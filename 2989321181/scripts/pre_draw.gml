if (get_player_color(player) != 20)
shader_start();
draw_sprite_ext(sprite_get("spinmeter"), 0, x,y+8,1,1,0,c_white,100);

if (!has_rune("G"))
draw_sprite_ext(sprite_get("spinmeter-bar"), 0, x-30,y+8,beyTimer/10800,1,0,c_white,100);
else
draw_sprite_ext(sprite_get("spinmeter-bar"), 0, x-30,y+8,beyTimer/31600,1,0,c_white,100);
shader_end();

if (get_gameplay_time() < 117){
    if (x < room_width/2)
    draw_sprite_ext(sprite_get("launcher"), 0, x, y,1,1,0,c_white,100);
    else
    draw_sprite_ext(sprite_get("launcher"), 0, x, y,-1,1,0,c_white,100);
    
}
if (get_gameplay_time() >= 117 && get_gameplay_time() < 150){
    if (initX < room_width/2)
    draw_sprite_ext(sprite_get("launcher"), (get_gameplay_time()-117)/3, initX, initY,1,1,0,c_white,100);
    else
    draw_sprite_ext(sprite_get("launcher"), (get_gameplay_time()-117)/3, initX, initY,-1,1,0,c_white,100);
    
    if (get_gameplay_time() == 120)
        sound_play(sound_get("bb-rip"), false, noone, 0.75, 1.1);
}
    
if (prev_state == 14 && respawnTimer < 33){
    draw_sprite_ext(sprite_get("launcher"), 1+(respawnTimer/3), initX, initY,-1,1,0,c_white,100);
    respawnTimer ++;
    
    if (respawnTimer == 3)
        sound_play(sound_get("bb-rip"), false, noone, 0.75, 1.1);
}