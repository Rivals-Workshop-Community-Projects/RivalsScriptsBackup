/*
Welcome to the state machine

//labels & stuff
-State -1: invisible/intangicle (for being carried & stuff)
-state 1: idle
-state 2: hurt
-state 3: freefall
-state 4: thrown
-state 5: death (visible)
-state 6: death (offscreen)
-state 7: spawn minion

//then animation/stuff handling

*/

//behaviour handling
switch(state) {
	case -2: //debug/placeholder
		if free {
			vsp += grav_speed
			hsp = lerp(hsp,0,air_frict)
        } else {
        	hsp = lerp(hsp,0,ground_frict)
        }
		break;
	
    case -1: //invisible/intangible
    	reset_hitbox();
    	
    
        break;
    
    case 1: //idle
    	proj_immune = false;
        if free { //grabity
            set_state(3)
            vsp += grav_speed
            hsp = lerp(hsp,0,air_frict)
        } else {
        	hsp = lerp(hsp,0,ground_frict)
        }
        minion_spawn_timer_rn += 1
        reset_hitbox();
    	detect_hit();
    	
    	if minion_spawn_timer_rn >= minion_spawn_timer_max && minions_spawn_rn < minions_spawn_max {
    		minion_spawn_timer_rn = 0;
    		set_state(7)
    	}
    	
    	
        break;
    
    case 2: //hurt
    	proj_immune = false;
        if free { //grabity
            vsp += grav_speed
        	hsp = lerp(hsp,0,air_frict)
        } else {
        	hsp = lerp(hsp,0,ground_frict)
        }
        reset_hitbox();
    	detect_hit();
    	
    	if state_timer == hurt_timer {
    		minions_spawn_timer_rn = 0
    		set_state(1)	
    	}
    	die_if_offstage();
        break;
    
    case 3: //freefall
    	proj_immune = false;
        if free { //grabity
            vsp += grav_speed
            hsp = lerp(hsp,0,air_frict)
        } else {
        	hsp = lerp(hsp,0,ground_frict)
        	sound_play(asset_get("sfx_land_light"))
        	spawn_base_dust(x,y,"land")
        	set_state(1)
        }
        reset_hitbox();
    	detect_hit();
    	die_if_offstage();
    	
        break;
    
    case 4: //thrown
    	proj_immune = true;
    	if free {
            vsp += grav_speed
            hsp = lerp(hsp,0,air_frict)
        } else {
        	hsp = lerp(hsp,0,ground_frict)
        	sound_play(asset_get("sfx_land_light"))
        	spawn_base_dust(x,y,"land")
        	set_state(1)
        }
        //later make hitbox
        thrown_hitbox(); //spawn hitbox
        if instance_exists(thrown_hitbox_id) {
        	thrown_hitbox_id.x = x + 5 + hsp;
        	thrown_hitbox_id.y = y - 15 + vsp;
        }
    	detect_hit(); //nooo mooore "nooo mooore getting hit during throw *vineboom*" *vineboom
    	die_if_offstage();
    
        break;
    
    case 5: //death
    	proj_immune = false;
    	hsp = 0;
    	vsp = 0;
    	if state_timer == die_timer {
    		sound_play(asset_get("sfx_orca_crunch"))
    		player_id.houses_amount_rn -= 1;
    		if !player_die {player_id.house_cooldown_rn = player_id.house_cooldown_max;} else {player_id.house_cooldown_rn = 0; }
    		instance_destroy();
    		exit;
    	}
    	reset_hitbox();
    
        break;
        
    case 6: //death 2 water boogaloo
    	proj_immune = false;
    	hsp = 0;
    	vsp = 0;
    	player_id.houses_amount_rn -= 1;
    	player_id.house_cooldown_rn = player_id.house_cooldown_max;
    	sound_play(asset_get("sfx_orca_crunch"))
    	reset_hitbox();
    	instance_destroy();
    	exit;
        break;
        
    case 7: //despicable me
    	proj_immune = false;
    	if free { //grabity
            vsp += grav_speed
            hsp = lerp(hsp,0,air_frict)
        } else {
        	hsp = lerp(hsp,0,ground_frict)
        }
    	//later add minion spawn code
    	reset_hitbox();
    	detect_hit();
    	if state_timer == spawn_timer_spawn {
    		//waga bobo	
    		sound_play(asset_get("mfx_player_found"))
    		var spawn_minion = instance_create(x, y - 10,"obj_article2");
    		minions_spawn_rn += 1;
    		spawn_minion.minion_house = self
    		spawn_base_dust(x,y,"djump")
    	}
    	if state_timer >= spawn_timer_finish {
    		set_state(1);
    	}
    	
    	
    	break;
    
}

