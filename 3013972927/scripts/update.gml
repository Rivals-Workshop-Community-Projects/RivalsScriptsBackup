//update.gml
//this is where the bulk of our programming goes, where we want to program most gimmicks
//anything that should be checked/executed after the first frame of the match

///////////////////////////////////////////////////////// USEFUL CUSTOM VARIABLES /////////////////////////////////////////////////////////

is_attacking = (state == PS_ATTACK_GROUND || state == PS_ATTACK_AIR); //attack check - becomes true if the state is PS_ATTACK_GROUND or PS_ATTACK_AIR
is_dodging = (hurtboxID.dodging); //dodge check - becomes true if the character is invincible when dodging/teching
game_time = get_gameplay_time(); //get_gameplay_time() is a timer that counts up every frame of the match

user_event(0);
user_event(2);
checkStageBGM();

if(bpm_onBeat_check)
{
	beat_hit_time++;
	
	if(beat_hit_time > 10)
	{
		beat_hit_time = 0;
	}
	
	if(beat_hit_time > 2 && beat_hit_time < 8)
	{
		is_onBeat = true;
		c808_y_offset = -beat_hit_time;
		
		if(beat_hit_time == 4 && tut_sound)
		{
			switch(beatSound)
			{
				case 0:
				sound_play(sound_get("chai_clap1"),0,0,.7);
				beatSound++;
				break;
				
				case 1:
				sound_play(sound_get("chai_clap2"),0,0,.7);
				beatSound++;
				break;
				
				case 2:
				sound_play(sound_get("chai_clap3"),0,0,.7);
				beatSound = 0;
				break;
			}
		}
	}
	else { 
		is_onBeat = false;
		c808_y_offset = 0;
        }
}

user_event(1);
	
	
if instance_exists(c808) 
	{
	c808.x = x- 44 * spr_dir;
	c808.y = y-78+cat_y_offset+(c808_y_offset*.25);
	} 
	else 
	{
		c808 = instance_create(x + 48 * spr_dir, y, "obj_article2");
	}

if(hit_onBeat)	
{
	if(game_time % 4 == 0)
	{
		cat_y_offset += 1; 
	}
	
	if(game_time % 10 == 0)
	{
		cat_y_offset = -cat_y_offset; 
	}
	
	if(cat_y_offset > 4 || cat_y_offset < -4)
	{
		cat_y_offset = 0;
	}
    
}
	else
	{
	   cat_y_offset = 0;   
	}

switch (state)
{
	case PS_FIRST_JUMP:
        if state_timer == 3 && !hitpause && is_onBeat
        {
        	 sound_play(sound_get("chai_jump1_perfect"));
        }
    break;
    case PS_DOUBLE_JUMP:
        if state_timer == 0 && !hitpause{
            sound_play(sound_get("chai_jump2_perfect"), 0, noone, 1, 1.0);
            sound_stop( sound_get("chai_jump1_perfect"));
        }
    break;
    case PS_DASH_START:
        if state_timer == 0 && !hitpause && is_onBeat{
            sound_play(sound_get("chai_dash_step"), 0, noone, 1, 1.0);
            initial_dash_time		= 18;
			dash_turn_time          = 14;		            // 8    -  20
			dash_turn_accel         = 1.5;
			dash_stop_time          = 5;
        }
        else
        {
        	if state_timer == 0 && !hitpause{
        		    initial_dash_time		= 7;
					dash_turn_time          = 14;		            // 8    -  20
					dash_turn_accel         = 1.5;
					dash_stop_time          = 5;
        	}
        }
    break;
    
    case PS_CROUCH:
			if(hit_onBeat)
			{
			hit_onBeat = false;
		//	sound_play(asset_get("sfx_blow_medium2"));
			reset_attack_beat_hit();
			}
			reset_attack_beat_hit();
			break;
			
    case PS_IDLE:
			if(hit_onBeat)
			{
			hit_onBeat = false;
		//	sound_play(asset_get("sfx_blow_medium2"));
			reset_attack_beat_hit();
			}
			reset_attack_beat_hit();
			break;
	
	case PS_HITSTUN: 	
			if(hit_onBeat)
			{
			hit_onBeat = false;
		//	sound_play(asset_get("sfx_blow_medium2"));
			reset_attack_beat_hit();
			}
			reset_attack_beat_hit();
			break;
			
	case PS_DEAD:
		if instance_exists(c808)
		{
			set_c808_state(4);
		}
		if instance_exists(assist_call)
		{
			set_assist_state(2);
		}
		
		if(tut_sound == true)
		{
			tut_sound = false;
			sound_play(sound_get("chai_tut_bell"),0,0,.4);
		}
		break;
		
	case PS_RESPAWN:
		if instance_exists(c808)
		{
			set_c808_state(4);
		}
		if instance_exists(assist_call)
		{
			set_assist_state(2);
		}
		
		if(tut_sound == true)
		{
			tut_sound = false;
			sound_play(sound_get("chai_tut_bell"),0,0,.4);
		}
		break;
 
}

