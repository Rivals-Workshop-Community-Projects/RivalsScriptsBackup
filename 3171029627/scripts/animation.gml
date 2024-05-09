//
if ((state == PS_WALK || state == PS_DASH) && ((place_meeting(x-135*spr_dir,y+15,asset_get("par_block")))
|| (place_meeting(x-135*spr_dir,y+15,asset_get("par_jumpthrough")))) && hitpause == false){
    if (state == PS_WALK) walk_sparks = true;
    if (state == PS_DASH) dash_sparks = true;
    if (walk_sparks == true){
        walk_sparks_cont++;
        if (walk_sparks_cont >= 65){
            walk_sparks_cont = 0;
        }
    }
    if (dash_sparks == true){
        dash_sparks_cont++;
        if (dash_sparks_cont >= 50){
            dash_sparks_cont = 0;
        }
    }
    if (walk_sparks_cont == 5 || dash_sparks_cont == 5){
            step_sound = random_func( 0, 10, true);
            if (step_sound == step_sound_prev){
                if (step_sound != 9){
                    step_sound++;
                }
                if (step_sound == 9 && step_sound_prev != 7){
                    step_sound = 0;
                }
            }
    		switch (step_sound){
    		    case 0:
    		    sound_play(sound_get("dbd_weapon_drag_01"),false,noone,.3);
    		    break;
    		    case 1:
    		    sound_play(sound_get("dbd_weapon_drag_02"),false,noone,.3);
    		    break;
    		    case 2:
    		    sound_play(sound_get("dbd_weapon_drag_03"),false,noone,.3);
    		    break;
    		    case 3:
    		    sound_play(sound_get("dbd_weapon_drag_04"),false,noone,.3);
    		    break;
    		    case 4:
    		    sound_play(sound_get("dbd_weapon_drag_05"),false,noone,.3);
    		    break;
    		    case 5:
    		    sound_play(sound_get("dbd_weapon_drag_06"),false,noone,.3);
    		    break;
    		    case 6:
    		    sound_play(sound_get("dbd_weapon_drag_07"),false,noone,.3);
    		    break;
    		    case 7:
    		    sound_play(sound_get("dbd_weapon_drag_08"),false,noone,.3);
    		    break;
    		    case 8:
    		    sound_play(sound_get("dbd_weapon_drag_09"),false,noone,.3);
    		    break;
    		    case 9:
    		    sound_play(sound_get("dbd_weapon_drag_10"),false,noone,.3);
    		    break;
    		}
    		step_sound_prev = step_sound;
        }
    
}
else {
    sound_stop(sound_get("dbd_weapon_drag_01"));
    sound_stop(sound_get("dbd_weapon_drag_02"));
    sound_stop(sound_get("dbd_weapon_drag_03"));
    sound_stop(sound_get("dbd_weapon_drag_04"));
    sound_stop(sound_get("dbd_weapon_drag_05"));
    sound_stop(sound_get("dbd_weapon_drag_06"));
    sound_stop(sound_get("dbd_weapon_drag_07"));
    sound_stop(sound_get("dbd_weapon_drag_08"));
    sound_stop(sound_get("dbd_weapon_drag_09"));
    sound_stop(sound_get("dbd_weapon_drag_10"));
    walk_sparks = false;
    walk_sparks_cont = 0;
    dash_sparks = false;
    dash_sparks_cont = 0;
}

if (state == PS_ATTACK_GROUND && attack == AT_USTRONG && window == 5 && window_timer == 0 && !hitpause){
    sound_play(sound_get("weapon_impact2"),false,noone,1.6);
}

if (state == PS_PARRY){
    if state_timer == 0 {
    sound_play(sound_get("potd_trail_single"),false,noone,0.5);
    }
}

//Intro Stuff
if (state == PS_SPAWN)
{
    draw_indicator = false
    if (introTimer < sprite_get_number(sprite_get("intro")) && introTimer >= 0) {
        sprite_index = sprite_get("intro");
        image_index = introTimer;
    } else if (introTimer < 0) {
        sprite_index = sprite_get("intro");
        image_index = 0;
    } else {
        sprite_index = sprite_get("idle");
        draw_indicator = true;
    }
}
else
{
    draw_indicator = true;
}

//spear break visual (it's here because hitbox_update.gml runs a frame late heeheehaha)
with (pHitBox) if (attack == AT_NSPECIAL && player_id == other && destroyed && !has_hit){
    spear_break();
}

#define spear_break
var break_head = spawn_hit_fx(x - 10*spr_dir, y - 8, player_id.vfx_spear_break_head);
var break_shaft = spawn_hit_fx(x - 70*spr_dir, y - 8, player_id.vfx_spear_break_shaft);
break_head.draw_angle = proj_angle;
break_shaft.draw_angle = -proj_angle;
break_head.spr_dir = spr_dir;
break_shaft.spr_dir = spr_dir;
spawn_hit_fx(x - 56*spr_dir, y - 24, 14);
sound_play(spear_break_sound, false, noone, 0.8, 1.4);
sound_play(spear_impact_sound, false, noone, 0.7, 1.2);
destroyed_next = true;