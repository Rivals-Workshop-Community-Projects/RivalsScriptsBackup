//B - Reversals
if (attack == AT_NSPECIAL || attack == AT_FSPECIAL || attack == AT_DSPECIAL || attack == AT_USPECIAL){
    trigger_b_reverse();
}

if (window == 1){
	can_still_parry = false;
} 

//Attacks that consume stamina (frame 1)
if (attack == AT_USPECIAL && stamina < 30) if (window == 1 && window_timer == 1) stamina += 2;
if (attack == AT_JAB || attack == AT_NAIR || attack == AT_NSPECIAL 
	|| attack == AT_NSPECIAL_2 || attack == AT_DSPECIAL || attack == AT_DSTRONG){
    if (window == 1 && window_timer == 1) stamina += 4.5;
}
if (attack == AT_USTRONG || attack == AT_DSPECIAL_AIR || attack == AT_FSPECIAL_AIR || attack == AT_FSTRONG){
    if (window == 1 && window_timer == 1) stamina += 8;
}
if (attack == AT_FSPECIAL){
    if (window == 3) stamina += 0.25;
}
if (attack == AT_TAUNT){
    stamina -= 0.25;
    if (stamina <= 0) stamina = 0;
}

if (attack == AT_JAB){
    move_cooldown[AT_JAB] = 10;
    if (window == 1 && window_timer >= 4) soft_armor = 10;
    if (window == 2) soft_armor = 8;
    if (window > 2) soft_armor = 0;
}

if (attack == AT_NAIR){
    move_cooldown[AT_NAIR] = 10;
    if (window == 1 && window_timer >= 8) soft_armor = 9;
    if (window == 2) soft_armor = 7;
    if (window > 2) soft_armor = 0;
}

if (attack == AT_DSPECIAL){
    if (window == 1) soft_armor = 9;
    if (window == 2 || window == 3) soft_armor = 0;
    if (window > 3) soft_armor = 15;
}


if (attack == AT_DTILT){
    if ((window == 1 && window_timer >= 7)){
        soft_armor = 8;
    }
    if (window == 2 && window_timer >= 4){
        soft_armor = 0;
    }
}

if (attack == AT_USTRONG){
    if (window == 4) sound_stop(sound_get("ustrong_sfx"));
//    if (window == 4 && window_timer >= 8) sound_stop(sound_get("ustrong_hit"));
    if (ustrong_grab == true){
        hit_player_obj.x = lerp(hit_player_obj.x, x-15*spr_dir, 0.3);
    	hit_player_obj.y = lerp(hit_player_obj.y, y-110, 0.3);
    }
}

if (attack == AT_DSTRONG){
    if (window >= 3){
        sound_stop(sound_get("miracle_force_start"));
        move_cooldown[AT_DSTRONG] = 15;
    }
}

//print(backstab);

if (attack == AT_NSPECIAL){
    if (window == 1) nspecial_destroy = false;
    if (window >= 2 && window <= 6){
        nspecial_shoot = false;
        if (window == 2 && window_timer == 1) instance_create(x, y-100, "obj_article1").orb_number = 1;
        if (window == 3 && window_timer == 1){
            instance_create(x-30*spr_dir, y-70, "obj_article1").orb_number = 2;
            stamina += 2;
        } 
        if (window == 4 && window_timer == 1){
            instance_create(x+30*spr_dir, y-70, "obj_article1").orb_number = 3;
            stamina += 2;
        } 
        if (window == 5 && window_timer == 1){
            instance_create(x-50*spr_dir, y-40, "obj_article1").orb_number = 4;
            stamina += 2;
        } 
        if (window == 6 && window_timer == 1){
            instance_create(x+50*spr_dir, y-40, "obj_article1").orb_number = 5;
            stamina += 2;
        } 
        if (!special_down || stamina >= 28){
            window += 5;
            window_timer = 0; 
        }
        
    }
    if (window >= 1 && window < 12) nspecial_casting = true;
    if (window >= 12){
        nspecial_casting = false;
        sound_stop(sound_get("nspecial_charge"));
    } 
}