if(jump_canceled == true && !free)
{
	jump_canceled = false;
}

if(jump_canceled_nair == true && !free)
{
	jump_canceled_nair = false;
}

if (is_attacking)
{
    window_end = floor(get_window_value(attack, window, AG_WINDOW_LENGTH) * ((get_window_value(attack, window, AG_WINDOW_HAS_WHIFFLAG) && !has_hit) ? 1.5 : 1));
    window_last = get_attack_value(attack, AG_NUM_WINDOWS);
    window_cancel_time = get_window_value(attack, window, AG_WINDOW_CANCEL_FRAME);
}
else
{
    if (my_grab_id != noone) my_grab_id = noone; //if the player isn't attacking, we don't need the grab_id to stay

    if (state_timer == 0)
    {
        if (spr_angle != 0) spr_angle = 0;
        if (draw_x != 0) draw_x = 0;
        if (draw_y != 0) draw_y = 0;
    }
    reset_attack_beat_hit();
}

//grab logic
if (my_grab_id != noone) 
{
	grab_time ++;

    with (my_grab_id)
	{
		hitstop = 2;

		if (last_player_hit_me != other.player) 
		{
			hitstop = 0;
			with (other)
			{
				my_grab_id = noone;
				if (!free) hsp = spr_dir*-6;
				set_state(free ? PS_IDLE_AIR : PS_IDLE);
			}
		}
    }
}
else grab_time = 0;

//play intro
if (game_time == 4 && has_intro) set_attack(AT_INTRO);

with (hit_fx_obj)
{
    if (player == other.player && depth == 3) depth = player_id.depth-1;
}



if (is_attacking)
{
    switch (attack)
    {
        case AT_NSPECIAL: 
            
            if (window <= 3)
            {

                var total_dist = 250; 
                var stop_checking = false; 
                
            	var start_x = x + 64*spr_dir;
            	var start_y = y - char_height/2;
                
                var end_x = start_x + (lengthdir_x(total_dist, nspec_angle_new));
                var end_y = start_y + lengthdir_y(total_dist, nspec_angle_new);

                var block_col = collision_line_point(start_x, start_y, end_x, end_y, asset_get("par_block"), true, true);
                var jumpthrough_col = collision_line_point(start_x, start_y, end_x, end_y, asset_get("par_jumpthrough"), true, true);

                var player_col;
                with (hurtboxID) player_col = collision_line_point(start_x, start_y, end_x, end_y, pHurtBox, true, true);
                
                if (player_col[0] != noone)
                {
                    
                    var it = 0; // Define failsafe iteration count. 
                	while (player_col[0] != noone && (player_col[0].playerID.invincible || player_col[0].dodging))
                    {
                		with (player_col[0]) player_col = collision_line_point(player_col[1], player_col[2], end_x, end_y, pHurtBox, true, true);
                	}
                }
                
                var collisions = [
                	player_col
                ];
                
                var final_col_dist = total_dist;
                var final_col = [-4, end_x, end_y];
                
                for (var i = 0; i < array_length(collisions); i++) 
                {
                    var col = collisions[i]; // The current collision. (putting this in its own local (var) variable is a micro optimization)

                    if (col[0] == noone) continue;

                	var dist = point_distance(start_x, start_y, col[1], col[2]);
                	if (dist < final_col_dist) 
                	{
                		final_col = col;
                		final_col_dist = dist;
                	}
                }
                nspec_tether_pos = [final_col[1],final_col[2]];
            }
            break;
        case AT_FSPECIAL:
            break;
        case AT_USPECIAL: 
            draw_y = -32; 
           	if !hitpause {
           		
			}
            switch (window)
            {
                case 3:
                    //spr_angle = uspec_angle-90;
                    break;
                case 4:
                    fall_through = down_down; 
                    landing_lag_time = 15;
                    break;
            }
            break;
    }
}
else
{
    if (fair_cd)
    {
        if (free || state == PS_LANDING_LAG) move_cooldown[AT_FAIR] = 15;
        else if (!free || state == PS_WALL_JUMP)
        {
            fair_cd = false;
            if (state == PS_LAND && attack == AT_FAIR) move_cooldown[AT_FAIR] = 0;
        }
    }

    if (!nspec_charge_stored) nspec_charge = 1; 

    sound_stop(cur_loop_sound);

    if (get_match_setting(SET_PRACTICE) && move_cooldown[AT_DSPECIAL] > 0)
    {

        if (shield_down && special_pressed)
        {
            sound_play(asset_get("mfx_coin"));
            move_cooldown[AT_DSPECIAL] = 0;
        }
    }
}

voice_update();
////////////////////////////////////////////////////////////////// MISC. //////////////////////////////////////////////////////////////////

