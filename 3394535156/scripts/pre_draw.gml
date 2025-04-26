// pre_draw.gml
// this script draws sprites BEHIND the player character

// if (state == PS_ATTACK_AIR or state == PS_ATTACK_GROUND) and attack == AT_FSPECIAL and window == 1{
//     gpu_push_state()
//     gpu_set_fog(1, c_gray, 0, 1)
    
//     draw_sprite_ext(sprite_index, image_index, x + (fspecial_distance * spr_dir), y, spr_dir, image_yscale, 0, c_white, 1)
    
//     gpu_pop_state()
// }

// respawn plat
if ((state == PS_RESPAWN) || ((attack == AT_TAUNT || attack == AT_TAUNT_2) && free)) && !place_meeting(x,y+4,(asset_get("par_block"))) &&(sprite_index == sprite_get("idle") || sprite_index == sprite_get("taunt") || sprite_index == sprite_get("taunt_gold")){
    draw_sprite(sprite_get("plat_vat"), (get_gameplay_time() / 6), x, y);
    //draw_sprite(sprite_get("plat"), 0, x, y);
}

shader_start()

with pHitBox {
	if player_id != other or attack != AT_NSPECIAL or "powder" not in self continue;
	
	if powder != 3 continue;
	if hitbox_timer < polite_threshold {
		draw_sprite_ext(sprite_get("bolt_strong"),hitbox_timer / 3, x, y, 1,1,0,c_white,1)
	}
	draw_sprite(sprite_get("bolt"),hitbox_timer / 4, x, y)
}
shader_end()

gpu_push_state()
gpu_set_blendmode(bm_add)
gpu_set_fog(1, /*#*/$FFFCC7, 0, 1)
drawAfterimages()

var num = instance_number(pHitBox);
for (var i = 0; i < num; i++) {
	var bomb = instance_find(pHitBox, i);
	if bomb.player_id != self or !bomb.can_hit_self continue;

	var j=0;
	
	repeat 4 {
	    var len_x, len_y;
	    len_x = lengthdir_x(2,j);
	    len_y = lengthdir_y(2,j);
	    draw_sprite_ext(bomb.sprite_index, bomb.image_index, bomb.x+len_x, bomb.y+len_y, bomb.spr_dir, 1, bomb.proj_angle, c_white, 1)
	
	    j+=90
	}
}
gpu_pop_state()

#define drawAfterimages()
for (var i = 0; i < ds_list_size(afterimages); i++) {
	var afterimage = afterimages[| i];
	draw_sprite_ext(afterimage.sprite, afterimage.frame, afterimage.x, afterimage.y, afterimage.spr_dir, 1, 0, c_white, afterimage.alpha)
}