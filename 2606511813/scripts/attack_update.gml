// attack_update

var window_length = get_window_value(attack, window, AG_WINDOW_LENGTH)

//B - Reversals
if (attack == AT_NSPECIAL || attack == AT_FSPECIAL || attack == AT_DSPECIAL || attack == AT_DTHROW || attack == AT_USPECIAL || attack == AT_DSPECIAL_2){
    trigger_b_reverse();
}
	
if attack == AT_UTILT {
    if window <= 2 can_fast_fall = false;
    else can_fast_fall = true;
    
    if window >= 3 can_move = true;
    else can_move = false;
    
    if window > 1 && !free {
        if has_hit set_state(PS_LAND)
        else {
            set_state(PS_LANDING_LAG)
            state_timer = 2;
        }
    }
}

if attack == AT_NAIR {
    if window == 3 {
        if window_timer == 3 sound_stop(sound_get("nair"));
    }
    
    if window == 1 {
        reset_hitbox_value(AT_NAIR, 1, HG_HITBOX_GROUP);
        reset_hitbox_value(AT_NAIR, 2, HG_HITBOX_GROUP);
        //reset_hitbox_value(AT_NAIR, 3, HG_HITBOX_GROUP);
        //reset_hitbox_value(AT_NAIR, 4, HG_HITBOX_GROUP);
    }
    
    //spawn multihits
    if window == 2 {
        if window_timer > 1 && window_timer < 10 && window_timer mod 2 == 0 && !hitpause {
            attack_end();
            var group = get_hitbox_value(AT_NAIR, 1, HG_HITBOX_GROUP);
            
            set_hitbox_value(AT_NAIR, 1, HG_HITBOX_GROUP, group + 1);
            set_hitbox_value(AT_NAIR, 2, HG_HITBOX_GROUP, group + 1);
            //set_hitbox_value(AT_NAIR, 3, HG_HITBOX_GROUP, group + 1);
            //set_hitbox_value(AT_NAIR, 4, HG_HITBOX_GROUP, group + 1);
            
            create_hitbox(AT_NAIR, 1, x, y)
            create_hitbox(AT_NAIR, 2, x, y)
            //create_hitbox(AT_NAIR, 3, x, y)
            //create_hitbox(AT_NAIR, 4, x, y)
        }
    }
}

if attack == AT_UAIR {
    if window == 1 {
        reset_hitbox_value(AT_UAIR, 1, HG_HITBOX_GROUP);
        reset_hitbox_value(AT_UAIR, 2, HG_HITBOX_GROUP);
    }
    //spawn multihits
    if window == 2 {
        if window_timer > 1 && window_timer < window_length && window_timer mod 2 == 0 && !hitpause {
            attack_end();
            var group = get_hitbox_value(AT_UAIR, 1, HG_HITBOX_GROUP);
            
            set_hitbox_value(AT_UAIR, 1, HG_HITBOX_GROUP, group + 1);
            set_hitbox_value(AT_UAIR, 2, HG_HITBOX_GROUP, group + 1);
        
            create_hitbox(AT_UAIR, 1, x, y)
            create_hitbox(AT_UAIR, 2, x, y)
        }
        //hold uair rune
        if has_rune("G") { //UAIR can be held to extend number of multihits and provide vertical boost.
	        if window_timer == window_length-1 && attack_down && state_timer < 30 {
	            window_timer -= 4;
	            set_hitbox_value(AT_UAIR, 1, HG_HITBOX_GROUP, 1);
	            set_hitbox_value(AT_UAIR, 2, HG_HITBOX_GROUP, 1);
	            //set_hitbox_value(AT_UAIR, 2, HG_HITBOX_GROUP, -1);
	            attack_end();
	        }
	        vsp -= 0.5
        }
        
    }
}

