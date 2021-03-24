//update
if get_gameplay_time() == 1 set_attack(AT_TAUNT_2);

if (state != PS_ATTACK_AIR && state != PS_ATTACK_GROUND) {
    nspec_aval = true;
    //shadow_cooldown = 0;
    //use_nspec = true;
    
} else {
	//if special_down && use_nspec == false use_nspec = true;
}
if state != PS_DEAD && state != PS_RESPAWN {
if state != PS_HITSTUN && (special_down || use_nspec) && state != PS_PRATFALL && state != PS_PRATLAND && !((state == PS_ATTACK_AIR || state == PS_ATTACK_GROUND) && (attack == AT_USPECIAL || attack == AT_DSPECIAL)) && prev_attack != AT_FSPECIAL && prev_attack != AT_NSPECIAL && shadow_cooldown == 0 {
    if !instance_exists(shadow) && !(get_attack_value(prev_attack,AG_CATEGORY) == 1 && !free) {
        sound_play(sound_get("elu"));
        shadow = instance_create(x,y,"obj_article2");
        shadow_sprite = get_attack_value(prev_attack,AG_SPRITE);
        //hurt_sprite = get_attack_value(prev_attack,AG_HURTBOX_SPRITE);
        with shadow {
            x = other.x;
            y = other.y;
            djumps = other.djumps;
            _free = other.free;
            if other.hitstop > 0 {
                _hsp = other.old_hsp;
                _vsp = other.old_vsp;
            } else {
                _hsp = other.hsp;
                _vsp = other.vsp;
            }
           // hurt_sprite = other.hurt_sprite;
            render_sprite = other.shadow_sprite;
            spr_dir = other.spr_dir;
            if state != 5 || state != 6 attack = other.prev_attack;
            else attack = other.attack;
            if other.left_down || other.right_down hsp = other.shadow_speed*(other.right_down-other.left_down);
            //pstate = other.state;
        }
        //shadow_cooldown = 1;
    } else if nspec_aval && instance_exists(shadow) {
    	if (state != 5 && state != 6) || has_hit {
	        x = shadow.x;
	        y = shadow.y;
	        hsp = shadow._hsp;
	        vsp = shadow._vsp;
	        old_hsp = shadow._hsp;
	        old_vsp = shadow._vsp;
	        
	        djumps = shadow.djumps;
	        free = shadow._free;
	        
	        attack_end();
	        with asset_get("pHitBox") {
	        	if player_id == other.id && type == 0 instance_destroy();
	        }
	        has_airdodge_prev = has_airdodge;
	        set_state(PS_IDLE); //Reset Hitboxes
	        
	        if free set_state(PS_ATTACK_AIR);
	        else {
	        	set_state(PS_ATTACK_GROUND);
	        	has_airdodge = has_airdodge_prev;
	        }
	        attack = shadow.attack;
	        //hurtbox_spr = shadow.hurt_sprite;
	        window = 1;
	        window_timer = 0;
	        spr_dir = shadow.spr_dir;
	        shadow.state = 2;
	        shadow_cooldown = shadow_cooldown_max;
	        sound_play(sound_get("weird_hit1"));
	        use_nspec = false;
    	} else use_nspec = true;
        
    }
    nspec_aval = false;
    shadow_cooldown = shadow_cooldown_max;
} 
move_cooldown[AT_FSPECIAL] = 999;
move_cooldown[AT_NSPECIAL] = 999;

//if state == PS_WALK_TURN && state_timer == 5 set_state(PS_IDLE);
if stat_reset {
    if uspecial_state {
        uspecial_timer = uspecial_time;
        //spr_dir_old = ceil(spr_dir);
        //spr_dir = 0;
        djumps = 0;
    } else {
        //spr_dir = 0;
        djumps = 0;
        //set_state(PS_IDLE);
    }
    stat_reset = 0;
}

if uspecial_state {
    spr_dir = 0;
    has_walljump = true;
    if attack_down || special_down {
        attack = AT_USPECIAL;
        set_state(PS_ATTACK_AIR);
        window_timer = 0;
        window = 2;
        uspecial_state = 0; 
        stat_reset = 1;
        
    }
    if uspecial_timer > 0 uspecial_timer--;
    else if state != 5 && state != 6 {
        attack = AT_USPECIAL;
        //window = 1;
        //window_timer = 1;
        if free set_state(PS_ATTACK_AIR);
        else set_state(PS_ATTACK_GROUND);
    }
}
}

if dtilt_end && (state != PS_ATTACK_GROUND || attack != AT_DTILT || window == 1) {
    x += spr_dir_prev*dtilt_offset[0];
    y -= dtilt_offset[1];
    set_state(PS_IDLE_AIR);
    dtilt_end = false;
}

if !free || state == PS_WALL_JUMP dair_count = 0;
if attack != AT_NSPECIAL && attack != AT_FSPECIAL && attack != AT_USPECIAL prev_attack = attack;
if shadow_cooldown > 0 shadow_cooldown--;

if (state != 5 && state != 6) || (attack != AT_NAIR) sound_stop(asset_get("sfx_ell_propeller_loop_light"));

if spr_dir_prev != spr_dir spr_dir_prev = spr_dir;

if state == PS_CROUCH ground_friction = ground_friction_crouch;
else ground_friction = ground_friction_init;

if state == PS_DASH || state == PS_DASH_TURN {
    if state_timer == 1 sound_play(sound_get("crackling"),true);
} else sound_stop(sound_get("crackling"));

if state == PS_PARRY {
	if state_timer == 1 char_height = dspec_char_height; 
	if state_timer == 24 char_height = char_heigh_orig;
}

glitch_switch++;
if instance_exists(shadow) && glitch_switch % glitch_switch_interval == 0 {
    glitch_xp = glitch_x;
	glitch_yp = glitch_y;
	glitch_xpp = glitch_xp;
	glitch_ypp = glitch_yp;
	glitch_x_offp = glitch_x_off;
	glitch_y_offp = glitch_y_off;
	glitch_x = random_func_2(0,6,true);
	glitch_y = random_func_2(1,6,true)+1;
	glitch_x_off = random_func_2(2,6,true);
	glitch_y_off = random_func_2(3,6,true)+1;
	//print_debug(string(glitch_x));
}
