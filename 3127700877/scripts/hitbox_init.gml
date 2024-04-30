// hitbox_init.gml
// https://rivalslib.com/workshop_guide/programming/reference/scripts/hitbox_scripts.html#hitbox-init-gml
// Called when your character creates a hitbox, from the hitbox's perspective.

if(attack == AT_NSPECIAL){
    v_limit = 6;
    player_id.move_cooldown[AT_NSPECIAL] = 120;
    homing_target = noone;
    if(has_rune("K")){
        homing_target = locate_nearest_player();
    	magnitude = hsp;
    	aim_dir = point_direction(x, y, x + hsp, y + vsp * spr_dir);
    	orig_dir = spr_dir;
    }
}

if(attack == AT_BAIR || attack == AT_FTILT || attack == AT_UAIR || attack == AT_FAIR || attack == AT_NAIR || attack == AT_NSPECIAL_AIR){
    prev_priority = hit_priority;
    if((attack == AT_NAIR || attack == AT_NSPECIAL_AIR) && hbox_num >= 4 && hbox_num <= 6){
        nair_up_hbox = true;
        spr_dir *= -1;
        draw_xscale *= -1;
    } else {
        sound_play(asset_get("sfx_frog_fspecial_fire"), false, false, true, 1);
        sound_play(asset_get("sfx_frog_nspecial_cast"), false, false, true, 2);
    }
    orig_hsp = hsp;
    orig_vsp = vsp;
}

if(attack == AT_DSPECIAL_AIR){
    sound_play(asset_get("sfx_ori_dsmash_skitter_sein"), false, false, true, .9);
    x = player_id.x;
    y = get_stage_data(SD_TOP_BLASTZONE_Y) - 20;
}

#define locate_nearest_player
var shortest_dist = 9999;
var shortest_id = noone;

with (oPlayer) {
	if (player != other.player_id.player) {
		var curr_dist = point_distance(x,y,other.x,other.y);
		if (curr_dist < shortest_dist && state != PS_DEAD && state != PS_RESPAWN && !clone) {
			shortest_dist = curr_dist;
			shortest_id = id;
		}
	}
}

return shortest_id;