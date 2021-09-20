if object_index == obj_stage_main exit;

if get_gameplay_time() == 2{
	
	var spawn_location = 0;
	
	with oPlayer{
		if "url" in self{
			if is_real(url) || string_digits(url) != "" spawn_location += real(url);
		}
	}
	
	spawn_location = spawn_location % 8 + 1;
	
	x = get_marker_x(spawn_location);
	y = get_marker_y(spawn_location);
}

if anim_playing{
	image_index += 0.25;
	if image_index == 7{
		sound_play(sound_get("botw_korok"));
		depth = -5;
	}
	if image_index == 30{
		sound_play(sound_get("botw_korok_2"));
	}
	if image_index >= image_number{
		instance_destroy();
		exit;
	}
}
else{
	hitbox_detection();
}



#define hitbox_detection
//estimated like 80% accurate imo
var article = self;
//reset hitbox groups when necessary
with (oPlayer)
    if (state == clamp(state, 5, 6) && window == 1 && window_timer == 1) {
        other.hbox_group[@ player-1][@ attack] = array_create(10,0);
        //with other print_debug(`${article}: reset hb group for ${other.player},${other.attack}`);
    }

var currentHighestPriority = noone;
with (pHitBox) 
    if `hit_${article}` not in self
        if place_meeting(x,y,other) && (groundedness == 0 || groundedness == 1+free) && hit_priority != 0 {
            if hbox_group == -1 || ( hbox_group != -1 && other.hbox_group[@ orig_player-1][@ attack][@ hbox_group] == 0) {
                //hit
                if currentHighestPriority != noone {
                    if currentHighestPriority.hit_priority < hit_priority
                        currentHighestPriority = self;
                } else {
                    currentHighestPriority = self;
                }
                
                variable_instance_set(self, `hit_${article}`, true);
            }
        } else if (place_meeting(x,y,other) && hbox_group != -1 && other.hbox_group[@ orig_player-1][@ attack][@ hbox_group] == 1) || (hit_priority == 0) {
            //prevent from running hit detection for optimization sake
            //with other print_debug("hit but also not");
            variable_instance_set(self, `hit_${article}`, true);
        }

if instance_exists(currentHighestPriority) with currentHighestPriority {
    sound_play(sound_effect);
    spawn_hit_fx(other.x+hit_effect_x,other.y+hit_effect_y,hit_effect);
    //this handles the knockback; hitstun, speed, etc.
    with other {
        anim_playing = true;
    }
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
    other.hitstop = floor(desired_hitstop);
    if hbox_group != -1 other.hbox_group[@ orig_player-1][@ attack][@ hbox_group] = 1;
}