if attack == AT_DSPECIAL {
    if window == 1 || window == 2 {
        move_cooldown[AT_DSPECIAL] = 12;
        move_cooldown[AT_DTHROW] = 12;
    }
    if window == 2 && !special_down && (window_timer > 16 /*|| (has_hit && !hitpause)*/) {
        window++;
        window_timer = 0;
        destroy_hitboxes()
    }
    
    if window == 2 && window_timer == 1 {
        if has_rune("J") { //Tap DSPECIAL has full super armour.
        	super_armor = true;
        } else {
        	soft_armor = 10;
        }
    } else if window == 3 {
        soft_armor = 0;
        super_armor = false;
    }
    
    //jump cancel
    if window == 2 && (has_hit) && djumps < max_djumps can_jump = true;
    else can_jump = false;
    
    
    //destroy effect
    if (window == 1 && window_timer == window_length) || (window == 3 && window_timer == 1) || (window == 2 && can_jump && jump_pressed) {
        if (window == 2 && can_jump && jump_pressed) sound_play(asset_get("sfx_ice_shatter"))
        spawn_hit_fx(x + shield_spawn_dist*spr_dir, y - 30, 109)
        spawn_hit_fx(x + shield_spawn_dist*spr_dir, y - 30, 111)
        spawn_hit_fx(x - shield_spawn_dist*spr_dir, y - 30, 109)
        spawn_hit_fx(x - shield_spawn_dist*spr_dir, y - 30, 111)
    }
    
    //dspecial windbox
    var hboxID = undefined;
    with pHitBox if player_id == other.id && attack == AT_DSPECIAL && hbox_num == 2 {
        hboxID = id;
    }
    
    if hboxID != undefined {
        with pHurtBox if place_meeting(x, y, hboxID) {
            var pushdir = sign(x - other.x)
            playerID.hsp += pushdir*0.7
        }
        
        //proj reflection
        with hboxID proj_reflect(true)
    }
}

if attack == AT_DTHROW {
    //if tapped do melee dspec
    if window == 1 && window_timer <= 6 && (!special_down || shield_down) {
        attack = AT_DSPECIAL;
        hurtboxID.sprite_index = get_attack_value(AT_DSPECIAL, AG_HURTBOX_SPRITE);
    }
    if window == 2 {
        if window_timer == 1 {
            var _orb = instance_create(x + 20*spr_dir, y - 40, "obj_article1");
                _orb.hsp = spr_dir*12;
                _orb.oPlayer_owner = orbitar_parry_id;
            orbitar_id = _orb.id;
            sound_play(asset_get("sfx_ori_taunt"))
            if orbitar_parry_mode {
                orbitar_parry_id.orbitar_id = orbitar_id;
            }
        }
    }
}

if attack == AT_DSPECIAL_2 {
    move_cooldown[AT_DTHROW] = 10;
    if window == 1 && window_timer == 1 && instance_exists(orbitar_id) {
        if orbitar_id.state == PS_IDLE {
            orbitar_id.state = PS_ATTACK_AIR;
            orbitar_id.state_timer = 0;
            orbitar_id.window = 1;
            orbitar_id.window_timer = 0;
        } else if orbitar_id.state == PS_ATTACK_AIR && orbitar_id.window == 2 && orbitar_id.window_timer > 16 {
            orbitar_id.shield_active = false;
            orbitar_id.window++;
            orbitar_id.window_timer = 0;
        }
    }
}

if attack == AT_USTRONG {
    if window >= 2 height_timer++;
    else height_timer = 0;
}

if echo {
	if attack == AT_USPECIAL {
	    can_fast_fall = false;
	    can_wall_jump = true;
	    if window >= 2 height_timer++;
	    else height_timer = 0;
	    if window == 1 {
	        reset_window_value(AT_USPECIAL, 3, AG_WINDOW_TYPE);
	        reset_window_value(AT_USPECIAL, 3, AG_WINDOW_LENGTH);
	        reset_window_value(AT_USPECIAL, 3, AG_WINDOW_ANIM_FRAMES);
	        cancel_pratfall = false;
	        if window_timer == 5 && !hitpause {
	            sound_play(sound_get("uspec_start"))
	        }
	        if window_timer == 8 && !hitpause {
	            //sound_play(sound_get("uspec_move"))
	        }
	    }
	    
	    if cancel_pratfall {
	        set_window_value(AT_USPECIAL, 3, AG_WINDOW_TYPE, 0);
	        set_window_value(AT_USPECIAL, 3, AG_WINDOW_LENGTH, 8);
	        set_window_value(AT_USPECIAL, 3, AG_WINDOW_ANIM_FRAMES, 2);
	    }
	}
}