//state timer plus equals one
state_timer += 1

//animation handling
switch(state) {
	case -2: //debug idk
    visible = true;
	new_sprite = sprite_get("house_article_idle_lv"+string(house_level))
		break;
	
    case -1: //invisible/intangible
    visible = false;
    new_sprite = sprite_get("house_article_idle_lv"+string(house_level))
        break;
    
    case 1: //idle
    visible = true;
    new_sprite = sprite_get("house_article_idle_lv"+string(house_level))
    image_index = state_timer*idle_anim_speed
    
        break;
    
    case 2: //hurt
    visible = true;
    //make hurt sprite
    new_sprite = sprite_get("house_article_hurt_lv"+string(house_level))
    image_index = ease_linear(0,6,state_timer,hurt_timer)
    
        break;
    
    case 3: //freefall
    visible = true;
    //make sprite
    new_sprite = sprite_get("house_article_fall_lv"+string(house_level))
    image_index = state_timer*fall_anim_speed
    
        break;
    
    case 4: //thrown
    visible = true;
    //make sprite
    new_sprite = sprite_get("house_article_thrown_lv"+string(house_level))
    image_index = state_timer*fall_anim_speed
    
        break;
    
    case 5: //death
    visible = true;
    //make sprite
    new_sprite = sprite_get("house_article_die_lv"+string(house_level))
    image_index = ease_linear(0,6,state_timer,die_timer)
    
        break;
        
    case 6: //death 2 water boogaloo
    visible = false;
    //make sprite
    new_sprite = sprite_get("house_article_idle_lv"+string(house_level))
    	break;
    
    case 7: //spawn
    visible = true;
    //make sprite
    new_sprite = sprite_get("house_article_spawn_lv"+string(house_level))
    image_index = ease_linear(0,6,state_timer,spawn_timer_finish)
    	break;
}

sprite_index = new_sprite
//change offset if on platform for the small polish
if place_meeting(x,y+1,asset_get("par_jumpthrough")) {
	for(var i=0;i<=3;i++) {
		sprite_change_offset("house_article_idle_lv"+string(i), 76, 95);
		sprite_change_offset("house_article_hurt_lv"+string(i), 76, 95);
    	sprite_change_offset("house_article_die_lv"+string(i), 76, 95);
    	sprite_change_offset("house_article_spawn_lv"+string(i), 76, 95);
	}
} else {
	for(var i=0;i<=3;i++) {
		sprite_change_offset("house_article_idle_lv"+string(i), 76, 94);
		sprite_change_offset("house_article_hurt_lv"+string(i), 76, 94);
    	sprite_change_offset("house_article_die_lv"+string(i), 76, 94);
    	sprite_change_offset("house_article_spawn_lv"+string(i), 76, 94);
	}
}
	


#define set_state(_state)
state = _state;
state_timer = 0;

