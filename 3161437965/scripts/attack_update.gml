//B - Reversals
if (attack == AT_NSPECIAL || attack == AT_FSPECIAL || attack == AT_DSPECIAL || attack == AT_USPECIAL || attack == 49){
    trigger_b_reverse();
}

if has_rune("A") && has_saved_state && using_stored_attack && special_pressed {
    save_flash_time = 15;
    sound_play(asset_get("sfx_ell_arc_taunt_end"));
    spawn_hit_fx(x, y - 32, fx_savestate);
    has_saved_state = false;
}

if(has_rune("G") && using_stored_attack){
    if(window == last_window && window_timer > window_end_time/2){
        super_armor = false;
    }
}

if(!using_stored_attack){
    if(attack == AT_FAIR || attack == AT_UAIR || attack == AT_DAIR || attack == AT_USPECIAL){
        if(window == 1 && window_timer == 1 && !hitpause) voice_play_dark_version(VC_ATK)
    }
    if(attack == AT_FSPECIAL || attack == AT_USTRONG || attack == AT_FSTRONG){
        if(window == 2 && window_timer == 1 && !hitpause) voice_play_dark_version(VC_ATK)
    }
    if(attack == AT_DSTRONG){
        if(window == 3 && window_timer == 1 && !hitpause) voice_play_dark_version(VC_ATK)
    }
} else {
    if(attack == AT_FSPECIAL){
        if(window == 2 && window_timer == 1 && !hitpause) voice_play_dark_version(VC_ATK)
    }
}

