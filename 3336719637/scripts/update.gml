//update.gml
//this is where the bulk of our programming goes, where we want to program most gimmicks
//anything that should be checked/executed after the first frame of the match

//change_strings = change_detector();

///////////////////////////////////////////////////////// USEFUL CUSTOM VARIABLES /////////////////////////////////////////////////////////
is_attacking = (state == PS_ATTACK_GROUND || state == PS_ATTACK_AIR); //attack check - becomes true if the state is PS_ATTACK_GROUND or PS_ATTACK_AIR
is_dodging = (hurtboxID.dodging); //dodge check - becomes true if the character is invincible when dodging/teching
game_time = get_gameplay_time(); //get_gameplay_time() is a timer that counts up every frame of the match

if (is_attacking)
{
    window_end = floor(get_window_value(attack, window, AG_WINDOW_LENGTH) * ((get_window_value(attack, window, AG_WINDOW_HAS_WHIFFLAG) && !has_hit) ? 1.5 : 1));
    window_last = get_attack_value(attack, AG_NUM_WINDOWS);
    window_cancel_time = get_window_value(attack, window, AG_WINDOW_CANCEL_FRAME);

    //window_end - takes the last frame of the window (includes whifflag)
    //window_last - checks the last window in the attack
    //window_cancel_time - if the window has a cancel frame to attack/special, this variable can detect the frame it can happen
}
else{
    if (my_grab_id != noone) my_grab_id = noone; //if the player isn't attacking, we don't need the grab_id to stay

    if (state_timer == 0)
    {
        //force reset spr_angle and draw offsets on the start of every state
        //normally we put this sort of stuff in animation.gml, but update.gml runs before animation.gml
        if (spr_angle != 0) spr_angle = 0;
        if (draw_x != 0) draw_x = 0;
        if (draw_y != 0) draw_y = 0;
    }
}

//grab logic
if (my_grab_id != noone){ //if you have grabbed someone{
	grab_time ++;

    with (my_grab_id){
		hitstop = 2; //freeze grabbed foe

		if (last_player_hit_me != other.player){ //if another player hits the grabbed player stop the grab sequence
			hitstop = 0;
			with (other){
				my_grab_id = noone;
				if (!free) hsp = spr_dir*-6; //push back for some extra effect (ground only)
				set_state(free ? PS_IDLE_AIR : PS_IDLE);
			}
		}
    }
}
else grab_time = 0;

//play intro
//if (game_time == 4 && has_intro) set_attack(AT_INTRO);

//renders effects in front of you
//credit to supersonic for the help
with (hit_fx_obj)
{
    //effects default depth when they spawn is 3, so this will make it so it won't overwrite values if i add them manually
    if (player == other.player && depth == 3) depth = player_id.depth-1;
}


