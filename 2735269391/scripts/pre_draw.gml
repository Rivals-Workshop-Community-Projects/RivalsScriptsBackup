/// my_hitboxID.attack
shader_start();

//Offscreen
if move_cooldown[AT_DTHROW] > 0 {
  draw_sprite_ext(sprite_get("walljump"), (get_gameplay_time()/4)%4, x , y, spr_dir, 1,0,-1,0.6 )	
}
//


shader_end();