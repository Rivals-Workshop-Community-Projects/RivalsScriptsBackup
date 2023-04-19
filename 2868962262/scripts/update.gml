//update.gml

///////////////////////////////////////////////////////// USEFUL CUSTOM VARIABLES /////////////////////////////////////////////////////////

//initial check stuff
is_attacking = (state == PS_ATTACK_GROUND || state == PS_ATTACK_AIR);
is_dodging = (hurtboxID.dodging);
game_time = get_gameplay_time();

if (is_attacking)
{
    window_end = floor(get_window_value(attack, window, AG_WINDOW_LENGTH) * ((get_window_value(attack, window, AG_WINDOW_HAS_WHIFFLAG) && !has_hit) ? 1.5 : 1));
    window_last = get_attack_value(attack, AG_NUM_WINDOWS);
    window_cancel_time = get_window_value(attack, window, AG_WINDOW_CANCEL_FRAME);
}
else
{
    if (my_grab_id != noone) my_grab_id = noone;

    if (state_timer == 0) //force reset manual offsets / rotations on new state
    {
        if (spr_angle != 0) spr_angle = 0;
        if (draw_x != 0) draw_x = 0;
        if (draw_y != 0) draw_y = 0;
    }
}

//grab logic
if (my_grab_id != noone) //if you have grabbed someone
{
	grab_time ++;

    with (my_grab_id)
	{
		hitstop = 2; //freeze grabbed foe
		if (hit_player != other.player) //if another player hits the grabbed player stop the grab sequence
		{
			hitstop = 0;
			with (other)
			{
				my_grab_id = noone;
				if (!free) hsp = spr_dir*-6; //push back for some extra effect (ground only)
				set_state(free ? PS_IDLE_AIR : PS_IDLE);
			}
		}
    }
}
else grab_time = 0;

//renders effects
//credit to supersonic for the help
with (hit_fx_obj)
{
    if (player == other.player && depth == 3) depth = player_id.depth-1;
}

//////////////////////////////////////////////////////// CHARACTER SPECIFIC UPDATE /////////////////////////////////////////////////////////

// The COMMAND GRAB Code
// By Wabungus!

