//post_draw.gml
//we use this script to draw over the player character, both text and sprites can be used here

//respawn platform - check if the player is either in the respawn state or taunting while in the respawn state
changelog();
muno_event_type = 4; // WARN: Possible Desync. Object var set in draw script. Consider using `var` or creating constants in `init.gml`.
if(get_match_setting(SET_PRACTICE))
{
	user_event(14);
}
	
if (state == PS_RESPAWN || respawn_taunt > 0)
{
    draw_sprite_ext(sprite_get("plat_post"), game_time * plat_speed, x, y, 2, 2, 0, c_white, 1);
}

if(move_cooldown[AT_NSPECIAL] > 0)
{
    var fillCool_total = 120
    var fillCool = 1 - (move_cooldown[AT_NSPECIAL] / fillCool_total);
    //var fillCoolVis = (move_cooldown[AT_NSPECIAL] / fillCool_total);
draw_sprite_ext(sprite_get("fx_grapple_meter_back"), 0, x-20, y + 10, 1.5, 1, 0, c_white, .8);
draw_sprite_ext(sprite_get("fx_grapple_meter_mask"), 0, x-20, y + 10, fillCool*1.5, 1, 0, c_white, .8);
}

if(hit_onBeat)
{
	glowEffect();
}
if (is_attacking) switch (attack)
{
    //dust effects (check the spawn_base_dust function for more info on the expandtion i added - bar-kun)
    case AT_JAB:
        spawn_base_dust(x - 8 * spr_dir, y, "dash", 0, 0, 4, 4); 
        spawn_base_dust(x + 32 * spr_dir, y, "dash_start", 0, 0, 7, 4);
        break;
    case AT_FTILT:
        spawn_base_dust(x - 16 * spr_dir, y, "dash", 0, 0, 1, 7);
        spawn_base_dust(x, y, "dash_start", 0, 0, 8, 1);
        break;
    case AT_DTILT:
        spawn_base_dust(x + 32 * spr_dir, y, "dash_start", 0, 0, 1, 0);
        break;
    case AT_USTRONG:
        spawn_base_dust(x, y, "jump", 0, 0, 3, 3);
        break;
    case AT_FSTRONG:
        spawn_base_dust(x - 8 * spr_dir, y, "dash_start", 0, 0, 3, 0);
        break;
    case AT_DSTRONG:
        spawn_base_dust(x + 32 * spr_dir, y, "dattack", -spr_dir, 0, 4);
        spawn_base_dust(x - 32 * spr_dir, y, "dattack", spr_dir, 0, 4);
        break;

    case AT_NSPECIAL:
        
        shader_start(); //this makes it capture the pallete changes
        if (is_attacking && attack == AT_NSPECIAL)
        {
            //draw indicator
			if (window == 1 && window_timer > 0 || window > 1 && window < 4)
            {

				spawn_base_dust(x-20*spr_dir, y, "dash_start", 0, 0, 3, 3);	
					
            	if(nspec_on_target)
            		{
                draw_sprite_ext(
                    sprite_get("fx_crosshair_true"),
                    0,
                    nspec_tether_pos[0], //these are the recorded coordinates of fspec, stored in an array
                    nspec_tether_pos[1], //0 is X and 1 is Y, we also use them later for the tether "rope" distance
                    1,
                    1,
                    game_time * 2, //rotates indicator based on the game_time, so it always rotates
                    c_white,
                    1
                );
            		} else
            			{
			                draw_sprite_ext(
			                    sprite_get("fx_crosshair"),
			                    0,
			                    nspec_tether_pos[0], //these are the recorded coordinates of fspec, stored in an array
			                    nspec_tether_pos[1], //0 is X and 1 is Y, we also use them later for the tether "rope" distance
			                    1,
			                    1,
			                    game_time * 2, //rotates indicator based on the game_time, so it always rotates
			                    c_white,
			                    1
			                );
            			}
            			
            	draw_sprite_ext(
                    sprite_get("fx_fspec_tether"),
                    window_timer * 0.4,
                    x+44*spr_dir,
                    y-char_height/2,
                    point_distance(x+48*spr_dir, y-char_height/2, nspec_tether_pos[0], nspec_tether_pos[1]) / sprite_get_width(sprite_get("fx_fspec_tether")),
                    1,
                    point_direction(x+48*spr_dir, y-char_height/2, nspec_tether_pos[0], nspec_tether_pos[1]), //returns an angle number between these 2 points
                    c_white,
                    .5);	
                    
                
            }
            if (window == 4) //draw tether "rope"
            {
            	if(nspec_found_target)
            	{
            	draw_sprite_ext(
                    sprite_get("fx_fspec_tether"),
                    window_timer * 0.4,
                    x+44*spr_dir,
                    y-char_height/2,
                    point_distance(x+48*spr_dir, y-char_height/2, nspec_tether_pos[0], nspec_tether_pos[1]) / sprite_get_width(sprite_get("fx_fspec_tether")),
                    1,
                    point_direction(x+48*spr_dir, y-char_height/2, nspec_tether_pos[0], nspec_tether_pos[1]), //returns an angle number between these 2 points
                    c_white,
                    1);	
                    
                draw_sprite_ext(
                    sprite_get("nspecial_proj"),
                    window_timer * 0.4,
                    nspec_tether_pos[0],
                    nspec_tether_pos[1],
                    1,
                    1,
                    point_direction(x+48*spr_dir, y-char_height/2, nspec_tether_pos[0], nspec_tether_pos[1]), //returns an angle number between these 2 points
                    c_white,
                    1);
                    
            	}
            	
            	if (instance_exists(nspec_grapple))
            	{
                //the point distance stretches the tether "rope" sprite according to the distance and the width of the sprite
                draw_sprite_ext(
                    sprite_get("fx_fspec_tether"),
                    window_timer * 0.4,
                    x+44*spr_dir,
                    y-char_height/2,
                    point_distance(x+48*spr_dir, y-char_height/2, nspec_grapple.x, nspec_grapple.y) / sprite_get_width(sprite_get("fx_fspec_tether")),
                    1,
                    point_direction(x+48*spr_dir, y-char_height/2, nspec_tether_pos[0], nspec_tether_pos[1]), //returns an angle number between these 2 points
                    c_white,
                    1);
                
                draw_sprite_ext(
                    sprite_get("nspecial_proj"),
                    window_timer * 0.4,
                    nspec_grapple.x,
                    nspec_grapple.y+6,
                    1,
                    1,
                    point_direction(x+48*spr_dir, y-char_height/2, nspec_tether_pos[0], nspec_tether_pos[1]), //returns an angle number between these 2 points
                    c_white,
                    1);
            	}
            	
            }
            if (window == 6) //draw tether "rope"
            {
                //the point distance stretches the tether "rope" sprite according to the distance and the width of the sprite
                draw_sprite_ext(
                    sprite_get("fx_fspec_tether"),
                    window_timer * 0.4,
                    x+44*spr_dir,
                    y-char_height/2,
                    point_distance(x+48*spr_dir, y-char_height/2, nspec_tether_pos[0], nspec_tether_pos[1]) / sprite_get_width(sprite_get("fx_fspec_tether")),
                    1,
                    point_direction(x+48*spr_dir, y-char_height/2, nspec_tether_pos[0], nspec_tether_pos[1]), //returns an angle number between these 2 points
                    c_white,
                    1);
                draw_sprite_ext(
                    sprite_get("nspecial_proj"),
                    window_timer * 0.4,
                    nspec_tether_pos[0],
                    nspec_tether_pos[1],
                    1,
                    1,
                    point_direction(x+48*spr_dir, y-char_height/2, nspec_tether_pos[0], nspec_tether_pos[1]), //returns an angle number between these 2 points
                    c_white,
                    1);
            }
            spawn_base_dust(x - 16, y - char_height / 2, "djump", 0, (90 + nspec_angle * fspec_aim) * -spr_dir, 6, 0);
		}
        shader_end();
        break;
    case AT_FSPECIAL:
    	switch(window)
    	{
    		case 2:
    		//	draw_sprite_ext(sprite_get("chai_fspecial_follow"), 0, x+5*spr_dir, y-char_height/2, point_distance(x+5*spr_dir, y-char_height/2, fspec_charge, y-char_height/2), 1, 0, c_white, .3);
    			spawn_base_dust(x - 8 * spr_dir, y, "dash_start", 0, 0, 3, 0);
    		
    			break;
    		
    		case 3:
    			glowEffect2();
    			spawn_base_dust(x - 8 * spr_dir, y, "dash_start", 0, 0, 3, 0);
    			break;
    		case 4: case 5:
    			spawn_base_dust(x - 8 * spr_dir, y, "dash_stop", 0, 0, 4, 0);
    			break;
    		
    	}
        break;
        
    case AT_USPECIAL:
    	
    	switch(window)
    	{
    		case 2:
    		var ini_x = 0;
    		var ini_y = 0;
    		var usp_x = 0;
    		var usp_y = 0;
    		//uspec_beam_angle
    		case 4: 
    		 	if(instance_exists(uspec_beam))
    			{
				usp_x = uspec_beam.x;
    			usp_y = uspec_beam.y;
					switch(uspec_angle_type)
					{
						case -1:
						ini_x = uspec_init_x;
						ini_y = uspec_init_y-20;
						draw_sprite_ext(
		                    sprite_get("uspecial_loop_fx"),
		                    window_timer * 0.4,
		                    uspec_init_x,
		                    uspec_init_y-20,
		                    point_distance(x+10, y-char_height/2, uspec_beam.x, uspec_beam.y) / sprite_get_width(sprite_get("uspecial_loop_fx")),
		                    1,
		                    point_direction(x+10, y-char_height/2,uspec_beam.x, uspec_beam.y), //returns an angle number between these 2 points
		                    c_white,
		                    .8);
						break;
						
						case 0:
							if(spr_dir = -1)
							{
								ini_x = uspec_init_x;
								ini_y = uspec_init_y;
								draw_sprite_ext(
			                    sprite_get("uspecial_loop_fx"),
			                    window_timer * 0.4,
			                    uspec_init_x,
			                    uspec_init_y,
			                    point_distance(x+10, y-char_height/2, uspec_beam.x, uspec_beam.y) / sprite_get_width(sprite_get("uspecial_loop_fx")),
			                    1,
			                    270, //returns an angle number between these 2 points
			                    c_white,
			                    .8);
							}else
								{
								 ini_x = uspec_init_x+50;
							     ini_y = uspec_init_y;
								 draw_sprite_ext(
				                    sprite_get("uspecial_loop_fx"),
				                    window_timer * 0.4,
				                    uspec_init_x+50,
				                    uspec_init_y,
				                    point_distance(x+10, y-char_height/2, uspec_beam.x, uspec_beam.y) / sprite_get_width(sprite_get("uspecial_loop_fx")),
				                    1,
				                    270, //returns an angle number between these 2 points
				                    c_white,
				                    .8);
								}
						break;
						
						case 1:
						ini_x = uspec_init_x+45;
						ini_y = uspec_init_y+40;
						draw_sprite_ext(
		                    sprite_get("uspecial_loop_fx"),
		                    window_timer * 0.4,
		                    uspec_init_x+45,
		                    uspec_init_y+40,
		                    point_distance(x+10, y-char_height/2, uspec_beam.x, uspec_beam.y) / sprite_get_width(sprite_get("uspecial_loop_fx")),
		                    1,
		                    point_direction(x+10, y-char_height/2,uspec_beam.x, uspec_beam.y), //returns an angle number between these 2 points
		                    c_white,
		                    .8);
						break;
					}
    			}
    	}
}