if attack == AT_FSPECIAL {
    if window == 1 && !special_down && move_cooldown[AT_FTHROW] == 0 {
        attack = AT_FTHROW;
        was_reflected = false;
        hurtboxID.sprite_index = get_attack_value(attack, AG_HURTBOX_SPRITE);
    }
    if window == 2 {
        if !special_down && window_timer == window_length {
            window++;
            window_timer = 0;
        }
        can_shield = true;
    }
}

if attack == AT_NSPECIAL {
    if window == 1 {
        reset_hitbox_value(AT_NSPECIAL, 1, HG_DAMAGE);
        reset_hitbox_value(AT_NSPECIAL, 1, HG_BASE_KNOCKBACK);
        reset_hitbox_value(AT_NSPECIAL, 1, HG_KNOCKBACK_SCALING);
    }
    
    //dust vfx when grounded
    if !free {
        if (window == 2) {
            if state_timer mod 15 == 0 {
                var xmod = random_func(0, 10, true) - 5;
                spawn_base_dust(x + xmod, y, "dash", spr_dir);
            }
            if state_timer mod 11 == 0 {
                var xmod = random_func(1, 10, true) - 5;
                spawn_base_dust(x + xmod, y, "walk", spr_dir);
            }
        }
        if window == 4 && window_timer == 1 {
            spawn_base_dust(x, y, "dash_start", spr_dir);
        }
    }
    
    if window == 2 || window == 6 {
        bow_turn_timer++;
        bowCharge = window_timer;
        reset_hitbox_value(AT_NSPECIAL, 1, HG_WINDOW);
        
        if (!special_down && window_timer >= 2 && bow_turn_timer >= 2) || window_timer == 60 { //max of 60
        	var arrowSpeed = (echo ? 16 : 14) + floor(bowCharge/3);
            var arrowDamage = (echo ? 4 : 2) + floor(bowCharge/8);
            var arrowBkb = (echo ? 5 : 4) + floor(bowCharge/12);
            var arrowKbg = (echo ? 0.5 : 0.3) + bowCharge/160;
            
            if has_rune("A") arrowSpeed *= 1.3; //NSPECIAL arrows are faster and more controllable.
            
            if window == 2 {
                window = 4;
                window_timer = 0;
                set_hitbox_value(AT_NSPECIAL, 1, HG_PROJECTILE_HSPEED, arrowSpeed);
                set_hitbox_value(AT_NSPECIAL, 1, HG_PROJECTILE_VSPEED, 0);
                set_hitbox_value(AT_NSPECIAL, 1, HG_WINDOW, 4);
                reset_hitbox_value(AT_NSPECIAL, 1, HG_HITBOX_X);
                reset_hitbox_value(AT_NSPECIAL, 1, HG_HITBOX_Y);
            } else if window == 6 {
                window = 7;
                window_timer = 0;
                set_hitbox_value(AT_NSPECIAL, 1, HG_PROJECTILE_VSPEED, -arrowSpeed);
                set_hitbox_value(AT_NSPECIAL, 1, HG_PROJECTILE_HSPEED, 0);
                set_hitbox_value(AT_NSPECIAL, 1, HG_WINDOW, 7);
                set_hitbox_value(AT_NSPECIAL, 1, HG_HITBOX_X, 0);
                set_hitbox_value(AT_NSPECIAL, 1, HG_HITBOX_Y, -45);
            }
            set_hitbox_value(AT_NSPECIAL, 1, HG_DAMAGE, arrowDamage);
            set_hitbox_value(AT_NSPECIAL, 1, HG_BASE_KNOCKBACK, arrowBkb);
            set_hitbox_value(AT_NSPECIAL, 1, HG_KNOCKBACK_SCALING, arrowKbg);
            sound_stop(sfx_bow_charge)
        }
    }
    
    //charge directions
    if window == 2 && bow_turn_timer >= 2 {
        if up_down {
            window = 5;
            window_timer = 0;
            bow_turn_timer = 0;
        } else if (spr_dir == 1 && left_down && !right_down) || (spr_dir == -1 && right_down && !left_down) {
            window = 3;
            window_timer = 0;
            spr_dir *= -1;
            bow_turn_timer = 0;
        }
    }
    
    if window == 6 {
        if !up_down && bow_turn_timer >= 2 {
            window = 8;
            window_timer = 0;
            bow_turn_timer = 0;
        }
    }
    
    //after turning/aiming down return to charge
    if (window == 3 || window == 8) && window_timer == window_length {
        window = 2;
        window_timer = bowCharge;
    }
    
    //after aiming up transition up upwards charge
    if window == 5 && window_timer == window_length {
        window = 6;
        window_timer = bowCharge;
    }
    
    if window == 4 || window == 7 {
        move_cooldown[AT_NSPECIAL] = 18;
    }
}