//ABYSS RUNES
//we can also put the has_rune("#") variable in attack files, for example:
//  set_attack_value(AT_DSPECIAL, AG_NUM_WINDOWS, 6 + has_rune("H") * 2);  - this code will add 2 extra windows to AT_DSPECIAL if rune H is equipped

//in here we can put in all the abyss runes code that update needs
if (get_match_setting(SET_RUNES))
{
}


//rainbow alts user_event redirect
if (alt_cur == 11 || alt_cur == 12) user_event(0);

//ties certain hit particles to certain effects automatically
with (pHitBox)
{
    if (orig_player == other.player) //with the hitbox parent object, make sure it's the player's hitbox first
    {
        //hit effects that are affected are all the custom energy hit vfx
        //this "hit_effect" variable is the pHitBox variable of HG_VISUAL_EFFECT
        //we are basically checking which visual effect the hitbox has, and set the particles accordingly
        if (hit_effect == other.fx_pow_hit[0] || hit_effect == other.fx_pow_hit[1] || hit_effect == other.fx_pow_hit[2]) fx_particles = 1;
    }
}

//if (shield_pressed) end_match(player); //uncomment this line to check the victory screen (the input can also be changed but it needs some input)

//parry interraction testing
/*
with (oPlayer) if (temp_level != 0 && state == PS_PARRY && !perfect_dodged)
{
    window = 1;
    window_timer = 0;
    perfect_dodging = true;
}
*/

//NOTE: KEEP THIS SECTION AT THE BOTTOM OF UPDATE.GML
//unless you are adding #defines, which should be at the bottom
custom_attack_grid();
if (uses_custom_dusts) custom_dust_effects();
//prep_hitboxes();


//custom hitbox colors system (by @SupersonicNK)
#define prep_hitboxes
{
    //Applies the hitbox sprites and prepares them to be drawn (with color!)
    with (pHitBox) if player_id == other {
        if "col" not in self {
            with other {
                other.col = get_hitbox_value(other.attack, other.hbox_num, HG_HITBOX_COLOR);
                if other.col == 0 other.col = c_red;
                other.shape = get_hitbox_value(other.attack, other.hbox_num, HG_SHAPE)
                other.draw_colored = true;
                if other.type == 1
                    other.sprite_index = __hb_hd_spr[other.shape];
                else if get_hitbox_value(other.attack, other.hbox_num, HG_PROJECTILE_MASK) == -1
                    other.mask_index = __hb_hd_spr[other.shape];
                else 
                    other.draw_colored = false;
                other.draw_spr = __hb_draw_spr;
            }
        }
    }
}

//custom attack grid example - Looping window X times (by Bar-Kun)
#define custom_attack_grid
{
    //looping window for X times
    var window_loop_value;
    window_loop_value = get_window_value(attack, window, AG_WINDOW_LOOP_TIMES);

    if (!hitpause)
    {
        //loop window
        if (get_window_value(attack, window, AG_WINDOW_TYPE) == 9 && is_attacking) //this will make it so it only works if the window type is 9
        {
            if (window_timer == window_end-1) //checks almost the end of the window
            {
                attack_end(attack); //reset hitboxes in case the window has a hitbox so they can hit again
                if (window_loops <= window_loop_value) window_timer = 0; //go back to the start of it manually
            }

            if (window_loop_value > 0) //if the loop value is over 0, this looping mechanic will work
            {
                if (window_timer == 0) window_loops ++; //at the start of the window, count a loop up

                if (window_loops > window_loop_value) //when all the loops are over, go to the next window and reset the loop value
                {
                    destroy_hitboxes();
                    window += 1;
                    window_timer = 0;
                    window_loops = 0;
                }
            }
        }
    }

    if (!is_attacking) window_loops = 0; //resets loop value in case the character isn't attacking (useful for hitstun)
}
//remove dust from existance (not really we are just pushing it off-screen)
#define custom_dust_effects
{
    //original code by FQF (from QUA mario), modified by bar-kun
    with (asset_get("new_dust_fx_obj"))
    {
        //dust_fx <= 24 && dust_fx >= 0 will check the values in the array that are in between 0 and 24
        //other.dust_effect[dust_fx] != 0 will check the array value isn't 0 (which represents the default effect)
        //if we put any other number value it will act as if you have an effect, and remove the default dust
        if (dust_fx <= 24 && dust_fx >= 0 && player == other.player && x != -3000 && other.dust_effect[dust_fx] != 0)
        {
            //all the values of the effect that eventually spawn are based off the original effect
            //this allows us to add our own dusts in the proper placement and such
            var effect = other.dust_effect[dust_fx]; //sets up effect
            var spawn_x = x; //X and Y coordinates for where the effect should spawn
            var spawn_y = y;
            var dust_angle = draw_angle; //allows us to rotate the sprites around
            var dust_depth = dust_depth; //sets the depth of the effect

            //other variable checks you can add yourself:
            //player_id - player object
            //player - player number
            //spr_dir - dust's facing direction
            //dust_length - dust's length
            //dust_color - which shade (from the player's shade slots) should the dust color with
            //init - checks if the dust spawned, false for the first frame
            //shader_init - ???
            //step_timer - ???
            //fg_index - ???
            //__sync_id - ???

            //spawn new dusts
            with (other)
            {
                //exceptions:
                //  - we can add in exceptions for certain dusts to do various things (example below)
                //  - the numbers go between 0 - 24
                switch (other.dust_fx)
                {
                    case 8: //wall hit bounce - when hitting the celling it should b rotated properly
                        if (hit_player_obj.vsp != 0 && hit_player_obj.free && dust_angle == 0) dust_angle = 180; //celling bounce
                        break;
                }
                
                //spawn effect
                var new_dust_fx = spawn_hit_fx(spawn_x, spawn_y, effect);
                new_dust_fx.draw_angle = dust_angle;
                new_dust_fx.depth = dust_depth;
                new_dust_fx.hsp = other.hsp;
                new_dust_fx.vsp = other.vsp;
            }

            //"remove" dust by moving to a place nobody will see
            x = -3000;
            y = -3000;
            dust_length = 0;
        }
    }

    //K.O stars are kinda funky - they need to be controlled outside of the with statement
    //as we need to make them move down every frame
    with (hit_fx_obj) if (player == other.player) if (hit_fx == other.dust_effect[24]) vsp ++;
}