switch (attack)
{
    case AT_DSTRONG:
    can_wall_jump = window == 4;
        switch (window)
        {
            case 1: //pre-jump
                //reset some stuff
                dstrong_fast_vsp = up_down;
                if (window_timer == 1) dstrong_fall_time = dstrong_cancel_time;  
                if (!hitpause && !hitstop)
                {
                    //sfx and vfx
                    if (window_timer == window_end_time){
                        sound_play(asset_get("sfx_jumpground"));
                        spawn_base_dust( x + (0 * spr_dir), y, "jump", spr_dir);
                    }
                }
                break;
            
            case 2: //jump
                if (!hitpause && !hitstop)
                {
                    //go up if not charging the move
                    if (strong_charge <= 0) vsp = (dstrong_fast_vsp ? dstrong_fast_initial_vsp : dstrong_initial_vsp);
                    else
                    {
                        vsp = 0;
                        if !has_rune("F") hsp = clamp(hsp, -max_charge_hsp, max_charge_hsp);
                    }
                }
                break;
            case 3: //post-charge startup
                //fully prevent horizontal movement
                if !has_rune("F") hsp = 0;
                if !has_rune("F") can_move = false;
                
                if (!hitpause && !hitstop) vsp = dstrong_post_charge_vsp;
                if (window_timer == window_end_time) sound_play(asset_get("sfx_swipe_heavy1")); //sfx
                break;
            
            case 4: //fall
                if (dstrong_fall_time > 0) dstrong_fall_time--;
                
                //set vsp
                if (!hitpause && !hitstop)
                {
                    vsp = dstrong_falling_vsp;
                    //allow for jump cancelling if falling for long enough
                    if (dstrong_fall_time <= 0) { can_jump = true; can_shield = true; }
                }
                
                //loop
                if (window_timer == window_end_time)
                {
                    window_timer = 0;
                    //destroy old falling hitbox just in case
                    destroy_hitboxes();
                }
                
                //spawn hitboxes in the middle of the window
                if (window_timer == round(window_end_time/2))
                {
                    if (!hitpause && !hitstop)
                    {
                        destroy_hitboxes();
                        create_hitbox(AT_DSTRONG, 2, floor(x), floor(y));
                    }
                }
                
                //land
                if (!free)
                {
                    if (!hitpause && !hitstop)
                    {
                        window = 5;
                        window_timer = 0;
                        
                        //destroy falling hitbox and create landing hitbox
                        destroy_hitboxes();
                        create_hitbox(AT_DSTRONG, 1, floor(x), floor(y));
                        
                        //landing sfx
                        sound_play( asset_get("sfx_zetter_downb"), false, noone, 0.7, 1.1 ); //asset_get("sfx_blow_medium2")
                    }
                }
                
                //fully prevent horizontal movement
                hsp = 0;
                can_move = false;
                break;
        }

        //disable fastfalling
        can_fast_fall = false;
        break;
    case AT_FSPECIAL:
        if has_rune("L") && fspec_charge == fspec_max_charge {
            set_num_hitboxes(AT_FSPECIAL, 2);
            if (has_rune("B") || juiced_up) set_hitbox_value(AT_FSPECIAL, 1, HG_PRIORITY, 0);
        } else{
            set_num_hitboxes(AT_FSPECIAL, 1);
            reset_hitbox_value(AT_FSPECIAL, 1, HG_PRIORITY);
        }
        
        can_fast_fall = false;
        if window > 2 can_wall_jump = true;
        switch (window)
        {
            case 1: //reset charge
                if (window_timer == 1) { 
                    if !juiced_up fspec_charge = 0; 
                    set_hitbox_value(attack, 1, HG_HIT_SFX, asset_get("sfx_icehit_medium1"));
                    set_hitbox_value(attack, 1, HG_DAMAGE, 7);
                    set_hitbox_value(attack, 1, HG_BASE_KNOCKBACK, 7);
                    set_hitbox_value(attack, 1, HG_KNOCKBACK_SCALING, 0.7);
                    set_hitbox_value(attack, 1, HG_BASE_HITPAUSE, 8);
                    set_hitbox_value(attack, 1, HG_HITPAUSE_SCALING, 0.6);
                }
                break;
            case 2: //charge
                hsp = clamp(hsp, -2, 2);
                vsp = clamp(vsp, vsp, 2);
                
                //charge check
                if (fspec_charge < fspec_max_charge && special_down)
                {
                    window_timer = 0; //the charge is only active for the first frame of the attack
                    fspec_charge ++;
                    if has_rune("C") fspec_charge++;

                    //variable tweaking for the hitbox (min, max)
                    set_hitbox_value(attack, 1, HG_DAMAGE, lerp(7, 13, fspec_charge/fspec_max_charge));
                    set_hitbox_value(attack, 1, HG_BASE_KNOCKBACK, lerp(7, 9, fspec_charge/fspec_max_charge));
                    set_hitbox_value(attack, 1, HG_KNOCKBACK_SCALING, lerp(0.7, 0.9, fspec_charge/fspec_max_charge));
                    set_hitbox_value(attack, 1, HG_BASE_HITPAUSE, lerp(8, 11, fspec_charge/fspec_max_charge));
                    set_hitbox_value(attack, 1, HG_HITPAUSE_SCALING, lerp(0.6, 0.8, fspec_charge/fspec_max_charge));
                    if(fspec_charge > 50){
                        set_hitbox_value(attack, 1, HG_HIT_SFX, asset_get("sfx_icehit_heavy2"));
                    } else {
                        set_hitbox_value(attack, 1, HG_HIT_SFX, asset_get("sfx_icehit_medium1"));
                    }
                    if (fspec_charge % (8 * (1 + has_rune("C"))) == 0 && !hitpause) spawn_base_dust(x, y, "land");
                }
                break;
            case 3: //dash
                vsp = 0;
                if (!hitpause) hsp = lerp(15, 40, fspec_charge/fspec_max_charge) * spr_dir; //dash movement speed
                uses_afterimage_trail = true;
            		if (place_meeting(x + hsp + 2 * spr_dir, y, asset_get("par_block")) && free) {
                        for (var i = 1; i < 28; i++){
                            if (!place_meeting(x + hsp + 2 * spr_dir, y- i ,asset_get("par_block"))) {
                                y -= i;
                                if(hsp == 0){
                                	hsp = 10 * spr_dir;
                                }
                                break;
                            }
                        }
                    }
                if ((has_rune("B") || juiced_up) && hitpause && has_hit){
                    window = 4;
                    window_timer = 0;
                    destroy_hitboxes();
                    sound_play(asset_get("sfx_shovel_swing_heavy1"));
                    old_hsp = get_window_value(AT_FSPECIAL, 4, AG_WINDOW_HSPEED) * spr_dir;
                }
                break;
            case 4:
                uses_afterimage_trail = false;
                break;
            case 5: //endlag
                can_move = false;
                grav = 0.2;
                if (window_timer == window_end_time-1 && free) set_state(PS_PRATFALL);
                break;
        }
        break;
    case AT_USPECIAL:
        can_wall_jump = true;
        break;
    case AT_DSPECIAL:
        switch (window)
        {
            //spawn save point
            case 3: //spawn SAVE point
                if (!instance_exists(artc_savepoint))
                {
                    sound_play(sound_get("sfx_save"));
                    artc_savepoint = instance_create(x, y, "obj_article1");
                }
                break;
            //teleport to save point
            case 6:
                if (instance_exists(artc_savepoint) && window_timer == window_end_time) with (artc_savepoint) if (saved_player == other)
                {
                    spawn_hit_fx(other.x, other.y - 40, other.fx_dspec_teleport);

                    saved_player.x = x;
                    saved_player.y = y;
                    saved_player.hsp = saved_hsp;
                    saved_player.vsp = saved_vsp;
                    chara_warped = true;
                }
                break;
        }
        break;
    case AT_TAUNT:
        if(window == 1 && window_timer == 1 && !hitpause) voice_play(floor(abs(x%200)), [vc_taunt])
        if(window == 2 && window_timer == 26){
            take_damage(player, player, 1);
            take_damage(player, player, -2 - (juiced_up * 19))
        }
        break;
    case AT_TAUNT_2:
        has_hit_player = true;
        lobotomy_timer++;
        if window != 1 window = 1
        suppress_stage_music(0, .05)
    	if(!taunt_down && !special_down){
    		if loaded_off_uspec set_state(PS_PRATFALL) else set_state(PS_IDLE);
    		loaded_off_uspec = false;
    	}
    	can_fast_fall = false;
    	can_move = !free;
    	if vsp > 0 vsp *= .8;
    	if free hsp *= .98;
    	if(lobotomy_timer == 360 && !hitpause){
    	    spawn_base_dust(x, y-floor(char_height/2), "anime", spr_dir);
    	}
        break;
    case AT_NSPECIAL:
        move_cooldown[AT_NSPECIAL] = 30;
        // if(window == 1){
        //     if(special_down){
        //         set_hitbox_value(AT_NSPECIAL, 1, HG_WINDOW, 99);
        //         set_hitbox_value(AT_NSPECIAL, 2, HG_WINDOW, 3);
        //         set_window_value(AT_NSPECIAL, 2, AG_WINDOW_LENGTH, 12);
        //         set_window_value(AT_NSPECIAL, 2, AG_WINDOW_SFX_FRAME, 8);
        //     } else {
        //         reset_window_value(AT_NSPECIAL, 2, AG_WINDOW_LENGTH);
        //         reset_window_value(AT_NSPECIAL, 2, AG_WINDOW_SFX_FRAME);
        //         set_hitbox_value(AT_NSPECIAL, 1, HG_WINDOW, 3);
        //         set_hitbox_value(AT_NSPECIAL, 2, HG_WINDOW, 99);
        //     }
        // }
        break;
    case AT_FSPECIAL_2:
        var screen_center_x = view_get_xview() + view_get_wview()/2;
        var screen_center_y = view_get_yview() + view_get_hview()/2;
        if(!faq_u_timer){
            hitpause = false;
            hitstop = 0;
            hitstop_full = 0;
        }
        nine_x_off += .5;
        nine_y_off += .5;
        if nine_x_off > 36 nine_x_off -= 36;
        if nine_y_off > 36 nine_y_off -= 36;    
        hsp = 0;
        vsp = 0;
        can_move = false;
        can_fast_fall = false;
        if(window < 5){
            suppress_stage_music(.4, .01)
            if(!instance_exists(murder_mode_target)){
                set_state(PS_PRATFALL);
            } else {
                with(murder_mode_target){
                    hsp = 0;
                    vsp = 0;
                    hitpause = true;
                    hitstop = 2;
                    hitstop_full = 100;
                    hitstun = 4;
                    hitstun_full = 4;
                    state_timer = 2;
                    state = PS_HITSTUN;
                    hurtboxID.sprite_index = hurtbox_spr;
                    invincible = false;
                    invince_time = 0;
                    attack_invince = 0;
                    super_armor = false;
                    soft_armor = 0;
                    initial_invince = 0;
                    can_be_hit[other.player] = 0;
                    damage_scaling = min(1, damage_scaling);
                }
            }
            with(oPlayer) if self != other && self != other.murder_mode_target {
                hitpause = true;
                hitstop = 2;
                hitstop_full = 100;
                old_hsp = genocide_hsp_store;
                old_vsp = genocide_vsp_store;
            }
            with(pHitBox) {
                hitpause = true;
                hitpause_timer = 2;
            }
            with(obj_article1) {
                hitpause = true;
            }
            with(obj_article2) {
                hitpause = true;
            }
            with(obj_article3) {
                hitpause = true;
            }
            with(obj_article_platform) {
                hitpause = true;
            }
            with(obj_article_solid) {
                hitpause = true;
            }
        }
        if(window == 5 && instance_exists(murder_mode_target)){
            suppress_stage_music(.1 - (.1 * genocided), 1)
            with(murder_mode_target){
                hitpause = true;
                hitstop = 2;
                hitstop_full = 100;
                state_timer = 0;
                state = PS_HITSTUN;
                hurtboxID.sprite_index = hurtbox_spr;
                invincible = false;
                invince_time = 0;
                attack_invince = 0;
                super_armor = false;
                soft_armor = 0;
                damage_scaling = min(1, damage_scaling);
            }
            with(oPlayer) if self != other && self != other.murder_mode_target {
                hitpause = true;
                hitstop = 2;
                hitstop_full = 100;
                old_hsp = genocide_hsp_store;
                old_vsp = genocide_vsp_store;
            }
            with(pHitBox) {
                hitpause = true;
                hitpause_timer = 2;
            }
            with(obj_article1) {
                hitpause = true;
            }
            with(obj_article2) {
                hitpause = true;
            }
            with(obj_article3) {
                hitpause = true;
            }
            with(obj_article_platform) {
                hitpause = true;
            }
            with(obj_article_solid) {
                hitpause = true;
            }
        }
        if(window == 1 || window == 2){
            hsp = .9 * spr_dir;
        } else if(window < 6){
            x = murder_mode_target.x + 40 * spr_dir;
            y = murder_mode_target.y;
        }
        if(window == 3){
            if(window_timer%6 == 1){
                create_hitbox(AT_FSPECIAL_2, 1, x, y);
            }
        }
        if(window == 4){
            if(window_timer == 30){
                murder_vfx_array[array_length_1d(murder_vfx_array)] = {
                    x:screen_center_x, 
                    y:screen_center_y - (murder_mode_target.char_height/2), 
                    spr_dir:spr_dir, 
                    scale:2, 
                    sprite_index:sprite_get("fx_dspec_teleport"), 
                    anim_speed:.25, 
                    rot:0, 
                    col:c_white, 
                    timer:0, 
                    timerMax:15
                };
                sound_play(asset_get("mfx_star"))
                // sprite_get("fx_dspec_teleport")
                // sound_play(sound_get("sfx_hurt_strong"))
                // sound_play(sound_get("sfx_rudebuster"))
            }
        }
        break;
        case 49:
            fs_force_fs = false;
            vsp = 0;
            can_fast_fall = false;
            can_move = false;
            if(window == 4 && window_timer == 5 && !hitpause) spr_dir *= -1;
            if(window == 3 || window == 5) uses_afterimage_trail = true else uses_afterimage_trail = false
        break;
}