if (get_match_setting(SET_RUNES))
{
    //spawns dusts on wall when sliding
    if (has_rune("A")) if (clinging && wall_slide_enabled && state_timer % 6 == 0) spawn_base_dust(x-20*spr_dir, y-char_height/2, "walk", spr_dir, 90);
}

#define glowEffect
{
	shader_start();
	gpu_set_blendmode(bm_add);
        draw_sprite_ext(sprite_index, image_index , x , y - get_gameplay_time() % 10  , spr_dir*2, 2, 0 , -1 , 0.3 - (get_gameplay_time() % 10/20));
        draw_sprite_ext(sprite_index, image_index , x , y   , spr_dir*2, 2, 0 , -1 , 0.3);
gpu_set_blendmode(bm_normal);
	shader_end();
}
//written by muno

#define glowEffect2
{
	shader_start();
	gpu_set_blendmode(bm_add);
        draw_sprite_ext(sprite_index, image_index , x , y - get_gameplay_time() % 10  , spr_dir*2, 2, 0 , -1 , .6 - (get_gameplay_time() % 10/20));
        draw_sprite_ext(sprite_index, image_index , x , y   , spr_dir*2, 2, 0 , -1 , 0.6);
gpu_set_blendmode(bm_normal);
	shader_end();
}

#define rectDraw(x1, y1, width, height, color)
{
    draw_rectangle_color(x1, y1, x1 + width, y1 + height, color, color, color, color, false);
}
#define textDraw(x1, y1, font, color, lineb, linew, align, scale, outline, alpha, text, array_bool)
{
    draw_set_font(asset_get(font));
    draw_set_halign(align);

    if outline {
        for (i = -1; i < 2; i++) {
            for (j = -1; j < 2; j++) {
                draw_text_ext_transformed_color(x1 + i * 2, y1 + j * 2, text, lineb, linew, scale, scale, 0, c_black, c_black, c_black, c_black, alpha);
            }
        }
    }

    if alpha draw_text_ext_transformed_color(x1, y1, text, lineb, linew, scale, scale, 0, color, color, color, color, alpha);

    if array_bool return [string_width_ext(text, lineb, linew), string_height_ext(text, lineb, linew)];
    else return;
}

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

