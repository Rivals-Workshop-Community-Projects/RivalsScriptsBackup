//print("Draw start "+string(play)+" "+string(current_time));
	var xsc = image_xscale * scale * 2
	var ysc = image_yscale * scale * 2
	
	var orig_y = y;
	var orig_xsc = image_xscale;
	var orig_ysc = image_yscale;
	var orig_img = image_index;
	var orig_ang = image_angle;
	var orig_alp = image_alpha;
	
	image_index = frame_off+floor(orig_img)*framediv;
	image_xscale = xsc;
	image_yscale = ysc;
	image_alpha = 1;
	image_angle += draw_angle;
	
	draw_self(); //shadow
	
	if battle_hp > noone && battle_hp <= 0 image_alpha = 0.3;
if instance_exists(owner) with (owner) shader_start();

	y -= z;

for (var i = 0; i < framediv-1; i++) {
	image_index = (i+1)+frame_off+floor(orig_img)*framediv;
	
	draw_self();
	y -= (image_yscale);
}

	y = orig_y;
	image_angle = orig_ang;
if get_local_setting(SET_HUD_SIZE) != 0 {
	draw_sprite_ext(sprite_get("arrow"),0,x,y,image_xscale,image_yscale,image_angle,get_player_hud_color(play),1);
}

	
	image_xscale = orig_xsc;
	image_yscale = orig_ysc;
	image_index = orig_img;
	image_alpha = 0;
	

if instance_exists(owner) with (owner) {
shader_end();
}
//print("Draw end "+string(play)+" "+string(current_time));
if ai_waypoint != noone && ai_waypoint.visible {
draw_debug_text(floor(x),floor(y), string(ai_waypoint));
draw_sprite(sprite_get("car_hurt"), 0, ai_waypoint.x_offset, ai_waypoint.y_offset);
}