//collision_line() but it returns the point it collided with.
//Function written by YellowAfterLife
//https://yal.cc/gamemaker-collision-line-point/ 


#define set_c808_state(_state)
with (c808) {
    prev_state = state;
    state = _state;
    state_timer = 0;
}

#define set_assist_state(_state)
with (assist_call) {
    prev_state = state;
    state = _state;
    state_timer = 0;
}

#define reset_attack_beat_hit
{
	// Jab Reset
	reset_hitbox_value(AT_JAB, 1, HG_BASE_HITPAUSE);
	reset_hitbox_value(AT_JAB, 1, HG_DAMAGE);
	reset_hitbox_value(AT_JAB, 2, HG_BASE_HITPAUSE);
	reset_hitbox_value(AT_JAB, 3, HG_BASE_HITPAUSE);
	reset_hitbox_value(AT_JAB, 1, HG_EFFECT);
	reset_hitbox_value(AT_JAB, 2, HG_EFFECT);
	reset_hitbox_value(AT_JAB, 3, HG_EFFECT);
	reset_hitbox_value(AT_JAB, 1, HG_HIT_SFX);
	reset_hitbox_value(AT_JAB, 2, HG_HIT_SFX);
	reset_hitbox_value(AT_JAB, 3, HG_HIT_SFX);
	
	// Ftilt Reset
	reset_hitbox_value(AT_FTILT, 1, HG_BASE_HITPAUSE);
	reset_hitbox_value(AT_FTILT, 2, HG_BASE_HITPAUSE);
	reset_hitbox_value(AT_FTILT, 3, HG_BASE_HITPAUSE);
	reset_hitbox_value(AT_FTILT, 1, HG_KNOCKBACK_SCALING);
	reset_hitbox_value(AT_FTILT, 2, HG_KNOCKBACK_SCALING);
	reset_hitbox_value(AT_FTILT, 3, HG_KNOCKBACK_SCALING);
	reset_hitbox_value(AT_FTILT, 1, HG_DAMAGE);
	reset_hitbox_value(AT_FTILT, 2, HG_DAMAGE);
	reset_hitbox_value(AT_FTILT, 3, HG_DAMAGE);
	reset_hitbox_value(AT_FTILT, 1, HG_HIT_SFX);
	reset_hitbox_value(AT_FTILT, 2, HG_HIT_SFX);
	reset_hitbox_value(AT_FTILT, 3, HG_HIT_SFX);
	// Nair Reset
	reset_hitbox_value(AT_NAIR, 1, HG_BASE_HITPAUSE);
	reset_hitbox_value(AT_NAIR, 2, HG_BASE_HITPAUSE);
	reset_hitbox_value(AT_NAIR, 1, HG_KNOCKBACK_SCALING);
	reset_hitbox_value(AT_NAIR, 2, HG_KNOCKBACK_SCALING);
	reset_hitbox_value(AT_NAIR, 3, HG_KNOCKBACK_SCALING);
	reset_hitbox_value(AT_NAIR, 1, HG_DAMAGE);
	reset_hitbox_value(AT_NAIR, 2, HG_DAMAGE);
	reset_hitbox_value(AT_NAIR, 3, HG_DAMAGE);
	
	//DAttack Reset
	reset_hitbox_value(AT_DATTACK, 1, HG_DAMAGE);
	
	// Fair Reset
	reset_hitbox_value(AT_FAIR, 1, HG_DAMAGE);
	reset_hitbox_value(AT_FAIR, 2, HG_DAMAGE);
	reset_hitbox_value(AT_FAIR, 3, HG_DAMAGE);
	reset_hitbox_value(AT_FAIR, 3, HG_BASE_KNOCKBACK);
	reset_hitbox_value(AT_FAIR, 3, HG_BASE_HITPAUSE);
	reset_hitbox_value(AT_FAIR, 3, HG_KNOCKBACK_SCALING);
	
	//uTILT Reset
	reset_hitbox_value(AT_UTILT, 1, HG_ANGLE);
	reset_hitbox_value(AT_UTILT, 1, HG_BASE_KNOCKBACK);
	reset_hitbox_value(AT_UTILT, 1, HG_KNOCKBACK_SCALING);
	reset_hitbox_value(AT_UTILT, 1, HG_BASE_HITPAUSE);
	reset_hitbox_value(AT_UTILT, 1, HG_HITPAUSE_SCALING);
	reset_hitbox_value(AT_UTILT, 2, HG_ANGLE);
	reset_hitbox_value(AT_UTILT, 2, HG_BASE_KNOCKBACK);
	reset_hitbox_value(AT_UTILT, 2, HG_KNOCKBACK_SCALING);
	reset_hitbox_value(AT_UTILT, 2, HG_BASE_HITPAUSE);
	reset_hitbox_value(AT_UTILT, 2, HG_HITPAUSE_SCALING);
	
	//Uair reset
	reset_hitbox_value(AT_UAIR, 1, HG_DAMAGE);
	reset_hitbox_value(AT_UAIR, 1, HG_BASE_KNOCKBACK);
	reset_hitbox_value(AT_UAIR, 1, HG_KNOCKBACK_SCALING);
	reset_hitbox_value(AT_UAIR, 1, HG_BASE_HITPAUSE);
	reset_hitbox_value(AT_UAIR, 1, HG_HITPAUSE_SCALING);
	reset_hitbox_value(AT_UAIR, 1, HG_HIT_SFX);
	
	//Bair reset
	reset_hitbox_value(AT_BAIR, 1, HG_DAMAGE);
	reset_hitbox_value(AT_BAIR, 1, HG_BASE_KNOCKBACK);
	reset_hitbox_value(AT_BAIR, 1, HG_KNOCKBACK_SCALING);
	reset_hitbox_value(AT_BAIR, 1, HG_BASE_HITPAUSE);
	reset_hitbox_value(AT_BAIR, 1, HG_HITPAUSE_SCALING);
	reset_hitbox_value(AT_BAIR, 1, HG_HIT_SFX);
	
	//Dair reset
	reset_hitbox_value(AT_DAIR, 2, HG_HIT_SFX);
	
	// Strong reset
	reset_hitbox_value(AT_FSTRONG, 1, HG_DAMAGE);
	reset_hitbox_value(AT_FSTRONG, 1, HG_BASE_KNOCKBACK);
	reset_hitbox_value(AT_FSTRONG, 1, HG_KNOCKBACK_SCALING);
	reset_hitbox_value(AT_FSTRONG, 1, HG_BASE_HITPAUSE);
	reset_hitbox_value(AT_FSTRONG, 1, HG_HITPAUSE_SCALING);
	
	reset_hitbox_value(AT_USTRONG, 1, HG_DAMAGE);
	reset_hitbox_value(AT_USTRONG, 1, HG_BASE_KNOCKBACK);
	reset_hitbox_value(AT_USTRONG, 1, HG_KNOCKBACK_SCALING);
	reset_hitbox_value(AT_USTRONG, 1, HG_BASE_HITPAUSE);
	reset_hitbox_value(AT_USTRONG, 1, HG_HITPAUSE_SCALING);
	
	reset_hitbox_value(AT_FSTRONG, 2, HG_DAMAGE);
	reset_hitbox_value(AT_FSTRONG, 2, HG_BASE_KNOCKBACK);
	reset_hitbox_value(AT_FSTRONG, 2, HG_KNOCKBACK_SCALING);
	reset_hitbox_value(AT_FSTRONG, 2, HG_BASE_HITPAUSE);
	reset_hitbox_value(AT_FSTRONG, 2, HG_HITPAUSE_SCALING);
	
//	reset_hitbox_value(AT_DSTRONG, 2, AG_WINDOW_LOOP_REFRESH_HITS)
//	reset_window_value(AT_DSTRONG, 4, AG_WINDOW_LOOP_TIMES);
	reset_hitbox_value(AT_DSTRONG, 1, HG_DAMAGE);
	reset_hitbox_value(AT_DSTRONG, 2, HG_DAMAGE);
	//Special Reset
	// Reset beat hit benefits
	reset_hitbox_value(AT_FSPECIAL, 1, HG_HIT_SFX);
		reset_hitbox_value(AT_FSPECIAL, 2, HG_HIT_SFX);
			reset_hitbox_value(AT_FSPECIAL, 3, HG_HIT_SFX);
	reset_hitbox_value(AT_FSPECIAL, 1, HG_VISUAL_EFFECT);
		reset_hitbox_value(AT_FSPECIAL, 2, HG_VISUAL_EFFECT);
			reset_hitbox_value(AT_FSPECIAL, 3, HG_VISUAL_EFFECT);
	reset_hitbox_value(AT_FSPECIAL, 3, HG_DAMAGE);
	reset_hitbox_value(AT_FSPECIAL, 3, HG_BASE_HITPAUSE);
	
	hit_onBeat = false;
}
#define collision_line_point
{
    //usage: collision_line_point(x1, y1, x2, y2, obj, prec, notme)

    var x1 = argument0;
    var y1 = argument1;
    var x2 = argument2;
    var y2 = argument3;
    var qi = argument4;
    var qp = argument5;
    var qn = argument6;
    var rr, rx, ry;
    rr = collision_line(x1, y1, x2, y2, qi, qp, qn);
    rx = x2;
    ry = y2;
    if (rr != noone) {
        var p0 = 0;
        var p1 = 1;
        repeat (ceil(log2(point_distance(x1, y1, x2, y2))) + 1) {
            var np = p0 + (p1 - p0) * 0.5;
            var nx = x1 + (x2 - x1) * np;
            var ny = y1 + (y2 - y1) * np;
            var px = x1 + (x2 - x1) * p0;
            var py = y1 + (y2 - y1) * p0;
            var nr = collision_line(px, py, nx, ny, qi, qp, qn);
            if (nr != noone) {
                rr = nr;
                rx = nx;
                ry = ny;
                p1 = np;
            } else p0 = np;
        }
    }
    var r;
    r[0] = rr;
    r[1] = rx;
    r[2] = ry;
    return r;
}