// player with lowest player number will run everything involving the fake other_updates
if (otherRunIsHighest == true) {
    
    if (otherRunTime == 30) {
        // Whichever player has the lowest player number will get here first
        
        with (oPlayer) {
            
            try {
                
                if (player != other.player) {
                    otherRunIsHighest = false;
                    print_debug(url);
                }
                
            } catch (err) {}
            
        }
        
        otherRunTime++;
        
    } else if (otherRunTime > 30) {
        // This will run for the player which is supposed to run all your with
        // calls (oPlayer, pHitbox, etc.)
        
        // Set Hitboxes to be grabbed
        with (pHitBox) {
            
            var urlNumber = real(player_id.url);
            
            // Setting for base cast
            if (urlNumber < 100 && type == 2 && !does_not_reflect && !unbashable) {
                
                // Checks if the variable has been set before
                if !variable_instance_exists(self, "grabObjectType") {
                    grabObjectType = 2;
                    
                }
                
                var listsize = ds_list_size(other.grabHitboxID);
                
                var valexists = true;
                
                // Check every value in list for duplicates
                for (i = 0; i < listsize; i++) {
                	
                	if (id == other.grabHitboxID[|i]) {
                		
                		valexists = false;
                		
                	}
                	
                }
                
                if (valexists == true) {
                	
                	ds_list_add(other.grabHitboxID, id);
                	
                }
                
            } else {
                
                // Checks if the variable has been set before
                if !variable_instance_exists(self, "grabObjectType") {
                    // Sets any hitboxes that don't already have a grab type set
                    // so that they cannot ever be grabbed, but won't
                    // throw errors down bellow
                    grabObjectType = 0;
                    
                } else {
                	// Add to list for workshop characters with grabbable hitboxes
                	if (grabObjectType == 2) {
		                
		                var listsize = ds_list_size(other.grabHitboxID);
		                
		                var valexists = true;
		                
		                // Check every value in list for duplicates
		                for (i = 0; i < listsize; i++) {
		                	
		                	if (id == other.grabHitboxID[|i]) {
		                		
		                		valexists = false;
		                		
		                	}
		                	
		                }
		                
		                if (valexists == true) {
		                	
		                	ds_list_add(other.grabHitboxID, id);
		                	
		                }
                		
                	}
                	
                }
                
                
                
            }
            
            if (player_id.grabCanHitbox == true && player_id.grabId == 0) {
                
                // Check all values in list
                var listsize = ds_list_size(other.grabHitboxID);
                
                // Check all hitboxes from base cast
                for (i = 0; i < listsize; i++) {
                	
                	var currentID = other.grabHitboxID[| i];
                	
                	// Check if hitbox is still existant
                	if instance_exists(currentID) {
                		
                		var possibleHitbox = place_meeting(x, y, currentID); // possibly the way
	                	
	                	if (possibleHitbox == true && player_id.grabId == 0) {
		                    player_id.grabId = currentID;
		                    
		                    player_id.grabStartX = x;
			                player_id.grabStartY = y;
		                    
		                    player_id.has_hit = true;
		                    
		                    // Opponent's damage at start of grab (used for falling out early)
		                    player_id.grabOpponetDamage = 30;
		                    
		                    // Sets to be parried
		                    currentID.was_parried = true;
		                    
		                    // Values stored from grabbing hitbox (used if player should somehow fall out of the grab early)
		                    player_id.grabKnockbackScaling = kb_scale;
		                    player_id.grabHitBoxDamage = damage;
		                    player_id.grabKnockback = kb_value;
		                    player_id.grabLaunchAngle = get_hitbox_angle( self );
		                    
		                    player_id.grabHitboxWidth = image_xscale;
		                    player_id.grabHitboxHeight = image_yscale;
		                    
		                    possibleHitbox = false;
		                    
		                    spawn_hit_fx(x + hit_effect_x, y + hit_effect_y, hit_effect);
        					
        					sound_play(sound_effect);
		                    
		                    // End to prevent further checks
		                    break;
		                    
		                }
                		
                	}
                	
                }
                
            }
        }
        
        with (oPlayer) {
        	
        	// Make sure this only runs if they have something being grabbed
        	if (grabId != 0) {
        		
        		// Attempts to locate the caught projectile
        		try {
	        		
	        		switch (grabId.grabObjectType) {
	        			
	        			// Player Grab Release
	        			case 1:
		        			
		        			if (state != PS_ATTACK_AIR && state != PS_ATTACK_GROUND) {
							    
							    // hsp & vsp for player that is released
							    var force = get_kb_formula(30, 0.9, 1.0, grabHitBoxDamage, grabKnockback, grabKnockbackScaling);
        						grabId.hsp = lengthdir_x( force, grabLaunchAngle );
        						grabId.vsp = lengthdir_y( force, grabLaunchAngle );
        	
							    if (grabId.visible == false) {
							        
							        grabId.visible = true;
							        
							    }
							    grabId = 0;
								grabEasingTimer = 0;
								positionsCurrent = 0;
								grabEasingTimer = 0;
								grabWindowRemaining = -1;
								grabStartX = 0;
								grabStartY = 0;
								grabCanPlayer = false;
								grabCanHitbox = false;
								grabCanArticle = false;
								
								grabOpponetDamage = 0;
								grabKnockbackScaling = 0;
								grabHitBoxDamage = 0;
								grabKnockback = 0;
								grabLaunchAngle = 0;
							    
							}
		        			
		        			break;
		        			
		        		// Hitbox Grab Release
	        			case 2:
		        			
		        			if (state != PS_ATTACK_AIR && state != PS_ATTACK_GROUND) {
								
								// hsp and vsp already constantly set in attack_update during grab
								
							    if (grabId.visible == false) {
							        
							        grabId.visible = true;
							        
							    }
							    grabId = 0;
								grabEasingTimer = 0;
								positionsCurrent = 0;
								grabEasingTimer = 0;
								grabWindowRemaining = -1;
								grabStartX = 0;
								grabStartY = 0;
								grabCanPlayer = false;
								grabCanHitbox = false;
								grabCanArticle = false;
								
								grabOpponetDamage = 0;
								grabKnockbackScaling = 0;
								grabHitBoxDamage = 0;
								grabKnockback = 0;
								grabLaunchAngle = 0;
							    
							}
		        			
		        			break;
		        			
		        		// Article Grab Release
	        			case 3:
		        			
		        			if (state != PS_ATTACK_AIR && state != PS_ATTACK_GROUND) {
							    
							    // hsp & vsp for player that is released
							    var force = get_kb_formula(30, 0.9, 1.0, grabHitBoxDamage, grabKnockback, grabKnockbackScaling);
        						grabId.hsp = lengthdir_x( force, grabLaunchAngle );
        						grabId.vsp = lengthdir_y( force, grabLaunchAngle );
        	
							    if (grabId.visible == false) {
							        
							        grabId.visible = true;
							        
							    }
							    grabId = 0;
								grabEasingTimer = 0;
								positionsCurrent = 0;
								grabEasingTimer = 0;
								grabWindowRemaining = -1;
								grabStartX = 0;
								grabStartY = 0;
								grabCanPlayer = false;
								grabCanHitbox = false;
								grabCanArticle = false;
								
								grabOpponetDamage = 0;
								grabKnockbackScaling = 0;
								grabHitBoxDamage = 0;
								grabKnockback = 0;
								grabLaunchAngle = 0;
							    
							}
		        			
		        			break;
	        			
	        		}
	        		
	        	} catch (err) {
	        		grabId = 0;
					grabEasingTimer = 0;
					positionsCurrent = 0;
					grabEasingTimer = 0;
					grabWindowRemaining = -1;
					grabStartX = 0;
					grabStartY = 0;
					grabCanPlayer = false;
					grabCanHitbox = false;
					grabCanArticle = false;
					
					grabOpponetDamage = 0;
					grabKnockbackScaling = 0;
					grabHitBoxDamage = 0;
					grabKnockback = 0;
					grabLaunchAngle = 0;
	        		
	        	}
        	
        	}
        	
        }
        
    } else {
        // Amount of time to allow all players to spawn
        otherRunTime++;
        
    }
    
}

////////////////////////////////////////////////////////////////// MISC. //////////////////////////////////////////////////////////////////

//ABYSS RUNES
if (get_match_setting(SET_RUNES))
{
    //rune setup
}

//tie hit particles with hit effects
with (pHitBox) if (orig_player == other.player)
{
    //put your hit fx value instead of 0
    if (hit_effect == 0) fx_particles = 1;
}

//if (shield_pressed) end_match(player); //victory screen check

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
prep_hitboxes();


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
        if (get_window_value(attack, window, AG_WINDOW_TYPE) == 9) //this will make it so it only works if the window type is 9
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
#define print_vars
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