if attack == AT_FSTRONG {
    if window == 1 {
    	if has_rune("N") { //FSTRONG has super armour and can be used in the air.
    		super_armor = true;
    	}
        if window_timer == 1 {
            was_reflected = false;
            reset_window_value(AT_FSTRONG, 2, AG_WINDOW_HSPEED);
            reset_window_value(AT_FSTRONG, 2, AG_WINDOW_LENGTH);
            reset_hitbox_value(AT_FSTRONG, 3, HG_LIFETIME);
            fstrong_base_hsp = get_window_value(AT_FSTRONG, 2, AG_WINDOW_HSPEED);
            fstrong_base_window_length =  get_window_value(AT_FSTRONG, 2, AG_WINDOW_LENGTH);
        } else {
            var extra_hsp = floor(strong_charge/(echo ? 8 : 6));
            var extra_length = floor(strong_charge/(echo ? 12 : 12));
            if has_rune("K") { //FSTRONG dash distance increased.
            	extra_hsp *= 1.8
            	extra_hsp += 2
            	extra_length *= 1.5
            	extra_length += 3
            }
            
            set_window_value(AT_FSTRONG, 2, AG_WINDOW_HSPEED, fstrong_base_hsp + extra_hsp);
            set_window_value(AT_FSTRONG, 2, AG_WINDOW_LENGTH, fstrong_base_window_length + extra_length);
            set_hitbox_value(AT_FSTRONG, 3, HG_LIFETIME, fstrong_base_window_length + extra_length);
            
        }
    }
    
    if window == 2 {
        if window_timer == 1 {
            spawn_base_dust(x, y, "dash_start", spr_dir);
        } else if window_timer mod 3 == 0 {
            spawn_base_dust(x, y, "dash", spr_dir);
        }
        var iscolliding = false; //whether detection hitbox is hitting a hurtbox
        
        //find detection hitbox
        with pHitBox {
            if attack == AT_FSTRONG && hbox_num == 3 && player_id == other {
                var hitboxID = id; //id of detection hitbox
            }
        }
        
        //check if any hurtbox is colliding with detection hitbox
        with pHurtBox {
            if instance_place(x, y, hitboxID) && playerID != other {
                iscolliding = true;
            }
        }
        
        //advance window if colliding
        if iscolliding || hsp == 0 {
            window++;
            window_timer = 0;
            hsp = get_window_value(AT_FSTRONG, 3, AG_WINDOW_HSPEED) * spr_dir;
            destroy_hitboxes();
        }
    }
    
    if window == 3 {
    	super_armor = false;
    }
}



if attack == AT_USPECIAL {
    can_fast_fall = false;
    can_wall_jump = true;
    if window >= 2 height_timer++;
    else height_timer = 0;
    if window == 1 {
        reset_window_value(AT_USPECIAL, 3, AG_WINDOW_TYPE);
        reset_window_value(AT_USPECIAL, 3, AG_WINDOW_LENGTH);
        reset_window_value(AT_USPECIAL, 3, AG_WINDOW_ANIM_FRAMES);
        cancel_pratfall = false;
        if window_timer == 5 && !hitpause {
            sound_play(sound_get("uspec_start"))
        }
    }
    
    if cancel_pratfall {
        set_window_value(AT_USPECIAL, 3, AG_WINDOW_TYPE, 0);
        set_window_value(AT_USPECIAL, 3, AG_WINDOW_LENGTH, 8);
        set_window_value(AT_USPECIAL, 3, AG_WINDOW_ANIM_FRAMES, 2);
    }
}