//useful print function - allows us to print all variables in an specified object
//usage: print_vars(object_name); | print_vars();
#define voice_update()
	
//voice acting
if (vo != 0)
{
    if (voice_cooldown > 0 && !hitpause) voice_cooldown--;
    if (!hitpause)
    {
        var should_speak = 1; //0-1
        if (should_speak == 1)
        {
            switch (state)
            {
                case PS_FIRST_JUMP: case PS_DOUBLE_JUMP: case PS_WALL_JUMP: case PS_ROLL_BACKWARD: case PS_ROLL_FORWARD: case PS_AIR_DODGE:
                case PS_WAVELAND:
                    //if (state_timer == 1) voice_array(0);
                    break;
                case PS_ATTACK_GROUND: case PS_ATTACK_AIR:
                    if (state_timer == 1 && voice_cooldown <= 0) {
                    	stop_voice();
                    }
                    if (!hitpause) //attacks
                    {
                        switch (attack) // This is where the main attack voices come in
                        {
                        	case AT_JAB:
                        		if (window == 7 && window_timer == 1) 
	                        		{
	                        			if(hit_onBeat)
	                        			{
	                        		  play_voice("jab", 4, true, 2);	
	                        			}
	                        		}
	                        		break;
	                        		
	                        case AT_FTILT:
                        		if (window == 7 && window_timer == 1) 
	                        		{
	                        			if(hit_onBeat)
	                        			{
	                        		  play_voice("ftilt", 4, true, 2);	
	                        			}
	                        		}
	                        		break;
	                        		
	                        case AT_NAIR:
                        		if (window == 7 && window_timer == 1) 
	                        		{
	                        			if(hit_onBeat)
	                        			{
	                        		  play_voice("nair", 4, true, 2);
	                        			}
	                        		}
	                        		break;
	                        		
                        	case AT_FSTRONG:
                        			if (window == 3 && window_timer == 1) 
	                        		{
	                        			if(hit_onBeat)
	                        			{
	                        				play_voice("fstrong_0", 4, false, 0);	
	                        			}
	                        		}
	                        		break;
	                        		
                        	case AT_DSTRONG:
                        			if (window == 3 && window_timer == 1) 
	                        		{
	                        			if(hit_onBeat)
	                        			{
	                        				play_voice("dstrong_0", 4, false, 0);	
	                        			}
	                        		}
	                        		break;
	                        		
                        	case AT_USTRONG:
                        			if (window == 3 && window_timer == 0 && is_onBeat) 
	                        		{
	                        			if((random_func( 1, 3, true )) == 1)
	                        			{
	                        				play_voice("ustrong_0", 4, false, 0);	
	                        			}
	                        		}
	                        		break;
	                        		
                        	case AT_NSPECIAL:
                        			if (window == 6 && window_timer == 0) 
	                        		{
	                        			if((random_func( 1, 3, true )) > 0)
	                        			{
	                        				play_voice(["nspec_0", "nspec_1"], 4, false, 2);
	                        			}
	                        		}
	                        		break;
	                        		
	                        case AT_FSPECIAL:
                        			if (window == 3 && window_timer == 0) 
	                        		{
	                        			if( fspec_beat_hit)
	                        			{
	                        				play_voice("fspec_0", 4, false, 0);	
	                        			}
	                        		}
	                        		break;
	                        		
                        	case AT_USPECIAL: case AT_USPECIAL:
                        		if (window == 3 && window_timer == 0) 
	                        		{
	                        			if(uspec_beat_hit)
	                        			{
	                        				 play_voice(["uspec_0", "uspec_1"], 4, false, 2);
	                        			}
	                        		}
	                        	break;
                        	case AT_DSPECIAL: case AT_DSPECIAL_AIR:
                        		if (window == 1 && window_timer == 0) 
	                        		{
	                        			switch(assist_index)
										{
											case 0:
												voice_cooldown = 0;
	                            				play_voice("assist_pep", 60, true, 3);
											break;
											
											case 1:
												voice_cooldown = 0;
	                            				play_voice("assist_mac", 60, true, 3);
											break;
											
											case 2:
												voice_cooldown = 0;
	                            				play_voice("assist_kor", 60, true, 3);
											break;
										}
	                                }
                        	break;
                        	
                            case AT_TAUNT:
                                if (window == 1 && window_timer == 0) {
                            		voice_cooldown = 0;
                            		play_voice("taunt", 60, true, 4);
                                }
                            break;
                        }
                    }
                    break;
                    
                case PS_HITSTUN:
                    if (state_timer == 1)
                    {
       					stop_voice();
                        var dist = point_distance(0, 0, old_hsp, old_vsp);
                        
                        if (dist > 13) play_voice(["hurt_big_0", "hurt_big_1", "hurt_big_2"], 4, false, 3);
                        else if (dist > 1) play_voice(["hurt_0", "hurt_1", "hurt_2"], 4, false, 3);
                    }
                    break;
                case PS_RESPAWN:
                case PS_DEAD:
                    if (state_timer == 1)
                    {
       					stop_voice();
                		voice_cooldown = 0;
                        play_voice("death", 0, true, 6);
                    }
                    break;
                   default:
                   break;
            }
        }
        
        //if a new voiceclip is playing, cut the old one
        if (cur_voiceclip[0] != cur_voiceclip[1])
        {
            sound_stop(cur_voiceclip[1]);
            cur_voiceclip[1] = cur_voiceclip[0];
        }
    }
}

