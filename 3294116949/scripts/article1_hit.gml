//

hitstop=0;

//if (hit_player_obj != player_id ){
//	print("not hit by EL FENNEK");
//}


//player_id = fennek
// hit_player_obj = el que golpeo el articulo
if (enemy_hitboxID.type == 1 && (state < 3 || (state == 3 && returning))){
    if (hit_player_obj != player_id){
        returning = false;
        was_hit = true;
        // print("not hit by EL FENNEK");
        if(instance_exists(axe_hitbox)) axe_hitbox.destroyed = true;
        state_timer=0;
        state = 3;
    	is_hittable = false;
    	ignores_walls = true;
    	sprite_index = sprite_get("spinning_axe2");
    	return_magnintude = enemy_hitboxID.kb_value;
    	return_dir = point_direction(x, y, player_id.x, player_id.y);
    	with(enemy_hitboxID){
    	    var _xx = lengthdir_x(point_distance(x, y, other.x, other.y)/2, point_direction(x, y, other.x, other.y));
    	    var _yy = lengthdir_y(point_distance(x, y, other.x, other.y)/2, point_direction(x, y, other.x, other.y));
    	    spawn_hit_fx(x + _xx, y + _yy, hit_effect);
    	    sound_play(sound_effect);
    	    player_id.has_hit = true;
    	    player_id.hitstop = hitpause;
    	    player_id.hitpause = true;
    	    player_id.old_hsp = player_id.hsp;
    	    player_id.old_vsp = player_id.vsp;
    	    other.hitstop = hitpause;
    	    other.hitpause = true;
    	}
    } else if state < 3 {
        // if(enemy_hitboxID.attack == AT_FSPECIAL && enemy_hitboxID.hbox_num == 1){
        //     with(enemy_hitboxID){
        // 	    var _xx = lengthdir_x(point_distance(x, y, other.x, other.y)/2, point_direction(x, y, other.x, other.y));
        // 	    var _yy = lengthdir_y(point_distance(x, y, other.x, other.y)/2, point_direction(x, y, other.x, other.y));
        //     }
        //     player_id.has_hit = true;
        //     if ignited spawn_hit_fx(x + _xx, y + _yy, HFX_ZET_FIRE) else spawn_hit_fx(x + _xx, y - _yy, 302);
        //     sound_play(asset_get("sfx_shovel_hit_med2"));
        //     with(player_id){
        //         set_attack_value(AT_FSPECIAL, AG_NUM_WINDOWS, 7);
        // 		window = 5;
        // 		window_timer = 0;
        // 		destroy_hitboxes();
        // 		move_cooldown[AT_NSPECIAL] = 70;
        // 		fspec_grounded = true;
        // 		hsp = clamp(hsp, -3, 3);
        // 		if other.ignited {
        // // 			burned = true;
        // //     		burnt_id = self;
        // //     		burn_timer = 0;
        //     		sound_play(asset_get("sfx_burnapplied"));
        // 		}
        //     }
        //     if(instance_exists(axe_hitbox)) axe_hitbox.destroyed = true;
        //     instance_destroy(self)
        //     exit;
        // }
    }
}
