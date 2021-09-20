if ("article_owner" in self){
	flicker = 0;
	
	if instance_exists(article_owner) && !article_owner.hitpause && (article_owner.state == PS_ATTACK_AIR || (article_owner.state == PS_ATTACK_GROUND && article_owner.free)){
		x = article_owner.x;
		y = article_owner.y;
		in_hitpause = article_owner.hitstop;
		spr_dir = article_owner.spr_dir;
	}
	else{
		instance_destroy();
		exit;
	}
}



if is_spear{
	
	if floor(hitpause_timer) == 1{
		if !damage_spear(){
		
			var a = instance_create(x, y, "obj_article2");
			a.fake_image_angle = ((proj_angle - 180 * (spr_dir == -1)) + 360) % 360;
			a.spr_dir = spr_dir;
			a.hsp = -5 * spr_dir;
			a.vsp = -5;
			a.spear_durability = spear_durability;
			a.fake_image_index = image_index;
			a.phone_offscr_index = a.fake_image_index; // image_index of the icon
		}
	}
	
	if hitpause_timer == 1{
		
		player = orig_player;
		player_id = orig_player_id;
		
		instance_destroy();
		exit;
	}
	
	if hitpause_timer{ // wobble during hitpause
		proj_angle = original_proj_angle + sin(hitpause_timer * 2) * min(4, lerp(0, 6, (hitpause_timer - 6) / 10))
	}
	
	if !in_hitpause{
		hitbox_detection();
		
		if place_meeting(x, y, asset_get("plasma_field_obj")){
			hitpause_timer = 3;
			damage_spear();
			sound_play(asset_get("sfx_clairen_hit_weak"))
		}
		
		if place_meeting(x + hsp, y, asset_get("par_block")) || place_meeting(x, y, asset_get("par_jumpthrough")) && !place_meeting(x, y - vsp, asset_get("par_jumpthrough")) && vsp > 0{
		
			var a = instance_create(x, y, "obj_article2");
			a.fake_image_angle = ((proj_angle - 180 * (spr_dir == -1)) + 360) % 360;
			a.spr_dir = spr_dir;
			a.hsp = hsp;
			a.vsp = vsp;
			a.spear_durability = spear_durability;
			a.fake_image_index = image_index;
			a.phone_offscr_index = a.fake_image_index; // image_index of the icon
			
			instance_destroy();
			exit;
		}
	
		has_processed = true;
		
		vsp += (has_hit_player ? 1.5 : 0.4);
		hsp -= (has_hit_player ? 0.1 : 0.05) * sign(hsp);
		
		proj_angle = point_direction(0, 0, hsp, vsp) - 90 * spr_dir + 180 * (spr_dir == -1);
		original_proj_angle = proj_angle; // for wobbling
		
		if x < player_id.phone_blastzone_l || x > player_id.phone_blastzone_r || y > player_id.phone_blastzone_b{
			var a = instance_create(x, y, "obj_article3");
			a.message_type = 1;
			a.spear_num = image_index;
			instance_destroy();
			exit;
		}
	}
}



in_hitpause = false;

if hitpause_timer{
	in_hitpause = true;
	hitpause_timer--;
}



#define damage_spear

spear_durability--;

if spear_durability == 0{
	var a = instance_create(x, y, "obj_article3");
	a.message_type = 1;
	spawn_hit_fx(x + lengthdir_x(32, proj_angle + 90), y + lengthdir_y(32, proj_angle + 90), player_id.vfx_spear_break_2);
	var h = spawn_hit_fx(x + lengthdir_x(-16, proj_angle + 90), y + lengthdir_y(-16, proj_angle + 90), player_id.vfx_spear_break);
	h.draw_angle = proj_angle;
	return true;
}

if spear_durability == 1{
	instance_create(x, y, "obj_article3");
}

return false;



#define hitbox_detection
//estimated like 80% accurate imo
var article = self;
//reset hitbox groups when necessary
with (oPlayer)
    if (state == clamp(state, 5, 6) && window == 1 && window_timer == 1) {
        other.hbox_group2[@ player-1][@ attack] = array_create(10,0);
        //with other print_debug(`${article}: reset hb group for ${other.player},${other.attack}`);
    }

var currentHighestPriority = noone;
with (pHitBox) 
    if `hit_${article}` not in self && player != other.player
        if place_meeting(x,y,other) && (groundedness == 0 || groundedness == 1+free) && hit_priority != 0 {
            if hbox_group == -1 || ( hbox_group != -1 && other.hbox_group2[@ orig_player-1][@ attack][@ hbox_group] == 0) {
                //hit
                if currentHighestPriority != noone {
                    if currentHighestPriority.hit_priority < hit_priority
                        currentHighestPriority = self;
                } else {
                    currentHighestPriority = self;
                }
                
                variable_instance_set(self, `hit_${article}`, true);
            }
        } else if (place_meeting(x,y,other) && hbox_group != -1 && other.hbox_group2[@ orig_player-1][@ attack][@ hbox_group2] == 1) || (hit_priority == 0) {
            //prevent from running hit detection for optimization sake
            //with other print_debug("hit but also not");
            variable_instance_set(self, `hit_${article}`, true);
        }

if instance_exists(currentHighestPriority) with currentHighestPriority {
    sound_play(sound_effect);
    spawn_hit_fx(other.x+hit_effect_x,other.y+hit_effect_y,hit_effect);
    //apply hitpause (where applicable)
    var desired_hitstop = hitpause + damage * hitpause_growth * 0.05;
    if type == 1 with player_id {
        old_vsp = vsp;
        old_hsp = hsp;
        hitpause = true;
        has_hit = true;
        if hitstop < desired_hitstop {
            hitstop = desired_hitstop;
            hitstop_full = desired_hitstop;
        }
    }
    other.hitpause_timer = floor(desired_hitstop);
    if hbox_group != -1 other.hbox_group2[@ orig_player-1][@ attack][@ hbox_group] = 1;
    with other{
    	if damage_spear(){
    		instance_destroy();
    		exit;
    	}
    }
}