//--------------------------------------------

//Supersonic's Base Cast Dust Function
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
    case "anime": dlen = 1; dfx = 22; dfg = 2656; dust_color = 1; break;
}
var newdust = spawn_dust_fx(x,y,asset_get("empty_sprite"),dlen);
newdust.dust_fx = dfx; //set the fx id
if dfg != -1 newdust.fg_sprite = dfg; //set the foreground sprite
newdust.dust_color = dust_color; //set the dust color
if dir != 0 newdust.spr_dir = dir; //set the spr_dir
newdust.draw_angle = dfa;
return newdust;

#define voice_play
/// voice_play(idx, voice_array, empty_chance = 0)
var idx = argument[0], voice_array = argument[1];
var empty_chance = argument_count > 2 ? argument[2] : 0;;

if !voiced return;

var selected = random_func(idx, array_length(voice_array) + empty_chance, true);

if selected < array_length(voice_array) {
	sound_stop(voice_playing_sound);
	voice_playing_sound = sound_play(voice_array[selected], false, noone, 1.2);
}

#define voice_play_dark_version
/// voice_play(idx, force_voice = -1, flash = 0;)
var idx = argument[0];
var force_voice = argument_count > 1 ? argument[1] : -1;
var flash = argument_count > 2 ? argument[2] : 0;;

if !voiced return;

var selected = (force_voice >= 0? force_voice: min(random_func(idx, vcs[idx][0] + vcs[idx][1], true), vcs[idx][0] - 1 + vcs[idx][1]));
if selected >= vcs[idx][0] return;
selected = (idx/10 >= 1? "": "0") + string(idx) + string(selected);

if selected != noone{
	sound_stop(voice_playing_sound);
	voice_playing_sound = sound_play(sound_get("vc_" + selected), false, noone, 1.2);
}