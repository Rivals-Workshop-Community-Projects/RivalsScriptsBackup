
//draw_debug_text(x-8,y+32,string(get_hitbox_value(AT_EXTRA_3,2,HG_WINDOW)))
//draw_debug_text(x-8,y+48,string(free))
//draw_debug_text(x-8,y+64,string(window))
//draw_debug_text(x-8,y+88,string(window_timer))



/* if (attack == AT_NSPECIAL_ZET) and (window == 2) and ((state == PS_ATTACK_AIR) or (state == PS_ATTACK_GROUND)) { 
draw_sprite_ext(sprite_get("AT_NSPECIAL_ZETT_UNCHRG_BG"),window_timer / 3.3,x,y,1,1,0,c_white,1)
}
if (attack == AT_NSPECIAL_ZET) and (window == 3) and ((state == PS_ATTACK_AIR) or (state == PS_ATTACK_GROUND)) {
draw_sprite_ext(sprite_get("AT_NSPECIAL_ZETT_CHRG_BG"),window_timer / 3.3,x,y,1,1,0,c_white,1)
} */

 
 if (attack == AT_NSPECIAL_ZET) and (window == 2) and (window_timer == 0) and ((state == PS_ATTACK_AIR) or (state == PS_ATTACK_GROUND)){
	spawn_hit_fx( x, y, unchrg_fg);
}

if (attack == AT_NSPECIAL_ZET) and (window == 3) and (window_timer == 0) and ((state == PS_ATTACK_AIR) or (state == PS_ATTACK_GROUND)){
	spawn_hit_fx( x, y, chrg_fg);
}

if (attack == AT_NSPECIAL_ELLI) and (window == 2) and ((state == PS_ATTACK_AIR) or (state == PS_ATTACK_GROUND)){
draw_sprite_ext(sprite_get("AT_NSPECIAL_ELLI_FIST"),0,x+spr_dir*16,y,1,1,bash_angle,c_white,1)
}

if (attack == AT_NSPECIAL_SHOV) and (state == PS_ATTACK_AIR) {
draw_sprite_ext(sprite_get("AT_NSPECIAL_SHOV_RIBBON_FLAP"),(get_gameplay_time() mod 4),x+(spr_dir*-52),y-88,spr_dir,1,0,c_white,1)
}


if MyPuddle != noone and (MyPuddle.state == 0 or MyPuddle.state ==  1 or MyPuddle.state == 2) {
draw_sprite(MyPuddle.coolsprite,MyPuddle.coolindex,MyPuddle.x,MyPuddle.y+12)
//draw_debug_text(x-8,y+88,string(MyPuddle.coolindex))
}


if MyPuddle != noone and MyPuddle.state == 3 {
draw_sprite_ext(sprite_get("slipstream_spr"),0,0,MyPuddle.y-20,960,MyPuddle.ysize,0,c_white,0.5)
}

if tethering {
var marked_id = ds_list_find_value(marked_list, 0);
draw_sprite_ext(sprite_get("tether_spr"),0,x,y-16,point_distance(x,y,marked_id.x,marked_id.y-16)/92,1,point_direction(x,y,marked_id.x,marked_id.y-16),c_white,1)
}

//if is_ai draw_debug_text(x-8,y+16,string(AIwait))