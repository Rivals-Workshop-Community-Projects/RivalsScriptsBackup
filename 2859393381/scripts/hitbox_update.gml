if (attack == AT_FSPECIAL)
{
    through_platforms = 37;
    if (!free && !evidence_bounced){
        vsp *= -0.7;
        hsp *= 0.5;
        evidence_bounced = true;
        var poof_fx = spawn_hit_fx(x, y, 301);
        switch (evidence_sound){
        	case 1: //paper items
        		sound_play(asset_get("sfx_blow_weak1"), false, noone, 0.3, 1);
        		sound_play(ev_sound_id, false, noone, 0.7, 1);
        	break;
        	case 2: //photo + cards
        		sound_play(ev_sound_id, false, noone, 0.9, 1);
        	break;
        	case 3: //flip phones that they use in 2016
        		sound_play(asset_get("sfx_blow_weak1"), false, noone, 0.5, 1);
    			sound_play(ev_sound_id, false, noone, 0.8, 1);
    		break;
    		case 4: //knife
    			sound_play(asset_get("sfx_shovel_hit_light1"), false, noone, 0.3, 1);
            	sound_play(ev_sound_id, false, noone, 0.5, 1);
            break;
            case 5: //gun
            	sound_play(asset_get("sfx_shovel_hit_light2"), false, noone, 0.7, 1);
            	sound_play(ev_sound_id, false, noone, 0.7, 1);
            break;
            case 6: //karu
            	sound_play(ev_sound_id, false, noone, 0.5, 1);
            break;
            case 7: //soft items
            	sound_play(ev_sound_id, false, noone, 0.6, 1);
            break;
            case 8: //shine
            	sound_play(ev_sound_id, false, noone, 0.4, 1);
            	sound_play(asset_get("sfx_blow_weak1"), false, noone, 0.5, 1);
            break;
            case 9: //sk gem
            	sound_play(asset_get("sfx_blow_heavy2"), false, noone, 0.6, 2.3);
            	sound_play(asset_get("sfx_diamond_collect"), false, noone, 0.9, 1);
            break;
            case 10: //mollo spraycan
            	sound_play(asset_get("sfx_ell_steam_hit"), false, noone, 0.5, 1);
            	sound_play(ev_sound_id, false, noone, 0.8, 1);
    		break;
    		case 11: //soap
    			sound_play(asset_get("sfx_blow_weak2"), false, noone, 0.8, 1.3);
        		sound_play(asset_get("sfx_waterhit_weak"), false, noone, 0.5, 1);
            	sound_play(asset_get("sfx_bubblepop"), false, noone, 1, 1.2);
            break;
            case 12: //bottle
            	sound_play(asset_get("sfx_blow_weak1"), false, noone, 0.3, 1);
            	sound_play(ev_sound_id, false, noone, 0.6, 1);
            break;
        }
	}
    if (evidence_bounced){
        proj_break = true;
        transcendent = true;
        air_friction = 0.07;
        hit_priority = 0;
        grounds = 1;
        walls = 1
        length += 999;
    }
    
    /*
    if (evidence_bounced_timer == 1){
    	evidence_hit_ground();
    }*/


    if (y > room_height + 50){
		destroyed = true;
    	}
}

if (attack == AT_FSPECIAL_2)
{
    if (was_parried) draw_xscale = spr_dir; //flips sprite on parry
}

//spawn base dust function by Supersonic
//written by supersonic, modified by bar-kun
#define spawn_base_dust
/// spawn_base_dust(x, y, name, dir = 0, angle = 0, win = -10, win_time = 0)
{
    // spawn_base_dust(x, y, name)
    // spawn_base_dust(x, y, name, ?dir, ?angle, ?window, ?window_timer)

    // This function spawns base cast dusts. Names can be found below.
    var dlen; //dust_length value
    var dfx; //dust_fx value
    var dfg; //fg_sprite value
    var dust_color = 0;
    var x = argument[0], y = argument[1], name = argument[2];
var dir = argument_count > 3 ? argument[3] : 0;
var angle = argument_count > 4 ? argument[4] : 0;
var win = argument_count > 5 ? argument[5] : -10;
var win_time = argument_count > 6 ? argument[6] : 0;

    if (!hitpause && (win > 0 && win == window && win_time == window_timer || win == -10) ) //spawns it whenever we want for 1 frame
    {
        switch (name) {
            default: 
            case "dash_start":dlen = 21; dfx = 3; dfg = 2626; break;
            case "dash": dlen = 16; dfx = 4; dfg = 2656; break;
            case "jump": dlen = 12; dfx = 11; dfg = 2646; break;
            case "doublejump": 
            case "djump": dlen = 21; dfx = 2; dfg = 2624; break;
            case "walk": dlen = 12; dfx = 5; dfg = 2628; break;
            case "land": dlen = 24; dfx = 0; dfg = 2620; break;
            case "n_wavedash": dlen = 24; dfx = 0; dfg = 2620; dust_color = 1; break;
            case "wavedash": dlen = 16; dfx = 4; dfg = 2656; dust_color = 1; break;
            //
            //bar-kun additions (note: idk how fg_sprite work)
            //
            case "dattack": dlen = 22; dfx = 12; dfg = 0; break;
            case "b_bounce_bg": dlen = 10; dfx = 7; dfg = 0; break;
            case "b_bounce_fg": dlen = 14; dfx = 8; dfg = 0; break;
            case "s_bounce_bg": dlen = 18; dfx = 7; dfg = 0; break;
            case "s_bounce_fg": dlen = 19; dfx = 8; dfg = 0; break;
            case "doublejump_small": 
            case "djump_small": dlen = 21; dfx = 16; dfg = 0; break;
        }
        var newdust = spawn_dust_fx(x, y, asset_get("empty_sprite"), dlen);
        newdust.x = floor(x);
        newdust.y = floor(y);
        newdust.dust_fx = dfx; //set the fx id
        if (dfg != -1) newdust.fg_sprite = dfg; //set the foreground sprite

        newdust.dust_color = dust_color; //set the dust color

        if (dir != 0) newdust.spr_dir = dir; //set the spr_dir, if dir is 0 it will take the player's spr_dir
        else newdust.spr_dir = spr_dir;

        newdust.draw_angle = angle; //sets the angle of the dust sprite
        return newdust;
    }
}