if attack == AT_FTHROW {
    if window == 1 {
        reset_window_value(AT_FTHROW, 3, AG_WINDOW_CUSTOM_GRAVITY);
        reset_window_value(AT_FTHROW, 4, AG_WINDOW_CUSTOM_GRAVITY);
        reset_window_value(AT_FTHROW, 5, AG_WINDOW_CUSTOM_GRAVITY);
    }
    
    if window == 2 && window_timer == window_length {
        var _vfx = spawn_hit_fx(x, y, fspec_large_vfx)
        if up_down && !down_down {
            _vfx.draw_angle = (echo ? 13 : 16)*spr_dir;
            _vfx.y += 5;
        }
        if down_down && !up_down {
            _vfx.draw_angle = (echo ? -13 : -16)*spr_dir;
            _vfx.y -= 5;
        }
        if !free {
            set_window_value(AT_FTHROW, 3, AG_WINDOW_CUSTOM_GRAVITY, 0.9);
            set_window_value(AT_FTHROW, 4, AG_WINDOW_CUSTOM_GRAVITY, 0.9);
            set_window_value(AT_FTHROW, 5, AG_WINDOW_CUSTOM_GRAVITY, 0.9);
        }
    }
    
    //return to firing
    
    if window == 3 && window_timer == window_length {
        if !special_down window++;
    }
    if window == 4 && window_timer == window_length {
        if special_down {
            attack = AT_FSPECIAL;
            hurtboxID.sprite_index = get_attack_value(attack, AG_HURTBOX_SPRITE);
            window = 2;
            window_timer = 0;
        }
    }
    
    if window == 3 && window_timer == 1 && (!phone_cheats[CHEAT_QUICK_CHARGE] && !has_rune("I")) { //FSPECIAL cooldown removed.
        move_cooldown[AT_FTHROW] = 130;
    }
    if window >= 2 can_wall_jump = true;
    
    if window == 5 {
        if !free {
            set_state(was_parried ? PS_PRATLAND : (has_hit ? PS_LAND : PS_LANDING_LAG))
        }
        //iasa_script()
    }
    
    if has_hit {
        //can_jump = true;
    }
}

if attack == AT_TAUNT && !echo {
    if state_timer <= 6 && !taunt_down && down_down && "pit_codec_handler" in self && !pit_codec_handler.active {
        set_attack(AT_TAUNT_2)
        window = 0;
        window_timer = 0;
    }
}

#define spawn_base_dust(x, y, name, dir)
//This function spawns base cast dusts. Names can be found below.
var dlen; //dust_length value
var dfx; //dust_fx value
var dfg; //fg_sprite value
var dust_color = 0;

switch (name) {
    default: 
    case "dash_start": dlen = 21; dfx = 3; dfg = 2626; break;
    case "dash": dlen = 16; dfx = 4; dfg = 2656; break;
    case "jump": dlen = 12; dfx = 11; dfg = 2646; break;
    case "doublejump": 
    case "djump": dlen = 21; dfx = 2; dfg = 2624; break;
    case "walk": dlen = 12; dfx = 5; dfg = 2628; break;
    case "land": dlen = 24; dfx = 0; dfg = 2620; break;
    case "n_wavedash": dlen = 24; dfx = 0; dfg = 2620; dust_color = 1; break;
    case "wavedash": dlen = 16; dfx = 4; dfg = 2656; dust_color = 1; break;
}
var newdust = spawn_dust_fx(x,y,asset_get("empty_sprite"),dlen);
newdust.dust_fx = dfx; //set the fx id
if dfg != -1 newdust.fg_sprite = dfg; //set the foreground sprite
newdust.dust_color = dust_color; //set the dust color
if dir != 0 newdust.spr_dir = dir; //set the spr_dir
return newdust;

#define proj_reflect(hit_self)
with pHitBox {
    if "is_pitbox" in self && instance_place(x, y, other) && reflection_timer > 10 {
        switch attack {
            case AT_FTHROW:
            vsp *= -1;
            case AT_NSPECIAL:
            case AT_FSPECIAL:
            case AT_FSPECIAL_2:
            
            //print("woag")
            reflection_timer = 0;
            hitbox_timer = 0;
            was_reflected = true;
            sound_play(sound_get("orbitar_reflect"))
            spawn_hit_fx(x, y, 109)
            hsp *= -1;
            vsp *= -1;
            spr_dir *= -1;
            reflection_count++;
            effect = 0;
            can_hit_self = hit_self;
            break;
        }
    } else if !("is_pitbox" in self) && type == 2 && !transcendent && hit_priority != 0 && instance_place(x, y, other) {
        destroyed = true;
    }
}