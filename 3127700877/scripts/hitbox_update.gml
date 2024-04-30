// hitbox_update.gml
// https://rivalslib.com/workshop_guide/programming/reference/scripts/hitbox_scripts.html#hitbox-update-gml
// Called every frame for each of your character's hitboxes, from the hitbox's perspective.



// NSPECIAL
 

if (attack == AT_NSPECIAL) {
    if(!has_rune("K") || homing_target == noone){
        if(vsp < -v_limit) grav = abs(grav);
        if(vsp > v_limit) grav = -abs(grav);
        if(has_rune("K") && homing_target == noone){
            homing_target = locate_nearest_player();
            if(homing_target != noone){
            	magnitude = hsp;
            	aim_dir = point_direction(x, y, x + hsp, y + vsp * spr_dir);
            	orig_dir = spr_dir;
            }
        }
    }
    if(has_rune("K") && homing_target != noone){
        if(!instance_exists(homing_target) || was_parried || (instance_exists(homing_target) && (homing_target.state == PS_RESPAWN || homing_target.state == PS_DEAD))){
            destroyed = true;
        }
		var target_dir = point_direction(x, y, homing_target.x, homing_target.y-homing_target.char_height/2) + 180 * (spr_dir == -1);
		if(target_dir > 360) target_dir -= 360;
		if(target_dir < 0) target_dir += 360;
		aim_dir += angle_difference(target_dir, aim_dir) * .2;
		if(aim_dir > 360) aim_dir -= 360;
		if(aim_dir < 0) aim_dir += 360;
		if(aim_dir > 90 && aim_dir < 270) {
		    spr_dir *= -1;
		    aim_dir += 180;
		}
		if(aim_dir > 360) aim_dir -= 360;
		if(aim_dir < 0) aim_dir += 360;
		draw_xscale = spr_dir;
		proj_angle = aim_dir;
		hsp = lengthdir_x(magnitude * spr_dir * orig_dir, aim_dir);
		vsp = lengthdir_y(magnitude * spr_dir * orig_dir, aim_dir);
    }
}

if(attack == AT_USPECIAL){
    if(spr_dir == 1) proj_angle = point_direction(x, y, x + hsp, y + vsp);
    if(spr_dir == -1) proj_angle = point_direction(x, y, x - hsp, y - vsp);
}

if (attack == AT_DSPECIAL_AIR){
    player_id.move_cooldown[AT_DSPECIAL] = 60;
    if(vsp > 10 && !has_rune("G")) vsp = 10;
    if(hitbox_timer == 5){
        sound_play(asset_get("sfx_frog_fstrong"), false, false, true, .9);
    }
    if(position_meeting(x, y + 15 + vsp, asset_get("par_block")) || position_meeting(x, y + 15 + vsp, asset_get("par_jumpthrough"))){
        destroyed = true;
        if(instance_exists(player_id.sludge_puddle_id)){
            player_id.sludge_puddle_id.state = 99;
            player_id.sludge_puddle_id.state_timer = 0;
        }
        var _yy = y;
        while(!position_meeting(x, _yy, asset_get("par_block")) && !position_meeting(x, _yy, asset_get("par_jumpthrough"))){
            _yy++;
        }
        player_id.sludge_puddle_id = instance_create(x, _yy, "obj_article1");
        sound_play(asset_get("sfx_frog_dstrong"), false, false, true, .9);
        sound_play(asset_get("sfx_orcane_fspecial_pud"), false, false, true, .9);
        sound_play(asset_get("sfx_waterhit_medium"), false, false, true, .9);
        player_id.sludge_puddle_id.splash_box = create_hitbox(AT_DSPECIAL, 1, player_id.sludge_puddle_id.x, player_id.sludge_puddle_id.y - 15);
    }
    if(y > get_stage_data(SD_BOTTOM_BLASTZONE_Y) + 30){
        destroyed = true;
        move_cooldown[AT_DSPECIAL] = 30;
    }
}

if(attack == AT_NAIR || attack == AT_NSPECIAL_AIR){
    hit_priority = (image_index > 10 ? 0 : prev_priority);
}

if(attack == AT_FTILT){
    hit_priority = (image_index > 10 ? 0 : prev_priority);
}

if(attack == AT_UAIR){
    hit_priority = (image_index > 10 ? 0 : prev_priority);
}

if(attack == AT_FAIR){
    hit_priority = (image_index > 10 ? 0 : prev_priority);
}

if(attack == AT_BAIR){
    hit_priority = (image_index > 10 ? 0 : prev_priority);
}

if(attack == AT_FSPECIAL && hbox_num == 3){
	for(var i = 0; i < 20; i++){
		can_hit[i] = false;
	}
	with(oPlayer){
		if self != other.player_id {
			other.can_hit[player] = perfect_dodging;
		}
	}
}

#define playSoundFx(sound, looping, panning, volume, pitch) 
    sound_play(asset_get(sound), looping, panning, volume, pitch);


#define stopSoundFx(sound) 
    sound_stop(asset_get(sound));



#define refresh_hitbox()

    if (is_array(can_hit))
    {
        for (var p = 0; p < array_length(can_hit); p++)
        { 
            can_hit[p] = true; 
        }
        stop_effect = false;
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