#define detect_hit()
//new hit detection based on a template cause the old one was causing way too much trouble
if hit_lockout <= 0 {
    var article = self;
    //reset hitbox groups when necessary
    with (oPlayer)
        if (state == clamp(state, 5, 6) && window == 1 && window_timer == 1) {
            other.hbox_group[@ player-1][@ attack] = array_create(10,0);
            //with other print_debug(`${article}: reset hb group for ${other.player},${other.attack}`);
        }
    
    var currentHighestPriority = noone;
    with (pHitBox){
    	if player_id != other.player_id{
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
    	}
    }
    
    if instance_exists(currentHighestPriority) with currentHighestPriority {
        sound_play(sound_effect);
        spawn_hit_fx(other.x+hit_effect_x,other.y+hit_effect_y,hit_effect);
        //this handles the knockback; hitstun, speed, etc.
        with other {
            //print_debug(`hit_${article}`);
            //set_a_state is my article state setting function; replace this with yours lol
            hp_rn -= other.type == 2 ? other.damage*0.5 : other.damage;
            hitstun = 5;
            hitstun_full = hitstun;
            minion_spawn_timer_rn = 0;
			if hp_rn <= 0 {
				set_state(5); //die
			} else {
				set_state(2); //ouw
			}
            
            hit_lockout = other.no_other_hit;
            hit_player_obj = other.player_id;
            hit_player_num = other.player;
        }
        //apply hitpause (where applicable)
        var desired_hitstop = 5;
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
} else hit_lockout--;

#define reset_hitbox()

if instance_exists(thrown_hitbox_id) {
    instance_destroy(thrown_hitbox_id);
}

#define thrown_hitbox()
if !instance_exists(thrown_hitbox_id) {
	switch(thrown_hitbox_type) {
		case 1: // nthrow
			thrown_hitbox_id = create_hitbox(AT_NTHROW,1,x,y);
			break;
		
		case 2: // fthrow
			thrown_hitbox_id = create_hitbox(AT_FTHROW,1,x,y);
			break;
		
		case 3: //uthrow
			thrown_hitbox_id = create_hitbox(AT_UTHROW,1,x,y);
			break;
		
		case 4: //dthrow
			thrown_hitbox_id = create_hitbox(AT_DTHROW,1,x,y);
			break;
	}
}

#define die_if_offstage()
if ((x < 0 or x > room_width) or (y < 0 or y > room_height)){
	set_state(6);
}



#define spawn_base_dust
/// spawn_base_dust(x, y, name, dir = 0)
///spawn_base_dust(x, y, name, ?dir)
//This function spawns base cast dusts. Names can be found below.
var dlen; //dust_length value
var dfx; //dust_fx value
var dfg; //fg_sprite value
var dfa = 0; //draw_angle value
var dust_color = 0;
var x = argument[0], y = argument[1], name = argument[2];
var dir = argument_count > 3 ? argument[3] : 0;

switch (name) {
    default: 
    case "dash_start":dlen = 21; dfx = 3; dfg = 2626; break;
    case "dash": dlen = 16; dfx = 4; dfg = 2656; break;
    case "jump": dlen = 12; dfx = 11; dfg = 2646; break;
    case "doublejump": 
    case "djump": dlen = 21; dfx = 2; dfg = 2624; break;
    case "walk": dlen = 12; dfx = 5; dfg = 2628; break;
    case "land": dlen = 24; dfx = 0; dfg = 2620; break;
    case "walljump": dlen = 24; dfx = 0; dfg = 2629; dfa = dir != 0 ? -90*dir : -90*spr_dir; break;
    case "n_wavedash": dlen = 24; dfx = 0; dfg = 2620; dust_color = 1; break;
    case "wavedash": dlen = 16; dfx = 4; dfg = 2656; dust_color = 1; break;
}
var newdust = spawn_dust_fx(x,y,asset_get("empty_sprite"),dlen);
newdust.dust_fx = dfx; //set the fx id
if dfg != -1 newdust.fg_sprite = dfg; //set the foreground sprite
newdust.dust_color = dust_color; //set the dust color
if dir != 0 newdust.spr_dir = dir; //set the spr_dir
newdust.draw_angle = dfa;
return newdust;