#define changelog
{
	if (object_index == asset_get("oTestPlayer")){//this checks if it's in a playtest screen.
    if (!variable_instance_exists(id,"pn__init")){//initialization part runs once
        var i = 0;
        
        //*^+._.+^*^+._.+^*^+._.+^*^+._.+^*^+._.+^*^+._.+^*^+._.+^*^+._.+^*^+._.+^*^+._.+^*^+._.+^*
        //       if you're just trying to put this on your character, change these variables!
        //*^+._.+^*^+._.+^*^+._.+^*^+._.+^*^+._.+^*^+._.+^*^+._.+^*^+._.+^*^+._.+^*^+._.+^*^+._.+^*
        
        //IF YOUR TEXT HAS "" (quotes), REPLACE IT OR IT WILL BREAK!!! i usually replace them with '' (apostrophe)
        //to make a new line, simply press enter. rivals' gml parser thing reads newline in string properly for some reason
        //you can make as many entry as you want by copypasting
        //  patch_note_title[i] = "";   and   patch_note_text[i++] = ""   like the example.
        //no need to change the array number! (or rather, "i++" in this case), as it's incrementing itself each new text.
        //the order you have in the code is how it'll be ordered in the list as well.
        //
        //i made it able to store multiple text but its probably recommended to only have a few in here
        //like just for recent few patch notes maybe? but it's up to you how you use it!
        //
        //put text here.
        
        patch_note_title[i] = "Version 2.0 NEW UPDATE - 12/26/2023"
        patch_note_text[i++] = 
        "Version 2.0 12/26/2023
---

Surprise Holiday update! Thanks a lot to all of you that played Chai! Back from my dev break so here's some Chai fixes and changes that I really wanted to improve on but couldn't before.

Taking in all the feedback I've been seeing over the past few months, I've tried to incorporate and adjust as much as I could in this brand new update with the intent to fix all the issues that have been brought up with the character!

Balance Changes:

FStrong:
	- Knockback decreased from 9 to 6
	- Beat hit damage decreased by 1 (12 to 11)
	- Beat hit knockback decreased by 2

Ftilt:
	- First and Second hit knockback reduced by 1
	- Final hit knockback reduced from 6 to 5
Dtilt:
	- Decreased distance moved (HSpeed from 3 to 2)
	- Knockback angle changed from 110 to 90
	- Knockback reduced from 5 to 4
UpAir:
	- Active frames increased from 4 to 5
	- Increased hitbox X position (0 to -7)
	- Increased hitbox Y position (-68 to -75)
	- Increased height from 47 to 49

Nair:
	- Adjusted vertical height when canceling hits into a jump (VSP changed from -5 to -3)
Fair:
	- Decreased damage on first and second hit by 1
	- Decreased damage on final hit by 2

DAttack:

NSpecial:
	- ** Added a transparent tether chain while aiming to help visualize where the magnet hand will go! 
	- ** Added new fixed crosshair sprite to address mixel issue
	- ** Added new sprite to show when crosshair is locked onto opponent

	- ** Added falling momentum when activating special
	- ** Added function where when Chai latches onto an enemy but hits a wall, instead of being sent into pratfall he wall techs
	- Lowered aiming sensitivity slightly for easier aiming
	- Moved starting position of Magnet Hand closer to Chai (Moved by 6 pixels closer)
	- Increased cooldown slightly (120 > 125)
	- Increased time duration (wind-up) before shooting projectile (from 27 frames to 55 frames) 
	- Decreased height Chai jumps when flying towards enemy (-9 to -7)
	- Increased hitpause on 2nd landing hitbox from 10 to 13
	- Increased hitbox on crosshair and projectile to make latching onto opponents much easier
	- Adjusted projectile distance range so it doesn't exceed past its crosshair

FSpecial:
	- ** When inputting attacks for the follow-up, Chai now faces backwards to attack enemies behind him
	- ** Inputting the Down + Attack follow-up now uses the last hit of Chai's Ftilt
	- ** Now if FSpecial isn't charged to a certain point (2 bell clicks), Chai will only strike once

	- Increased start up time from 10 frames to 13 frames
	- Increased hitpause on final hit from 15 to 18
	- Decreased active hitbox time by 4 frames (15 to 11)
	- Decreased damage on first two hits by 3
	- Decreased damage on final hit by 3 (7 to 4)
	- Additional horizontal speed given by Beat Hit version decreased from 3 to 2

DSpecial:
	- Lowered frequency of voice lines so it doesn't get too overbearing when spamming attacks
	- Lowered volume of overall SFX
	- Adjusted activation hitbox to actually match the sprite
	- Decreased hitpause on Macaron attack (from 10 to 8)
	- Decreased knockback on Macaron attack (from 7 to 5)
	- Decreased knockback on Korsica wind projectiles (from 6 to 4)

Adjusted hitboxes for attacks to better match their animations:
	- Jab: 
	- FTilt
	- FStrong:
		First hitbox increased and placed closer to Chai
		Second hitbox moved closer to Chai and increased width slightly (70 to 73)
	- FSpecial:
		Hitbox y-position lowered by 8 pixels
=============================

Bug / Aesthetic changes:

Upscaled Assist HUD to clean up the remaining mixel issues

Added dust cloud effects for using NSpecial (in Air) and FSpecial (Charging)

Adjusted offsets for sprites that seemed off to better match their animations

**Fixed mixels on most if not all sprites (HUD, Projectiles, USpecial Beam, etc)

===========================
"
        
        patch_note_title[i] = "8/8/2023 - Music BPM Hot Fix"
        patch_note_text[i++] = 
        "8 / 8 / 2023
---
v1.8
HOT FIX UPDATE! 
Sorry for the frequent updates but seemed like the BPM feature wasn't working properly. This patch will fix it slightly and make the speed change more apparent.
*** = Major change

***BPM adjustment to Base game Stages have be tuned to better match their song speeds

***Added a CSS button that allows you to toggle the Base Stage BPM change or to stay at a constant 130 BPM!
	Click the Music note icon on the CSS to enable or disable. Disable will set BPM to 130 when match starts

Added base stages that were missing in the initial patch:
	- CEO Ring = BPM 125
	- Badger Co Mines = BPM 140
	- Tutorial Grid X = BPM 130
	
Bug fixes:
- Fixed Assist Call HUD showing the wrong order of assists when on Korsica (Mac was placed on the 2nd slot)
- Fixed issue with restarting a match with Chai causes the game to crash

Attacks:

FStrong:
	- Increased Knockback scaling on Beat Hit
		- From .8 to 1.1
UStrong:
	- Adjusted Knockback scaling on Beat Hit
		- From .8 to 1.1
"
		
        patch_note_title[i] = "8/7/2023 - Music BPM Feature you all wanted"
        patch_note_text[i++] = 
        "8 / 7 / 2023
---
v1.4

A huge change but small patch

*** = Major update stuff

Overall:

*** Added the ability to change the BPM function to be adjusted to a base stage's music!
	- On by default, if you want to revert to a more stable BPM then hold Right + press Taunt in the match!
	- When on a custom stage, BPM defaults to an approximate 130 BPM

Compatible with all BASE STAGES.
'Treetop Lodge' + 'BPM: 150'
'Fire Capital' + 'BPM: 140'
'Air Armada' + 'BPM: 170'
'The Rock Wall' + 'BPM: 135'
'Merchant Port' + 'BPM: 140'
'Blazing Hideout' + 'BPM: 145'
'Tower of Heaven' + 'BPM: 140'
'Tempest Peak' + 'BPM: 160'
'Frozen Fortress' + 'BPM: 140'
'Aetheral Gates' + 'BPM: 150'
'Endless Abyss' + 'BPM: 150'
'The Spirit Tree' + 'BPM: 120'
'Neo Fire Capital' + 'BPM: 160'
'Swampy Estuary' + 'BPM: 166'
'The Forest Floor' + 'BPM: 165'
'Junesville' + 'BPM: 140'
'Trouple Pond' + 'BPM: 186'
'Practice Room' + 'BPM: 130'
'Aether High' + 'BPM: 129'
'Pridemoon Keep' + 'BPM: 139'
'Frozen Gates' + 'BPM: 144'
'The Tutorial Grid' + 'BPM: 130'
'ROA Ring' + 'BPM: 125'
'Neo Blazing Rail' + 'BPM: 150'
'Neo Julesville' + 'BPM: 150'
'Crystal Oasis' + 'BPM: 150'
'Diamond Groove' + 'BPM: 150'

Aesthetics:
	-Adjusted the y-position of Magnet Hand coolbar by 5 pixels

Attacks:

FStrong:
	- Increased the knockback of attack
		- From 7 to 9
		- Beat Hit: From 9 to 11
UStrong:
	- Increased the knockback of attack
		- From 8 to 10
		- Beat Hit: From 9 to 11"
		
        patch_note_title[i] = "8/5/2023 - 1st big balance"
        patch_note_text[i++] = 
        "8/5/2023
---
A rather big patch fix this time.
*** = Major change

***Added in change log compatability!***
- Don't want to always check the steam workshop for updates? Then just go into playtest and check it there!


Discovered some issues with some moves and got some feedback in terms of balancing!

Jab:
	- Adjusted animation to make the move much smoother looking
	- Adjusted the start up frames for each part of the move
		- Jab 1: Frame 11 to Frame 6 (Current)
		- Jab 2: Frame 28 to Frame 26
		- Jab 3: Frame 50 to Frame 46
	- Changed base knockback of move
		- Jab 1: Knockback from 3 to 4
		- Jab 2: Knockback from 3 to 4
	- Adjusted end lag of move to better help with timing Beat Hits
		- End lag increased from 8 to 10 for each jab

FTilt:
	- Fixed hitbox of FTilt 1 from appearing before the animation entails
	- Adjusted the start up frames for each part of the move
		- FTilt 1: Frame 13 to Frame 10
		- FTilt 2: Frame 39 to Frame 37
		- FTilt 3: Frame 65 to Frame 63
	- Changed hitbox height on FTilt 2 from 38 to 40
	- Increased hitbox Y-Pos on FTilt 3 by 5 pixels higher

DTilt:
	- Can now cancel move on hit
	- Adjusted the start up of move
		- From Frame 10 to Frame 7
	- Adjusted end lag (whiff) of move
		- From 10 (14) to 11 (15)

UTilt:
	- *** Overhauled UTilt by changing the move from doing 1 hit to 2 hits ***
	- Knockback values for UTilt 1 adjusted to accomedate Utilt 2 being added
	- Adjusted the start up frames for each part of the move
		- UTilt 1: Frame 12 to 10 
		- Utilt 2: Frame 19
	- Adjusted end lag (whiff) of move
		- From 5 (9) to 4 (8)
	- Adjusted angle from 90 to 100 respectively, allowing much easier air follow ups
Nair:
	- Adjusted start up frames
		- Nair 1: Frame 11 to Frame 10
	- Adjusted angle from 80 to 90
	- Knockback scaling adjusted:
		- Nair 1: .2 to .3
		- Nair 2: .2 to .3

Bair:
	- Changed Beat Hit SFX so that it differs from the normal hit

Uair:
	- Changed Beat Hit SFX so that it differs from the normal hit

Dair:
	- Changed Beat Hit SFX so that it differs from the normal hit

UStrong:
	- Fixed the animation being mistimed when Chai starts the jump part of the move
		- Adjusted the window and animation timing to accomedate this change.
	- Chai's Voice now only says 'HIGH PITCH PUNCH!' when he does the Beat Hit version of UStrong

NSpecial (Magnet Hand):
	- Increased hit pause on tether slam from 8 to 10

FSpecial (Staccato Launch):
	- Decreased the width of hitbox on slash from 90 to 60

USpecial (Harmonic Beam):
	- Fixed bug where timing the Beat Hit has a chance to overlap sound effects, leading to a loud volume burst of SFX

DSpecial (Assist Call):
	- Peppermint:
		- Adjusted bullet spawn height to be higher by 10 pixels
"
        
        patch_note_title[i] = "8/3/2023 - Day 1 Patch"
        patch_note_text[i++] = 
        "8/3/2023
		---
		
		Small Day 1 patch:
		
		- Added finished tag
		- Added new Tutorial mode for Chai Beat hit timings
		- Can only be enabled in Training. Activate by holding Left and pressing Taunt. You'll hear a bell SFX once it's active
		- Plays clapping SFXs alongside the beat hit timers to use as reference to assist with learning how to land Beat Hits
		
		- Added win quote compatibility!
		- No specific character ones yet however. Chai hasn't met them yet."
        
        patch_note_title[i] = "8/2/2023 - Release!"
        patch_note_text[i++] = 
        "v1.0
		---

		Chai has been released!"
        
        
        
        //these are optional things that you can change if you'd like, but probably best to keep as-is
        pn__bg_col = make_colour_rgb( 0,0,0 ); //bg color. // WARN: Possible Desync. Object var set in draw script. Consider using `var` or creating constants in `init.gml`.
        pn__txt_col = make_colour_rgb( 255,255,255 ); //text color. // WARN: Possible Desync. Object var set in draw script. Consider using `var` or creating constants in `init.gml`.
        pn__acc_col = get_player_hud_color( player ); //accent color. // WARN: Possible Desync. Object var set in draw script. Consider using `var` or creating constants in `init.gml`.
        pn__btn_txt = "hold TAUNT: changelog"; //button text // WARN: Possible Desync. Object var set in draw script. Consider using `var` or creating constants in `init.gml`.
        pn__btn_width = 176; //button width in pixels, change it accordingly to text // WARN: Possible Desync. Object var set in draw script. Consider using `var` or creating constants in `init.gml`.
        pn__guide_txt = "use ATTACK / SPECIAL"; //select list guide text // WARN: Possible Desync. Object var set in draw script. Consider using `var` or creating constants in `init.gml`.
        pn__swipe_sound = asset_get("mfx_result_expand"); //sound for when changelog is opened/closed with taunt // WARN: Possible Desync. Object var set in draw script. Consider using `var` or creating constants in `init.gml`.
        pn__move_sound = asset_get("mfx_input_key"); //sound for moving between list entries // WARN: Possible Desync. Object var set in draw script. Consider using `var` or creating constants in `init.gml`.
        pn__confirm_sound = asset_get("mfx_forward"); //sound for confirming a list entry // WARN: Possible Desync. Object var set in draw script. Consider using `var` or creating constants in `init.gml`.
        pn__cancel_sound = asset_get("mfx_return_cursor"); //sound for cancelling out of a list entry // WARN: Possible Desync. Object var set in draw script. Consider using `var` or creating constants in `init.gml`.
        pn__scroll_speed = 3; //the speed of which how fast you scroll up/down in text display // WARN: Possible Desync. Object var set in draw script. Consider using `var` or creating constants in `init.gml`.
        
        //*^+._.+^*^+._.+^*^+._.+^*^+._.+^*^+._.+^*^+._.+^*^+._.+^*^+._.+^*^+._.+^*^+._.+^*^+._.+^*
        //*^+._.+^*^+._.+^*^+._.+^*^+._.+^*^+._.+^*^+._.+^*^+._.+^*^+._.+^*^+._.+^*^+._.+^*^+._.+^*
        
        //below are the actual patch note rendering and stuff.
        //if you're not trying to do in-depth stuff, you dont have to touch these
        //these are permanent variables just so we only have to run them once
        //pn__ standing for Patch Note (double underscore cause i dont think anyone would do this, avoiding overlaps)
        pn__init = true; // WARN: Possible Desync. Object var set in draw script. Consider using `var` or creating constants in `init.gml`.
        pn__list_select = 0; // WARN: Possible Desync. Object var set in draw script. Consider using `var` or creating constants in `init.gml`.
        pm__list_select_old = pn__list_select; //remember old selection for transition anim direction purposes // WARN: Possible Desync. Object var set in draw script. Consider using `var` or creating constants in `init.gml`.
        pn__list_max = i-1; //print(string(pn__list_max)); // WARN: Possible Desync. Object var set in draw script. Consider using `var` or creating constants in `init.gml`.
        pn__taunt_track = 0; //after activated, checks if taunt has been unpressed before timer starts counting up again // WARN: Possible Desync. Object var set in draw script. Consider using `var` or creating constants in `init.gml`.
        pn__taunt_timer = 0; //track how long taunt is being held // WARN: Possible Desync. Object var set in draw script. Consider using `var` or creating constants in `init.gml`.
        pn__taunt_max = 50; //how long taunt should be held until its open // WARN: Possible Desync. Object var set in draw script. Consider using `var` or creating constants in `init.gml`.
        pn__open = false; //is it open or not // WARN: Possible Desync. Object var set in draw script. Consider using `var` or creating constants in `init.gml`.
        pn__opener_timer_max = 30; //opening timer max // WARN: Possible Desync. Object var set in draw script. Consider using `var` or creating constants in `init.gml`.
        pn__opener_timer = pn__opener_timer_max; //timer for opening // WARN: Possible Desync. Object var set in draw script. Consider using `var` or creating constants in `init.gml`.
        pn__displaying = false; //is it in the text screen (true) or in the list screen (false) // WARN: Possible Desync. Object var set in draw script. Consider using `var` or creating constants in `init.gml`.
        pn__scroll = 0; //current amount of scroll // WARN: Possible Desync. Object var set in draw script. Consider using `var` or creating constants in `init.gml`.
        pn__up_track = 0; //same with taunt track for list selection // WARN: Possible Desync. Object var set in draw script. Consider using `var` or creating constants in `init.gml`.
        pn__down_track = 0; //yes // WARN: Possible Desync. Object var set in draw script. Consider using `var` or creating constants in `init.gml`.
        pn__list_old = 0; //list selection storage // WARN: Possible Desync. Object var set in draw script. Consider using `var` or creating constants in `init.gml`.
        pn__select_timer_max = 16; //selection transition timer max // WARN: Possible Desync. Object var set in draw script. Consider using `var` or creating constants in `init.gml`.
        pn__select_timer = pn__select_timer_max; //selection transition timer // WARN: Possible Desync. Object var set in draw script. Consider using `var` or creating constants in `init.gml`.
        pn__scroll_did = 0; //niche storage for if list has scrolled or not // WARN: Possible Desync. Object var set in draw script. Consider using `var` or creating constants in `init.gml`.
            pn__online = false; //set // WARN: Possible Desync. Object var set in draw script. Consider using `var` or creating constants in `init.gml`.
        if (room == asset_get("network_char_select") || room == asset_get("workshop_room")){ //if in online playtest, or in extramode workshop list playtest
            //thanks to mr nart for heads up on using asset_get for room id's instead!
            pn__online = true; //switch to online view // WARN: Possible Desync. Object var set in draw script. Consider using `var` or creating constants in `init.gml`.
        }
        
    }
    if (variable_instance_exists(id,"pn__init")){ //this is very unnecessary i just want to be safe to avoid error log
        //the var's will omit the pn__ prefix because i dont think var's would interfere much with overlaps
        //unless its in the same code, of course
        //
        //notes for self and for others:
        //sprites with origin point at bottom will align with offline playtest screen bottom with
        //clamp( (y + 61), 0, room_height-13 );
        //update: accounting for room top, clamp( (y + 61), 209, room_height-13 );
        //camera reaches the top at y 148, anything higher shifts the camera, so + 61, then 209
        //playtest canvas is w 200 h 162 at 2x scale.
        //css playtest is room 69
        //extramode workshop list playtest is room 72  -  asset_get("workshop_room")
        //online playtest is room 113  -  asset_get("network_char_select")
        
        var bc_x = clamp( x, 100, 860 );//i guess this is the "center", bottom center
        var bc_y = clamp( (y + 61), 209, room_height-13 );//puzzles of math
        var bc_yA = bc_y;//copy to preserve original for use as this one will be changed
        var pn_bg = pn__bg_col; //it was long, will make it short. bg color.
        var pn_txt = pn__txt_col; //text color.
        var pn_acc = pn__acc_col; //text color.
        var pn_i = pn__list_select; //selected entry.
        var btn_wh = pn__btn_width/2; //button width but halved.
        var page_h = 144 //page height
        var pn_alpha = 0.8; //alpha
        var a_str = draw_get_alpha(); //store the original alpha value to get back to once im done rendering, just in case
        
        // !!online values override!! 
        if (pn__online){//create online detection later
            var bc_x = clamp( 120, 100, 860 );//i guess this is the "center", bottom center
            var bc_y = clamp( (y + 111), 255, room_height-13 );
            var bc_yA = bc_y;
            var page_h = 190; //page height
        }
        var extendem = (pn__online)?260:0;
        
        //player freezer i hope
        if (pn__open){ //(if open)
            state = PS_SPAWN; // WARN: Possible Desync. Object var set in draw script. Consider using `var` or creating constants in `init.gml`.
            state_timer = 89; // WARN: Possible Desync. Object var set in draw script. Consider using `var` or creating constants in `init.gml`.
            hitpause = true; hitstop = 2; hitstop_full = 2; // WARN: Possible Desync. Object var set in draw script. Consider using `var` or creating constants in `init.gml`.
        }
        //offset
        if (pn__opener_timer<pn__opener_timer_max){
            pn__opener_timer++;
        }
        if (pn__select_timer<pn__select_timer_max){
            pn__select_timer++;
        }
        if (pn__open){ //(if opened)
            var bc_yA = ease_expoOut( bc_yA-40, bc_y-page_h, pn__opener_timer, pn__opener_timer_max )
        }else{ //(if closed)
            var bc_yA = ease_expoOut( bc_y+40-page_h, bc_yA, pn__opener_timer, pn__opener_timer_max )
        }
        
        //draw time
        
        draw_set_alpha(pn_alpha);
        //bottom to top
        var btn_wh_tmp = btn_wh+6;
        draw_rectangle_colour( bc_x-btn_wh_tmp, bc_yA-1, bc_x+(btn_wh_tmp-1), bc_yA, pn_bg,pn_bg,pn_bg,pn_bg, false );
        var btn_wh_tmp = btn_wh+2;
        draw_rectangle_colour( bc_x-btn_wh_tmp, bc_yA-3, bc_x+(btn_wh_tmp-1), bc_yA-2, pn_bg,pn_bg,pn_bg,pn_bg, false );
        draw_rectangle_colour( bc_x-btn_wh, bc_yA-13, bc_x+(btn_wh-1), bc_yA-4, pn_bg,pn_bg,pn_bg,pn_bg, false );
        var btn_wh_tmp = btn_wh-2;
        draw_rectangle_colour( bc_x-btn_wh_tmp, bc_yA-15, bc_x+(btn_wh_tmp-1), bc_yA-14, pn_bg,pn_bg,pn_bg,pn_bg, false );
        
        //this is like the page
        draw_rectangle_colour( bc_x-100-(20*sign(extendem)), bc_yA+1, bc_x+99+extendem, bc_y+2, pn_bg,pn_bg,pn_bg,pn_bg, false );
        draw_set_alpha(1);
        
        //button text button
        draw_set_halign(fa_center); draw_set_valign(fa_bottom);
        draw_set_font(asset_get("tinyFont"));
        draw_text_ext_transformed_colour(bc_x+1, bc_yA-11, pn__btn_txt, 1, 800, 2, 2, 0, pn_txt, pn_txt, pn_txt, pn_txt, 1-(pn__open/2));
        
        //accent line
        draw_set_alpha(0.6);
        draw_rectangle_colour( bc_x-96-(20*sign(extendem)), bc_yA+5, bc_x+95+extendem, bc_yA+6, pn_acc,pn_acc,pn_acc,pn_acc, false );
        draw_set_alpha(1);
        
        //txt alpha
        if (pn__open){ //(if opened)
            var txt_a = ease_expoOut( 0, 1, pn__opener_timer, pn__opener_timer_max )
        }else{ //(if closed)
            var txt_a = ease_expoOut( 1, 0, pn__opener_timer, pn__opener_timer_max )
        }
        
        
        if (pn__open){ //(if open)
        
        //the main page contents
        
        //list page
        if (pn__displaying == false){
            
            //guide text
            draw_set_valign(fa_top);
            draw_text_ext_transformed_colour(bc_x+1, bc_yA+9, pn__guide_txt, 1, 800, 2, 2, 0, pn_txt, pn_txt, pn_txt, pn_txt, 1-(pn__open/2));
            //txt set
            draw_set_halign(fa_left); draw_set_valign(fa_top);
            draw_set_font(asset_get("fName"));
            
                //tthe lerp for l_off (list offset)
                    var l_off_x = ease_cubeOut( -4, 2, pn__select_timer, pn__select_timer_max )
                if (pn__list_old == "up"){ //prev input is up
                    var l_off_y = ease_cubeOut( 4, 0, pn__select_timer, pn__select_timer_max )
                }
                if (pn__list_old == "down"){ //prev input is down
                    var l_off_y = ease_cubeOut( -4, 0, pn__select_timer, pn__select_timer_max )
                }
            
            
            //time to draw the list page
            if (pn__open){//scroll stuff n select stuff
                if (up_down){
                    if (pn__up_track==false){
                        pm__list_select_old = pn__list_select;  pn__list_select--; // WARN: Possible Desync. Object var set in draw script. Consider using `var` or creating constants in `init.gml`.
                        if (pn__list_select<0){pn__list_select = pn__list_max;}
                        pn__up_track = true; // WARN: Possible Desync. Object var set in draw script. Consider using `var` or creating constants in `init.gml`.
                        pn__select_timer = 0; // WARN: Possible Desync. Object var set in draw script. Consider using `var` or creating constants in `init.gml`.
                        pn__list_old = "up" // WARN: Possible Desync. Object var set in draw script. Consider using `var` or creating constants in `init.gml`.
                        sound_play(pn__move_sound);
                        pn__scroll_did = 0; // WARN: Possible Desync. Object var set in draw script. Consider using `var` or creating constants in `init.gml`.
                    }
                }else{ pn__up_track = false; };
                if (down_down){
                    if (pn__down_track==false){
                        pm__list_select_old = pn__list_select;  pn__list_select++; // WARN: Possible Desync. Object var set in draw script. Consider using `var` or creating constants in `init.gml`.
                        if (pn__list_select>pn__list_max){pn__list_select = 0;}
                        pn__down_track = true; // WARN: Possible Desync. Object var set in draw script. Consider using `var` or creating constants in `init.gml`.
                        pn__select_timer = 0; // WARN: Possible Desync. Object var set in draw script. Consider using `var` or creating constants in `init.gml`.
                        pn__list_old = "down" // WARN: Possible Desync. Object var set in draw script. Consider using `var` or creating constants in `init.gml`.
                        sound_play(pn__move_sound);
                        pn__scroll_did = 0; // WARN: Possible Desync. Object var set in draw script. Consider using `var` or creating constants in `init.gml`.
                    }
                }else{ pn__down_track = false; };
                
                //list scroll stuff
                if ( ((pn_i*22)+26)+pn__scroll > page_h-20 ){//horrible puzzle of maths
                    //print("true, down")
                    pn__scroll = clamp( (pn_i*-22)+81, -9000, 0 ); // WARN: Possible Desync. Object var set in draw script. Consider using `var` or creating constants in `init.gml`.
                    if (pn__online){ pn__scroll = clamp( (pn_i*-22)+132, -9000, 0 ); }
                    pn__scroll_did = 2; // WARN: Possible Desync. Object var set in draw script. Consider using `var` or creating constants in `init.gml`.
                }
                if ( ((pn_i*22)+26)+pn__scroll < 26 ){
                    //print("true, up")
                    pn__scroll = clamp( (pn_i*-22)+6, -9000, 0 ); // WARN: Possible Desync. Object var set in draw script. Consider using `var` or creating constants in `init.gml`.
                    pn__scroll_did = 2; // WARN: Possible Desync. Object var set in draw script. Consider using `var` or creating constants in `init.gml`.
                }
                //print(string(pn__scroll))
                
                if (attack_down){
                    pn__displaying = true; // WARN: Possible Desync. Object var set in draw script. Consider using `var` or creating constants in `init.gml`.
                    pn__scroll = 0; // WARN: Possible Desync. Object var set in draw script. Consider using `var` or creating constants in `init.gml`.
                    sound_play(pn__confirm_sound);
                }
            }
            for (var t = 0; t <= pn__list_max; t += 1){
                var x_off = (t==pn_i)?8+l_off_x:0;
                var y_off = (t==pn_i)?(t*22)+l_off_y:t*22;
                var y_loc = 26+pn__scroll-(l_off_y*pn__scroll_did);
                if (t==pn_i){
                    var x_t_p = bc_x+l_off_x-89; //x triangle point
                    var y_t_p = bc_yA+y_off+y_loc+5; //y triangle point
                    draw_rectangle_colour( (x_t_p-1),   y_t_p,   (x_t_p),   y_t_p+1, pn_acc,pn_acc,pn_acc,pn_acc, false );
                    draw_rectangle_colour( (x_t_p-1)-2, y_t_p-2, (x_t_p)-2, y_t_p+3, pn_acc,pn_acc,pn_acc,pn_acc, false );
                    draw_rectangle_colour( (x_t_p-1)-4, y_t_p-4, (x_t_p)-4, y_t_p+5, pn_acc,pn_acc,pn_acc,pn_acc, false );
                };
                //title text!
                draw_text_ext_transformed_colour(bc_x-92+x_off, bc_yA+y_off+y_loc, patch_note_title[t], 16, -1, 1, 1, 0, pn_txt,pn_txt,pn_txt,pn_txt, txt_a);
                //divider line
                var c_tmp = (t==pn_i)?pn_acc:pn_txt;//color temp
                draw_set_alpha((t==pn_i)?1:0.3);
                draw_rectangle_colour( bc_x-96, bc_yA+y_off+y_loc+13, bc_x+95, bc_yA+y_off+y_loc+14, c_tmp,c_tmp,c_tmp,c_tmp, false );
                draw_set_alpha(1);
            }
            
        }
        if (pn__displaying == true){
        
        //txt set
        draw_set_halign(fa_left); draw_set_valign(fa_top);
        draw_set_font(asset_get("fName"));
        
        //time to draw changelog!!
        
        //text render is here!
        if (pn__open){//scroll stuff
            var scroll_max = ( string_height_ext(patch_note_text[pn_i], 16+(4*sign(extendem)), 190+extendem)-113 )*-1//thanks vman for finding this function
            if (up_down){ pn__scroll+=pn__scroll_speed * (shield_down+1); } //hold shield to scroll faster
            if (down_down){ pn__scroll-=pn__scroll_speed * (shield_down+1); }
            pn__scroll = clamp( pn__scroll, scroll_max, 0 ); // WARN: Possible Desync. Object var set in draw script. Consider using `var` or creating constants in `init.gml`.
            if (special_down){
                pn__displaying = false; // WARN: Possible Desync. Object var set in draw script. Consider using `var` or creating constants in `init.gml`.
                pn__scroll = false; // WARN: Possible Desync. Object var set in draw script. Consider using `var` or creating constants in `init.gml`.
                sound_play(pn__cancel_sound);
            }
        }
        draw_text_ext_transformed_colour(bc_x-96, bc_yA+pn__scroll+12, patch_note_text[pn_i], 16+(4*sign(extendem)), 190+extendem, 1, 1, 0, pn_txt, pn_txt, pn_txt, pn_txt, txt_a);
        
        }//changelog over (if pn__displaying == true)
        }//open check over
        
        //taunt hold meter
        if (pn__taunt_timer>0){
            var w_pr = ease_cubeIn( 2, pn__btn_width-2, round(pn__taunt_timer), pn__taunt_max );
            draw_rectangle_colour( bc_x-btn_wh, bc_yA-1, (bc_x-btn_wh)+w_pr, bc_yA, pn_acc,pn_acc,pn_acc,pn_acc, false );
            draw_set_alpha(1);
        }
        
        //checks for taunt being held, or if it's in list view and special is being held
        if (taunt_down || (pn__open && special_down && pn__displaying == false)){
            if (pn__taunt_track == false){
                pn__taunt_timer++;
                if (pn__open){ pn__taunt_timer+=0.5; } //1.5x the speed when the panel is already open
                if (pn__taunt_timer > pn__taunt_max){
                    pn__open = !pn__open; //this toggles it hopefully // WARN: Possible Desync. Object var set in draw script. Consider using `var` or creating constants in `init.gml`.
                    pn__taunt_track = true; // WARN: Possible Desync. Object var set in draw script. Consider using `var` or creating constants in `init.gml`.
                    pn__taunt_timer = 0; // WARN: Possible Desync. Object var set in draw script. Consider using `var` or creating constants in `init.gml`.
                    pn__opener_timer = 0; // WARN: Possible Desync. Object var set in draw script. Consider using `var` or creating constants in `init.gml`.
                    sound_play(pn__swipe_sound);
                }
            }
        }else{pn__taunt_track = false; pn__taunt_timer = 0; };
        
        //change it back
        draw_set_alpha(a_str); draw_set_valign(fa_top); draw_set_halign(fa_center);
    	}
	}
	
}