if (attack == AT_NSPECIAL_2){
    if (window == 1 && window_timer == get_window_value(AT_NSPECIAL_2, 1, AG_WINDOW_LENGTH)){
        nspecial_shoot = true;
        nspecial_casted = false;
    }
}

if (attack == AT_DSPECIAL){
    
    if (backstab == true){
        set_hitbox_value(AT_DSPECIAL, 1, HG_DAMAGE, 10);
        set_hitbox_value(AT_DSPECIAL, 1, HG_BASE_KNOCKBACK, 6);
        set_hitbox_value(AT_DSPECIAL, 1, HG_BASE_HITPAUSE, 20);
        set_hitbox_value(AT_DSPECIAL, 1, HG_EXTRA_HITPAUSE, 45);
        set_hitbox_value(AT_DSPECIAL, 1, HG_VISUAL_EFFECT, 305);
        set_hitbox_value(AT_DSPECIAL, 1, HG_HIT_SFX, sound_get("kill2"));
        set_hitbox_value(AT_DSPECIAL, 2, HG_HIT_SFX, sound_get("riposte_stab"));
    }
    if (backstab == false){
        set_hitbox_value(AT_DSPECIAL, 1, HG_DAMAGE, 4);
        set_hitbox_value(AT_DSPECIAL, 1, HG_BASE_KNOCKBACK, 4);
        set_hitbox_value(AT_DSPECIAL, 1, HG_BASE_HITPAUSE, 5);
        set_hitbox_value(AT_DSPECIAL, 1, HG_EXTRA_HITPAUSE, 0);
        set_hitbox_value(AT_DSPECIAL, 1, HG_VISUAL_EFFECT, 301);
        set_hitbox_value(AT_DSPECIAL, 1, HG_HIT_SFX, asset_get("sfx_blow_weak1"));
        set_hitbox_value(AT_DSPECIAL, 2, HG_HIT_SFX, asset_get("sfx_blow_weak1"));
    }
    if (window == 4 && window_timer == 16){
        if (left_down) spr_dir = -1;
	    if (right_down) spr_dir = 1;
    }
}

if (attack == AT_DSPECIAL_AIR){
    can_wall_jump = true;
    if (free && window == 3 && state_timer > 30){ 
    	can_jump = true;
    	can_shield = true;
    	if((special_down && up_down)){
			set_attack(AT_USPECIAL);
		}
    }
}

