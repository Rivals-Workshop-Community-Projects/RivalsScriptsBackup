//article1 predraw

if (state == 1){
	if (shadowtier>0){
		var tmpindex = (0 + state_timer * 3 / state_end) + ((shadowtier-1)*3);
		draw_sprite_ext( sprite_get("door_shadow"), tmpindex, x, y, spr_dir, 1, 0, -1, 1 ) 
	}
}
if (state >= 4){
	draw_sprite_ext( sprite_get("door_inside"), door_kind, x, y, spr_dir*2, 2, 0, -1, 1 ) 
}