//technecally speaking, we CAN add this to the previous instance of is_attacking above but for order in the code we have it here seperated
//but because it's pretty much the same if statement we can merge them though
if (is_attacking){
    switch (attack){
        case AT_FSPECIAL: //f-spec tether check
            //we need to check this on update.gml and not attack_update because it can't detect invincibility properly
            if (window <= 3){
                //a slightly simpler but not as consistent collision check by bar-kun
				/*
                    //var sections = 16; //amount of positions to check
                    
                    for (var i = 0; i <= sections; i ++) //we are basically looping through every single position untill we find something
                    {
                        //here we check the positions themselves across a single line that depends on the distance and angle we are aiming
                        //fspec angle is a multiplier we are using for the vertical range
                        //fspec aim is what we use to change which way we are aiming
                        var dir_x = x + (64 + lengthdir_x(total_dist/sections * i, fspec_angle * -fspec_aim)) * spr_dir;
                        var dir_y = y + lengthdir_y(total_dist/sections * i, fspec_angle * -fspec_aim) - char_height/2;

                        with (oPlayer)
                        {
                            //this should work only for as long as other players exist
                            if (player != other.player) with (other)
                            {
                                //check if other players are detected and aren't invincible, if they do spawn a hitbox on them to lock them in place
                                //on hit_player.gml we are checking if they are actually locked in place (the hitbox needs to hit them)
                                if (position_meeting(dir_x, dir_y, other) && !other.invincible && !other.hurtboxID.dodging)
                                {
                                    stop_checking = true;
                                }
                            }
                            else //this should work pretty much always (including when there are no other players)
                            {
                                if (position_meeting(dir_x, dir_y, asset_get("par_block"))
                                || position_meeting(dir_x, dir_y, asset_get("par_jumpthrough"))) //check if the ground or platforms ar detected
                                {
                                    stop_checking = true;
                                }
                                else if (position_meeting(dir_x, dir_y, artc_dspec)) //checks if the dspec article is in the way
                                {
                                    stop_checking = true;
                                }
                                else fspec_tether_pos = [dir_x, dir_y];
                            }
                        }
                        if (stop_checking) break;
                    }
                */



                var total_dist = 250; //distance that the positions spread across to check
                var stop_checking = false; //we are using this variable so the loop will stop
                
            	var start_x = x + 64*spr_dir;
            	var start_y = y - char_height/2;
                
                var end_x = start_x + (lengthdir_x(total_dist, fspec_angle * -fspec_aim)) * spr_dir;
                var end_y = start_y + lengthdir_y(total_dist, fspec_angle * -fspec_aim);
                
                //collision_line_point returns an array in this format: [instance_id, collision_x, collision_y].

                var block_col = collision_line_point(start_x, start_y, end_x, end_y, asset_get("par_block"), true, true);
                var jumpthrough_col = collision_line_point(start_x, start_y, end_x, end_y, asset_get("par_jumpthrough"), true, true);
                var article_col = [-4, end_x, end_y];

                //we want to detect collisions with the hurtbox rather than the player's bounding box, since that will not be an accurate judge of size.
                //as a note, hurtboxes like to break variable naming conventions. To get the player id of a hurtbox, you do playerID instead of player_id.
                var player_col;
                with (hurtboxID) player_col = collision_line_point(start_x, start_y, end_x, end_y, pHurtBox, true, true);
                
                if (player_col[0] != noone)
                {
                	// We want the collision to fly past invincible players, so we want to try the collision AGAIN from their perspective
                	// (to avoid colliding with them again) if they're invincible.
                	// We'll use a while loop to do this, which loops until its condition is no longer true.
                	// Be careful with while loops! I like to give them a failsafe to prevent infinite loops.
                    // I didn't here, as I felt this loop was particularly safe. -Supersonic
                    
                    var it = 0; // Define failsafe iteration count. 
                	while (player_col[0] != noone && (player_col[0].playerID.invincible || player_col[0].dodging))
                    {
                		with (player_col[0]) player_col = collision_line_point(player_col[1], player_col[2], end_x, end_y, pHurtBox, true, true);
                	}
                }
                
                //I choose to put the collisions into an array and loop through them to avoid code repetition.
                //It is ideal to reduce repetition as much as possible, so that you don't have to change values
                //in too many places if something needs to change.
                var collisions = [
                	block_col,
                	jumpthrough_col,
                	player_col,
                	article_col
                ];
                
                var final_col_dist = total_dist;
                var final_col = [-4, end_x, end_y];
                
                for (var i = 0; i < array_length(collisions); i++) 
                {
                    var col = collisions[i]; // The current collision. (putting this in its own local (var) variable is a micro optimization)

                    // The continue statement will skip to the next iteration in the loop without running the code below.
                    if (col[0] == noone) continue;

                	// Compare the distance of the current checked collision with that of the
                	// old final collision. The one with the lower distance is the new final collision.
                	var dist = point_distance(start_x, start_y, col[1], col[2]);
                	if (dist < final_col_dist) 
                	{
                		final_col = col;
                		final_col_dist = dist;
                	}
                }
                fspec_tether_pos = [final_col[1],final_col[2]];
            }
            break;
        
    }
}

////////////////////////////////////////////////////////////////// MISC. //////////////////////////////////////////////////////////////////

//rainbow alts user_event redirect
if (alt_cur == 11 || alt_cur == 12) user_event(0);

//ties certain hit particles to certain effects automatically
with (pHitBox){
    if (orig_player == other.player){ //with the hitbox parent object, make sure it's the player's hitbox first
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




///===============================================
#define change_detector()
{
    //Usage: creates "detector_last_values" struct, and outputs array of strings
    var strings = [];
    var keys = variable_instance_get_names(self);

    if ("detector_last_values" not in self)
    {
        array_push(strings, "initializing detection");
        detector_last_values = {};

        for (var k = 0; k < array_length(keys); k++)
        {
            variable_instance_set(detector_last_values, keys[k], 
                                variable_instance_get(self, keys[k]));
        }
    }
    else
    {
        for (var k = 0; k < array_length(keys); k++)
        {
            var key = keys[k];
            if (key == "change_strings" or key == "detector_last_values") continue;
            var val = variable_instance_get(self, key)
            if (key not in detector_last_values)
            {
                array_push(strings, "NEW " + key + ": " + string(val) );
            }
            else if (val != variable_instance_get(detector_last_values, key))
            {
                array_push(strings, "CHANGED " + key + ": " + string(val) );
            }
            variable_instance_set(detector_last_values, keys[k], 
                                variable_instance_get(self, keys[k]));
        }
    }
    return strings;
}