if (attack == AT_USPECIAL){
    can_wall_jump = true;
    can_fast_fall = false;
    if (window == 5 && window_timer == get_window_value(AT_USPECIAL, 5, AG_WINDOW_LENGTH)) set_state(PS_PRATFALL);

    if (window == 2 && window_timer >= 4 && (!special_down || stamina >= 26)){
        window = 3;
        window_timer = 0;
    }
    if (window == 2 && window_timer == get_window_value(AT_USPECIAL, 2, AG_WINDOW_LENGTH)) stamina += 5;
    
    if (window >= 3) sound_stop(sound_get("nspecial_charge"));
    
    if (stamina >= 30){
    	set_attack_value(AT_USPECIAL, AG_SPRITE, sprite_get("uspecial2"));
    	set_window_value(AT_USPECIAL, 3, AG_WINDOW_SFX, asset_get("sfx_clairen_fspecial_dash"));
    	set_window_value(AT_USPECIAL, 4, AG_WINDOW_VSPEED, -10);
		set_hitbox_value(AT_USPECIAL, 1, HG_DAMAGE, 5);
		set_hitbox_value(AT_USPECIAL, 1, HG_KNOCKBACK_SCALING, .5);
		set_hitbox_value(AT_USPECIAL, 1, HG_HITPAUSE_SCALING, .5);
		set_hitbox_value(AT_USPECIAL, 1, HG_VISUAL_EFFECT, 0);
		set_hitbox_value(AT_USPECIAL, 1, HG_HIT_SFX, sound_get("hitSFX1"));
		set_hitbox_value(AT_USPECIAL, 2, HG_DAMAGE, 5);
		set_hitbox_value(AT_USPECIAL, 2, HG_KNOCKBACK_SCALING, .5);
		set_hitbox_value(AT_USPECIAL, 2, HG_HITPAUSE_SCALING, .5);
		set_hitbox_value(AT_USPECIAL, 2, HG_VISUAL_EFFECT, 0);
		set_hitbox_value(AT_USPECIAL, 2, HG_HIT_SFX, sound_get("hitSFX1"));
    }
    else {
    	reset_attack_value(AT_USPECIAL, AG_SPRITE);
    	reset_window_value(AT_USPECIAL, 3, AG_WINDOW_SFX);
    	reset_window_value(AT_USPECIAL, 4, AG_WINDOW_VSPEED);
		reset_hitbox_value(AT_USPECIAL, 1, HG_DAMAGE);
		reset_hitbox_value(AT_USPECIAL, 1, HG_KNOCKBACK_SCALING);
		reset_hitbox_value(AT_USPECIAL, 1, HG_HITPAUSE_SCALING);
		reset_hitbox_value(AT_USPECIAL, 1, HG_VISUAL_EFFECT);
		reset_hitbox_value(AT_USPECIAL, 1, HG_HIT_SFX);
		reset_hitbox_value(AT_USPECIAL, 2, HG_DAMAGE);
		reset_hitbox_value(AT_USPECIAL, 2, HG_KNOCKBACK_SCALING);
		reset_hitbox_value(AT_USPECIAL, 2, HG_HITPAUSE_SCALING);
		reset_hitbox_value(AT_USPECIAL, 2, HG_VISUAL_EFFECT);
		reset_hitbox_value(AT_USPECIAL, 2, HG_HIT_SFX);
    }
}

if (attack == AT_FSPECIAL){
    can_wall_jump = true;
    if (window == 1) fspecial_push = 0;
    if (window == 2 || window == 3){
    	if (state_timer%7 == 0){
    		spawn_base_dust(x-20*spr_dir,y,"dash_start",1*spr_dir)
    	}
        if (fspecial_push > 0 && hitpause == false){
            x -= 2*fspecial_push*spr_dir;
            stamina += 0.5;
            if (fspecial_push != 0) fspecial_push -= 0.5;
            else {
                window = 2;
                window_timer = 0;
            }
        }
        if (stamina >= 30 || shield_pressed){
            window = 7;
            window_timer = 0;
            destroy_hitboxes();
        }
        if (special_pressed || attack_pressed){
            window = 4;
            window_timer = 0;
            hsp = 7*spr_dir;
            destroy_hitboxes();
            stamina += 5;
        }
        if (has_hit || free) can_jump = true;
    }
    else sound_stop(asset_get("sfx_kragg_roll_loop"));
    if (window == 7 && window_timer < 2 && fspecial_push > 0){
        hsp = -fspecial_push*spr_dir;
    }
    if (window >= 2 && window <= 5) soft_armor = 15;
    else soft_armor = 0;
}

if (attack == AT_FSPECIAL_AIR){
    if (window == 2 && (special_pressed || attack_pressed)){
    	window = 3;
    	window_timer = 0;
    	hsp = 3*spr_dir;
    }
    if (window == 5 && !free){
    	hurtboxID.sprite_index = sprite_get("fspecial_hurt");
    	attack = AT_FSPECIAL;
    	window = 6;
    }
    if (window >= 2 && window <= 4) soft_armor = 9;
    else soft_armor = 0;
    can_fast_fall = false;
    can_wall_jump = true;
}

if (attack == AT_TAUNT){
    if (taunt_down && window == 2) window_timer = 1;
}

//spawn_base_dust(x +40*spr_dir,y,"dash_start",1* -spr_dir)
#define spawn_base_dust
/// @param {undefined} x
/// @param {undefined} y
/// @param {undefined} name
/// @param {undefined} dir = 0
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