#define stop_voice()
sound_stop(cur_voiceclip[1]);

#define play_voice (_voice, _cooldown, _random, _size)
var arr = _voice;
var ran = random_func(1, _size, true);
if (!is_array(arr)) arr = [_voice];

if (vo != 0)
{
	var num = random_func( 1, 3, true );
//	print("chai_vo_" + string(_voice) + "_" + string(num))

	if(_random == true)
	{
    cur_voiceclip[0] = sound_play(sound_get("chai_vo_" + string(_voice) + "_" + string(ran)));
	}
	else {
			if(!(arr == noone))
			{
		//		print("chai_vo_" + string(arr[num]))
				cur_voiceclip[0] = sound_play(sound_get("chai_vo_" + string(arr[ran])));	
			}
			else
				{
			//			print("chai_vo_" + string(_voice))
						cur_voiceclip[0] = sound_play(sound_get("chai_vo_" + string(_voice)));
				}
	}
    voice_cooldown = _cooldown;
}

#define print_vars
/// print_vars(instance = self)
{
    //prints the variables in the given instance, or in whatever instance ran the function.
    var instance = argument_count > 0 ? argument[0] : self;
    with (instance) {
        var names = variable_instance_get_names(self);
        var str = "";
        var lb = "
    ";
        for (var i = 0; i < array_length_1d(names); i++) {
            var val_to_add = string(variable_instance_get(self, names[i]));
        str += names[i] + ': ' + (string_length(val_to_add) > 100 ? "!!value ommitted due to size!!" : val_to_add) + ';'+lb
        
        }
        var str_length = string_length(str);
        var it = 1;
        var max_pages = ceil(str_length/4096);
        for (var i = 1; i < str_length; i+=4096) {
            get_string(`variables pg ${it++}/${max_pages}`, string_copy(str,i,4096));
        }
    }
}

