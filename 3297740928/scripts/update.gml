//update.gml
//Looping sfx code for certain attacks------------------------------------------
//set the timer to a value not mentioned in steps below if this variable is 0
if (multihit == 0){
	multihit_timer = 24;
	sound_stop(sound_get("sfx_multihit"));
}
//if this is 1, lower the timer by 1 every frame
if (multihit == 1){
	multihit_timer--;
}
//every time this variable is at 22, play this sound
if (multihit_timer == 22){
	sound_play(sound_get("sfx_multihit"));
}
//if the variable is <= 0, take it back to 23, which repeats the code above
if (multihit_timer <= 0){
	multihit_timer = 23;
}
//------------------------------------------------------------------------------
//repeating the above for different attack
if (echosound == 0){
	echosound_timer = 218;
	sound_stop(sound_get("sfx_echoreflectorloop"));
}
if (echosound == 1){
	echosound_timer--;
}
if (echosound_timer == 216){
	sound_play(sound_get("sfx_echoreflectorloop"));
}
if (echosound_timer <= 0){
	echosound_timer = 217;
}
//------------------------------------------------------------------------------
//repeating the above for different attack
if (absorbvortexsound == 0){
	absorbvortexsound_timer = 188;
	sound_stop(sound_get("sfx_absorbingvortexloop"));
}
if (absorbvortexsound == 1){
	absorbvortexsound_timer--;
}
if (absorbvortexsound_timer == 186){
	sound_play(sound_get("sfx_absorbingvortexloop"));
}
if (absorbvortexsound_timer <= 0){
	absorbvortexsound_timer = 187;
}
//------------------------------------------------------------------------------
//fixes a bug with uair
if (state == PS_LANDING_LAG){
	multihit = 0;
}

//menu code---------------------------------------------------------------------
//special menu timer
if(menu_timer >= 0){
    menu_open = true;
    if(!practice){
        can_move = false;
        can_attack = false;
        can_jump = false;
        can_strong = false;
        can_ustrong = false;
        can_special = false;
        can_shield = false;
        can_fast_fall = false;
        hsp = 0;
        vsp = 0;
        if(attack != AT_TAUNT){
            state = PS_SPAWN;
        }
    }
    if(menu_timer > 120 || menu_timer <= 20){
        menu_timer--;
    }
}else{
    menu_open = false;
}

if(close_timer >= 0){
    close_timer--;
}

//menu selection
if(menu_open){
    menu_close = true;
    if(up_down){
        menu_dir = 0;
    }else if(down_down){
        menu_dir = 2;
    }else if(right_down){
        menu_dir = 1;
    }else if(taunt_down){ //random
        menu_dir = 69;
    }else{
        menu_dir = -1;
    }
    if(menu_timer == 125){
        sound_play(asset_get("mfx_forward"));
    }
    if(active_col < 4){
        if(menu_dir != -1 && menu_dir != 69 && menu_dir != prev_dir){
            specialnums[active_col] = menu_dir;
            sound_play(asset_get("mfx_change_color"));
            for(var i = 0; i < 3; i++){
                if(i != menu_dir){
                    specs_chosen[active_col, i] = false;;
                }
            }
            active_col++;
        }else if(menu_dir == 69 && menu_dir != prev_dir){
            var randomspec = floor(random_func( 0, 3, false ));
            //print_debug(string(randomspec));
            specialnums[active_col] = randomspec;
            sound_play(asset_get("mfx_change_color"));
            for(var i = 0; i < 3; i++){
                if(i != randomspec){
                    specs_chosen[active_col, i] = false;
                }
            }
            active_col++;
        }
        prev_dir = menu_dir;
    }
    if(active_col >= 4 && menu_confirm){
        menu_timer = 20;
        menu_confirm = false;
    }
}

//resets menu variables when closed
if(menu_close && !menu_open){
    if(!practice){
        can_move = true;
        can_attack = true;
        can_jump = true;
        can_strong = true;
        can_ustrong = true;
        can_special = true;
        can_shield = true;
        can_fast_fall = true;
        if(state == PS_SPAWN && get_gameplay_time() >= 120){
            state = PS_IDLE;
        }
    }
    menu_close = false; 
    sound_play(asset_get("mfx_back"));
    close_timer = 4;
    menu_dir = -1;
    prev_dir = -1;
    active_col = 0;
    menu_confirm = true;
    for(var i = 0; i <= 3; i++){
        for(var j = 0; j <= 2; j++){
            specs_chosen[i, j] = true;
        }
    }
}
//end of menu code--------------------------------------------------------------


