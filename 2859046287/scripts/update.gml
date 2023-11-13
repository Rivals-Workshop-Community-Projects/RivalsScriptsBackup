//update.gml
//this is where the bulk of our programming goes, where we want to program most gimmicks
//anything that should be checked/executed after the first frame of the match

///////////////////////////////////////////////////////// USEFUL CUSTOM VARIABLES /////////////////////////////////////////////////////////

is_attacking = (state == PS_ATTACK_GROUND || state == PS_ATTACK_AIR); //attack check - becomes true if the state is PS_ATTACK_GROUND or PS_ATTACK_AIR
is_dodging = (hurtboxID.dodging); //dodge check - becomes true if the character is invincible when dodging/teching
game_time = get_gameplay_time(); //get_gameplay_time() is a timer that counts up every frame of the match
hbox_view = get_match_setting(SET_HITBOX_VIS); //keeps track if hitbox view is on or off

if (is_attacking)
{
    window_end = floor(get_window_value(attack, window, AG_WINDOW_LENGTH) * ((get_window_value(attack, window, AG_WINDOW_HAS_WHIFFLAG) && !has_hit) ? 1.5 : 1));
    window_last = get_attack_value(attack, AG_NUM_WINDOWS);
    window_cancel_time = get_window_value(attack, window, AG_WINDOW_CANCEL_FRAME);

    //window_end - takes the last frame of the window (includes whifflag)
    //window_last - checks the last window in the attack
    //window_cancel_time - if the window has a cancel frame to attack/special, this variable can detect the frame it can happen
}
else
{
    window_loops = 0; //resets loop value in case the character isn't attacking (useful for hitstun)
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
if (instance_exists(my_grab_id) && my_grab_id != noone) //if you have grabbed someone (and made sure they exist)
{
	grab_time ++;

    with (my_grab_id)
	{
		hitstop = 2; //freeze grabbed foe

		if (last_player_hit_me != other.player) //if another player hits the grabbed player stop the grab sequence
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

//play intro
if (game_time == 4 && has_intro) set_attack(AT_INTRO);

//renders effects in front of you
//credit to supersonic for the help
with (hit_fx_obj)
{
    //effects default depth when they spawn is 3, so this will make it so it won't overwrite values if i add them manually
    if (player == other.player && depth == 3) depth = player_id.depth-1;
}

//////////////////////////////////////////////////////// CHARACTER SPECIFIC UPDATE /////////////////////////////////////////////////////////

//u-air status effect
with (oPlayer) if (test_status_owner == other)
{
    //as long as the timer is above 0, the status is active
    //we also need to make sure the player isn't dead so the status effect can be inflicted
    if (test_status_timer > 0 && state != PS_RESPAWN && state != PS_DEAD)
    {
        test_status_timer --;

        //% # == 0 makes it so only once every multiples of # it will actually run
        if (test_status_timer % 30 == 0)
        {
            take_damage(player, player, 1); //basic damage application
            with (test_status_owner)
            {
                //spawns the bigger particles that blink every +1%
                var status_part = spawn_hit_fx(
                    other.x,
                    other.y - other.char_height/2,
                    fx_pow_hit[0]
                );
                status_part.depth = other.depth + 2; //sets the depth so they always appear behind of the enemy
                status_part.spr_dir = 1; //forces the spr_dir of the effect to be consistent
            }
        }

        //basic status particles - uses the particle system
        if (test_status_timer % 6 == 0)
        {
            //this "with" statement changes the perspective of the code, in this case it goes back to the owner player
            //we are doing this so the effects get recolored according to the owner
            with (test_status_owner)
            {
                //spawns the little sparkles
                //using random_func, we can make the particles spread randomly on the enemy player
                do_particle(
					sprite_get("fx_pow_sparks"),
					12,
					other.x + (random_func(11, 5, true) - 2) * 16,
					other.y + (random_func(12, 5, true) - 2) * 16 - other.char_height / 2,
                    1, //xscale
					1, //yscale
					1, //spr_dir
				);
            }
        }
    }
    else test_status_timer = 0;
}

//technecally speaking, we CAN add this to the previous instance of is_attacking above but for order in the code we have it here seperated
//but because it's pretty much the same if statement we can merge them though
if (is_attacking)
{
    switch (attack)
    {
        case AT_BAIR: //spawn blast effects, we can't do it in attack_update because it has no access to window_timer 0
            switch (window)
            {
                case 3: //blast - weak
                    if (window_timer == 0 && !hitpause) spawn_hit_fx(x-32*spr_dir, y-40, fx_pow_hit[0]);
                    break;
                case 6: //blast - strong
                    if (window_timer == 0 && !hitpause) spawn_hit_fx(x-32*spr_dir, y-40, fx_pow_hit[1]);
                    break;
            }
            break;
        case AT_NSPECIAL: //n-spec charge sound loop
            if (state_timer == 8) cur_loop_sound = sound_play(nspec_charge_sound, true);
            else if (window == 5) sound_stop(cur_loop_sound);
            break;
        case AT_FSPECIAL: //f-spec tether check
            //we need to check this on update.gml and not attack_update because it can't detect invincibility properly
            if (window <= 3)
            {
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
                var article_col = instance_exists(artc_dspec) ? collision_line_point(start_x, start_y, end_x, end_y, artc_dspec, true, true) : [-4, end_x, end_y];

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
        case AT_USPECIAL: //u-spec correcting offsets and rotation
            draw_y = -32;
            switch (window)
            {
                case 3:
                    spr_angle = uspec_angle-90;
                    break;
                case 4:
                    //spr_angle = uspec_angle-90; //dynamic turning rune?
                    fall_through = down_down; //if down is held tester can go through platforms
                    landing_lag_time = 15;
                    break;
            }
            break;
    }
}
else
{
    //f-air cooldown conditions
    if (fair_cd)
    {
        //fair_cd is true when f-air is done, and will set the move cooldown, this also stays if the player goes into landing lag
        if (free || state == PS_LANDING_LAG) move_cooldown[AT_FAIR] = 15;
        else if (!free || state == PS_WALL_JUMP)
        {
            fair_cd = false;
            if (state == PS_LAND && attack == AT_FAIR) move_cooldown[AT_FAIR] = 0;
        }
    }

    if (!nspec_charge_stored) nspec_charge = 1; //reset nspec charge if nspec isn't used and it wasn't stored

    //loop sound cancel
    sound_stop(cur_loop_sound);
    sound_stop(alt_cur == 21 ? sound_get("mus_slaughter") : sound_get("mus_onlyyou"));

    //practice mode shortcut to reset cooldown - only works if cooldown is actually over 0
    if (get_match_setting(SET_PRACTICE) && move_cooldown[AT_DSPECIAL] > 0)
    {
        //we can put any input we want here, in our case we need to hold down shield and press special
        if (shield_down && special_pressed)
        {
            sound_play(asset_get("mfx_coin"));
            move_cooldown[AT_DSPECIAL] = 0;
        }
    }
}

////////////////////////////////////////////////////////////////// MISC. //////////////////////////////////////////////////////////////////

//ABYSS RUNES
//we can also put the has_rune("#") variable in attack files, for example:
//  set_attack_value(AT_DSPECIAL, AG_NUM_WINDOWS, 6 + has_rune("H") * 2);  - this code will add 2 extra windows to AT_DSPECIAL if rune H is equipped

//in here we can put in all the abyss runes code that update needs
if (get_match_setting(SET_RUNES))
{
    //RUNE A: custom wall slide
    if (has_rune("A")) //used scripts: update.gml, post_draw.gml
    {
        //we can put these two variables on init.gml too
        //only reason they are here is to not make init.gml too confusing
        can_wall_cling = true;
        wall_slide_enabled = true;
        //on init we can write it like can_wall_cling = has_rune("A"); which will be true as long as we have rune A active

        //this part has to be in update.gml
        //adds vsp when clinging basically
        if (clinging && wall_slide_enabled) vsp += state_timer*wall_slide_fric;
        if (!free) clinging = false; //stop clinging
    }

    //RUNE B: movement stat alter using a rune
    if (has_rune("B")) //used_scripts: update.gml
    {
        //these variables can be put in init too 
        ground_friction = 0.3;
        moonwalk_accel = 14;
        wave_land_adj = 2;
        //on init we can write it like ground_friction = has_rune("B") ? 0.3 : 0.5; which will set the ground friction to 0.2 if rune B is active
    }

    //RUNE C: floaty double jump
    if (has_rune("C")) //used_scripts: update.gml
    {
        //these variables can be put in init too
        djump_speed             = -1;
        djump_accel             = -1.4;
        djump_accel_end_time    = 11;
        //on init we can write it like djump_speed = has_rune("C") ? -1 : 10; which will be true as long as we have rune C active
    }

    //RUNE D: exploding article
    //used_scripts: article1_update.gml

    //RUNE E: spawning hitbox through another hitbox
    //used_scripts: hit_player.gml, hitbox_update.gml

    //RUNE F: auto-facing opponents on 1 v 1s
    if (has_rune("F")) //used scripts: init.gml, update.gml, animation.gml
    {
        //we are first checking if the match has ONLY 2 players
        if (runeF_player_amount == 2) with (oPlayer) if (player != other.player)
        {
            //runeF_face_dir will detect which direction we need to face, and mirrors how spr_dir works (it can either be 1 or -1)
            if (x > other.x) other.runeF_face_dir = 1; //facing right
            else if (x < other.x) other.runeF_face_dir = -1; //facing left

            //auto-facing should only work if we are on the ground
            with (other) if (!free)
            {
                //on idle, force the character to turn around if the spr_dir isn't the runeF_face_dir
                if (spr_dir != runeF_face_dir && state == PS_IDLE) set_state(PS_WALK_TURN);
                if (state == PS_WALK || state == PS_WALK_TURN)
                {
                    //this part allows us to skip the walkturn state so we can walk backwards
                    if (left_down && runeF_face_dir || right_down && -runeF_face_dir) state = PS_WALK;
                    //if we are in the walkturn state and we aren't stopped, force us to idle
                    else if ((!left_down && runeF_face_dir || !right_down && -runeF_face_dir) && state == PS_WALK_TURN) state = PS_IDLE;
                }
            }
        }
    }
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
if (uses_custom_dusts) custom_dust_effects();
if (game_time > 60) prep_hitboxes();
particle_system();

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
#define particle_system
{
    for (var i = 0; i < array_length(fx_part); i++) //should update all particles
    {
        var cur_part = fx_part[i];

        cur_part.timer ++; //increment timer
        if (cur_part.anim_img) cur_part.img = lerp(0, sprite_get_number(cur_part.spr), cur_part.timer/cur_part.length); //animation
        if (cur_part.dir == 0) cur_part.dir = spr_dir; //setting facing direction 0

        //movements setup
        cur_part.xpos += cur_part.hsp; //x
        cur_part.ypos += cur_part.vsp; //y
        cur_part.angle += cur_part.torque; //rotation

        //fade effects
        if (cur_part.anim_alpha == 1) cur_part.alpha = lerp(0, cur_part.alpha, cur_part.timer/(power(cur_part.length, 1.5)) );
        else if (cur_part.anim_alpha == -1) cur_part.alpha = lerp(cur_part.alpha, 0, cur_part.timer/(power(cur_part.length, 1.5)) );

        //if particle reaches the end of it's lifetime, refresh particles array
        if (cur_part.timer >= cur_part.length)
        {
            var temp_fx_part = fx_part;
            fx_part = [];
            for (var j = 0; j < array_length(temp_fx_part); j ++) if (j != i) array_push(fx_part, temp_fx_part[j]);
        }
    }
}
#define do_particle
{
	var _spr = argument[0], _length = argument[1], _xpos = argument[2], _ypos = argument[3];
	var _dir = argument_count > 4 ? argument[4] : 0;
	var _xscale = argument_count > 5 ? argument[5] : 1;
	var _yscale = argument_count > 6 ? argument[6] : 1;
	var _angle = argument_count > 7 ? argument[7] : 0;
	var _layer = argument_count > 8 ? argument[8] : -1;
	var _anim_img = argument_count > 9 ? argument[9] : true;
	var _hsp = argument_count > 10 ? argument[10] : 0;
	var _vsp = argument_count > 11 ? argument[11] : 0;
	var _torque = argument_count > 12 ? argument[12] : 0;
	var _alpha = argument_count > 13 ? argument[13] : 1;
	var _anim_alpha = argument_count > 14 ? argument[14] : 0;
	var _color = argument_count > 15 ? argument[15] : c_white;
	var _filled = argument_count > 16 ? argument[16] : false;
    var _shader = argument_count > 17 ? argument[17] : false;
	var _img = argument_count > 18 ? argument[18] : 0;

	var new_part = {
		spr: _spr,
		xpos: _xpos,
		ypos: _ypos,
		hsp: _hsp,
		vsp: _vsp,
		dir: _dir,
		angle: _angle,
		torque: _torque,
		xscale: _xscale,
		yscale: _yscale,
		alpha: _alpha,
		anim_alpha: _anim_alpha,
		color: _color,
		filled: _filled,
        shader: _shader,
		layer: _layer,
		length: _length,
		img: _img,
		anim_img: _anim_img,
		timer: 0
    };
    array_push(fx_part, new_part);
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