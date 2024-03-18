//Animation

//plat
if state == PS_RESPAWN {
sprite_index = sprite_get("platsit")
}

if state == PS_WALL_JUMP {
    if (state_timer < 4) image_index = 0;
		else
		{
			if (wall_jump_timer <= 1)
			{
				sprite_index = sprite_get("wallslide");
				image_index = lerp(0, image_number, (vsp/max_slide_speed)*8);
				if (state_timer % 9 == 0 && !place_meeting(x+hsp,y,asset_get("par_block")))
					spawn_base_dust(x-(18*spr_dir),y-24, "dash", spr_dir, 90*-spr_dir);
			}
			else
			{
				sprite_index = sprite_get(used_wallkick ? "wallkick" : "walljump");
				image_index = lerp((wall_frames + 0.9) * !used_wallkick, image_number, (wall_jump_timer-4)/(walljump_time-4));
			}
		}
}


//intro anim template, remember post_draw and pre_draw can also add cool effects, 
//this is strip-based and only animates the character themselves
if (state == PS_SPAWN) 
{
	if (state_timer <= 20/0.35 ) { //20 is the amount of frames on the intro animation strip
    	sprite_index = sprite_get("intro");
    	image_index = knightanimframes;
    
    	//speed at which the intro animates
    	knightanimframes+= 0.35;//if you change this, change the number in the if statement regarding state_timer
	}
	if (state_timer == 25) {
		sound_play(sound_get("hero_land_hard"))
		sound_play(asset_get("sfx_kragg_rock_shatter"))
		spawn_base_dust(x+(0*spr_dir),y, "land", spr_dir, spr_dir);
		shake_camera(1,15);
	}
	if (state_timer >= 60) {
		char_height = 36
	} else {
		char_height = 1000;
	}
}



//when you want to use animation.gml during attacks, you need to first check if youre in an attack state
//otherwise these frames would appear outside of attack states
/*if state == PS_ATTACK_AIR || state == PS_ATTACK_GROUND
{
    switch (attack)
    {
        case AT_USPECIAL:
        {
            
        }break;
    }
}*/

/* Specific Sprites for Newcomer States
if state == PS_BURIED{sprite_index = sprite_get("[Desired Sprite Strip]");}
if state == PS_CRYSTALIZED{sprite_index = sprite_get("Desired Sprite Strip");}
if state == PS_FLASHED{sprite_index = sprite_get("Desired Sprite Strip");}
*/

#define spawn_base_dust
///spawn_base_dust(x, y, name, ?dir)
//This function spawns base cast dusts. Names can be found below.
var dlen; //dust_length value
var dfx; //dust_fx value
var dfg; //fg_sprite value
var dust_color = 0;
var x = argument[0], y = argument[1], name = argument[2];
var dir = argument_count > 3 ? argument[3] : 0;
var angle = argument_count > 4 ? argument[4] : 0;

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
var newdust = spawn_dust_fx(x,y,asset_get("empty_sprite"),dlen);
newdust.dust_fx = dfx; //set the fx id
if dfg != -1 newdust.fg_sprite = dfg; //set the foreground sprite
newdust.dust_color = dust_color; //set the dust color
if dir != 0 newdust.spr_dir = dir; //set the spr_dir
newdust.draw_angle = angle;
return newdust;