//Changing Charge Blast's window and hitbox values
if (cblast_timer != 0){

if (cblast_timer >= 0 && cblast_timer < 30){
	set_window_value(AT_NSPECIAL, 2, AG_WINDOW_ANIM_FRAME_START, 2);
	set_hitbox_value(AT_NSPECIAL, 1, HG_PROJECTILE_SPRITE, sprite_get("chargeblastsmall"));
	set_hitbox_value(AT_NSPECIAL, 1, HG_HIT_SFX, asset_get("sfx_blow_weak2"));
	if (attack == AT_NSPECIAL && window == 3){
		move_cooldown[AT_NSPECIAL] = 35;
	}
}

if (cblast_timer >= 30 && cblast_timer < 60){
	set_window_value(AT_NSPECIAL, 2, AG_WINDOW_ANIM_FRAME_START, 4);
    set_hitbox_value(AT_NSPECIAL, 1, HG_BASE_KNOCKBACK, 5);
	set_hitbox_value(AT_NSPECIAL, 1, HG_KNOCKBACK_SCALING, .45);
	set_hitbox_value(AT_NSPECIAL, 1, HG_BASE_HITPAUSE, 6);
	set_hitbox_value(AT_NSPECIAL, 1, HG_HITPAUSE_SCALING, .5);
	set_hitbox_value(AT_NSPECIAL, 1, HG_DAMAGE, 6);
	set_hitbox_value(AT_NSPECIAL, 1, HG_HITSTUN_MULTIPLIER, 0.6);
	if (attack == AT_NSPECIAL && window == 3){
		move_cooldown[AT_NSPECIAL] = 35;
	}
}

if (cblast_timer >= 60 && cblast_timer < 90){
	set_window_value(AT_NSPECIAL, 3, AG_WINDOW_SFX, sound_get("sfx_chargeblastmedium"));
	set_window_value(AT_NSPECIAL, 2, AG_WINDOW_ANIM_FRAME_START, 4);
    set_hitbox_value(AT_NSPECIAL, 1, HG_BASE_KNOCKBACK, 5.5);
	set_hitbox_value(AT_NSPECIAL, 1, HG_KNOCKBACK_SCALING, .5);
	set_hitbox_value(AT_NSPECIAL, 1, HG_BASE_HITPAUSE, 6.5);
	set_hitbox_value(AT_NSPECIAL, 1, HG_HITPAUSE_SCALING, .6);
	set_hitbox_value(AT_NSPECIAL, 1, HG_DAMAGE, 8);
	set_hitbox_value(AT_NSPECIAL, 1, HG_HIT_SFX, asset_get("sfx_blow_medium2"));
	set_hitbox_value(AT_NSPECIAL, 1, HG_PROJECTILE_SPRITE, sprite_get("chargeblastsmall"));
	set_hitbox_value(AT_NSPECIAL, 1, HG_PROJECTILE_HSPEED, 8);
	set_hitbox_value(AT_NSPECIAL, 1, HG_HITSTUN_MULTIPLIER, 0.7);
	if (attack == AT_NSPECIAL && window == 3){
		move_cooldown[AT_NSPECIAL] = 40;
	}
}

if (cblast_timer >= 90 && cblast_timer < 120){
	set_window_value(AT_NSPECIAL, 3, AG_WINDOW_SFX, sound_get("sfx_chargeblastmedium"));
	set_window_value(AT_NSPECIAL, 2, AG_WINDOW_ANIM_FRAME_START, 6);
    set_hitbox_value(AT_NSPECIAL, 1, HG_BASE_KNOCKBACK, 6.5);
	set_hitbox_value(AT_NSPECIAL, 1, HG_KNOCKBACK_SCALING, .6);
	set_hitbox_value(AT_NSPECIAL, 1, HG_BASE_HITPAUSE, 7);
	set_hitbox_value(AT_NSPECIAL, 1, HG_HITPAUSE_SCALING, .7);
	set_hitbox_value(AT_NSPECIAL, 1, HG_DAMAGE, 10);
	set_hitbox_value(AT_NSPECIAL, 1, HG_HIT_SFX, asset_get("sfx_blow_medium2"));
	set_hitbox_value(AT_NSPECIAL, 1, HG_PROJECTILE_SPRITE, sprite_get("chargeblastsmall"));
	set_hitbox_value(AT_NSPECIAL, 1, HG_PROJECTILE_HSPEED, 9);
	set_hitbox_value(AT_NSPECIAL, 1, HG_HITSTUN_MULTIPLIER, 0.85);
	if (attack == AT_NSPECIAL && window == 3){
		move_cooldown[AT_NSPECIAL] = 40;
	}
}

if (cblast_timer >= 120){
	set_window_value(AT_NSPECIAL, 3, AG_WINDOW_SFX, sound_get("sfx_chargeblastbig"));
	set_hitbox_value(AT_NSPECIAL, 1, HG_WINDOW_CREATION_FRAME, 20);
	set_hitbox_value(AT_NSPECIAL, 2, HG_WINDOW_CREATION_FRAME, 0);
	brainsnotworking = 1;
	if (attack == AT_NSPECIAL && window == 3){
		move_cooldown[AT_NSPECIAL] = 55;
	}
}

}
//pressing shield/jump stops the charge
if (attack == AT_NSPECIAL && (shield_pressed || jump_pressed || tap_jump_pressed && can_tap_jump())){
	cblast_charging = false;
	sound_stop(sound_get("sfx_chargeblastwindup"));
}
//pressing jump stops the sound
if (attack == AT_DSPECIAL && (jump_pressed || tap_jump_pressed && can_tap_jump())){
	echosound = 0;
	echosound_timer = 215;
	sound_stop(sound_get("sfx_echoreflectorloop"));
	sound_stop(sound_get("sfx_echoreflector"));
}
//pressing jump stops the sound
if (attack == AT_DSPECIAL_3 && (jump_pressed || tap_jump_pressed && can_tap_jump())){
	absorbvortexsound = 0;
	absorbvortexsound_timer = 120;
	sound_stop(sound_get("sfx_absorbingvortexloop"));
	sound_stop(sound_get("sfx_absorbingvortex"));
}

//Flashing outline when charge blast is fully charged
if (cblast_charged == true) {
        cblast_flash += 1;
    if (cblast_flash >= 60){
        cblast_flash = 1;
    }
    if (cblast_flash <= 1){
        outline_color = [150, 150, 150];
    }
    if (cblast_flash >= 25){
        outline_color = [0, 0, 0];
    }
    init_shader();
}
if (cblast_charged == false) {
    outline_color = [0, 0, 0];
    {
    init_shader();
    }
}

//vortex heal (outline code)
if(heal_outline > 0){
	heal_outline -= 0.05;
}

//STOPS the base cast vfx from copying the colors from mii gunner
with (hit_fx_obj) if (player == other.player) uses_shader = false;