#define checkStageBGM
{
	var stageID = get_stage_data(SD_ID);
//	print("BPM: " + string(get_stage_data(SD_ID)));
	
	if(game_time == 2)
	{
		print("Stage ID: " + string(get_stage_data(SD_ID)));
		switch(stageID)
		{
			default:
				songBPM = 130;
				beat_hit_speed = 3;
			break;
			
			case 1: 
			print("Stage: " + "Treetop Lodge" + "BPM: 150");
				songBPM = 150;
			break;
			
			case 2: 
				print("Stage: " + "Fire Capital" + "BPM: 140");
				songBPM = 140;
			break;
			
			case 3: 
				print("Stage: " + "Air Armada" + "BPM: 170");
				songBPM = 170;
			break;
			
			case 4: 
				print("Stage: " + "The Rock Wall" + "BPM: 135");
				songBPM = 135;
			break;
			
			case 5: 
				print("Stage: " + "Merchant Port" + "BPM: 140");
				songBPM = 140;
			break;
			
			case 6: 
				print("Stage: " + "Treetop Lodge" + "BPM: 150");
				songBPM = 150;
			break;
			
			case 7: 
				print("Stage: " + "Blazing Hideout" + "BPM: 145");
				songBPM = 145;
			break;
			
			case 8: 
				print("Stage: " + "Tower of Heaven" + "BPM: 140");
				songBPM = 140;
			break;
			
			case 9: 
				print("Stage: " + "Tempest Peak" + "BPM: 160");
				songBPM = 160;
			break;
			
			case 10: 
				print("Stage: " + "Frozen Fortress" + "BPM: 140");
				songBPM = 140;
			break;	
			
			case 11: 
				print("Stage: " + "Aetheral Gates" + "BPM: 150");
				songBPM = 150;
			break;	
			
			case 12: 
				print("Stage: " + "Endless Abyss" + "BPM: 150");
				songBPM = 150;
			break;
			
			case 14: 
				print("Stage: " + "The CEO Ring" + "BPM: 125");
				songBPM = 125;
			break;	
			
			case 15: 
				print("Stage: " + "The Spirit Tree" + "BPM: 120");
				songBPM = 120;
			break;	
			
			case 17: 
				print("Stage: " + "Neo Fire Capital" + "BPM: 160");
				songBPM = 160;
			break;	
			
			case 18: 
				print("Stage: " + "Swampy Estuary" + "BPM: 166");
				songBPM = 166;
			break;
			
			case 19: 
				print("Stage: " + "The Forest Floor" + "BPM: 165");
				songBPM = 165;
			break;	
			
			case 20: 
				print("Stage: " + "Junesville" + "BPM: 140");
				songBPM = 140;
			break;	
			
			case 21: 
				print("Stage: " + "Trouple Pond" + "BPM: 186");
				songBPM = 186;
			break;	
			
			case 22: 
				print("Stage: " + "Practice Room" + "BPM: 130");
				songBPM = 130;
			break;	
			
			case 23: 
				print("Stage: " + "Aether High" + "BPM: 129");
				songBPM = 129;
			break;
			
			case 24: 
				print("Stage: " + "Pridemoon Keep" + "BPM: 139");
				songBPM = 139;
			break;
			
			case 25: 
				print("Stage: " + "Frozen Gates" + "BPM: 144");
				songBPM = 144;
			break;
			
			case 26: 
				print("Stage: " + "The Tutorial Grid" + "BPM: 130");
				songBPM = 130;
			break;
			
			case 27: 
				print("Stage: " + "ROA Ring" + "BPM: 125");
				songBPM = 125;
			break;
			
			case 30: 
				print("Stage: " + "Tutorial Grid X" + "BPM: 130");
				songBPM = 130;
			break;
			
			case 32: 
				print("Stage: " + "Neo Blazing Rail" + "BPM: 150");
				songBPM = 150;
			break;
			
			case 34: 
				print("Stage: " + "Neo Julesville" + "BPM: 150");
				songBPM = 150;
				
			case 35: 
				print("Stage: " + "Crystal Oasis" + "BPM: 150");
				songBPM = 150;
			break;
			
			case 36: 
				print("Stage: " + "Diamond Groove" + "BPM: 150");
				songBPM = 150;
			break;	
			
			case 60: 
				print("Stage: " + "Badger Co. Mines" + "BPM: 140");
				songBPM = 140;
			break;	
			
		}
		bpm_prev = songBPM;
	}
		calculateStageBPM();
	
}

#define calculateStageBPM
{
	var BGMtimeOffset = 1;
	
	BGMtimeBPS = songBPM / 60; // Beats per second
	var secondsPerBeat = 1 / BGMtimeBPS; // Seconds per beat
//	print(game_time);
	if(game_time > 131) {
		
		var fixedUpdatesPS = game_time;
		bpm_fixedUpdates += .5;
		if(bpm_toggle == false)
		{
		songBPM = bpm_prev;
		}
		else 
			{
				songBPM = 130
			}
			
		var BGMstep = (1 / ((songBPM / 60) * 4)) * 100;
		var BGMtest = (round(BGMstep * 4) / 4)*.1;
		var BGMval = songBPM * .01667;
		
	//					print("Fixed Updates:" + string(BGMtest) + " / " + string((bpm_fixedUpdates))+ " / " + string((secondsPerBeat)));
		if(bpm_fixedUpdates >= (BGMtest))
			{
	//			print("On beat!" + string(BGMstep));
				bpm_fixedUpdates = 0;
				bpm_onBeat_check = true;
			}
			else {
				bpm_onBeat_check = false;
			}
	}
}