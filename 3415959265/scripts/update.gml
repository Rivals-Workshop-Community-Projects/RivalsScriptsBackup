//update.gml

///////////////////////////////////////////////////////// USEFUL CUSTOM VARIABLES /////////////////////////////////////////////////////////

//initial check stuff
is_attacking = (state == PS_ATTACK_GROUND || state == PS_ATTACK_AIR);
is_dodging = (hurtboxID.dodging);
game_time = get_gameplay_time();
hbox_view = get_match_setting(SET_HITBOX_VIS);

//print(get_state_name(state))

//Initialization
if (!playtest_active) if ("meter_decrease" not in obj_stage_main || !obj_stage_main.meter_decrease)
{
    with (oPlayer)
    {
        //add enemies to invincibility check array, this is used to stop the boost mode gauge if every enemy is respawning or dead
        if (other.enemy_invince_check[player-1] == 99 && (is_player_on(player) && !clone && !custom_clone || player == 5))
        {
            //this also creates the slot for the player to use
            if (get_player_team(player) != get_player_team(other.player))
            {
                other.enemy_count ++;
                other.enemy_invince_check[player-1] = 0;
            }
            else other.enemy_invince_check[player-1] = -1; //-1 means to ignore it completely
        }

        if ("prev_prev_state" in self && prev_prev_state != PS_DEAD && state == PS_DEAD)
        {
            other.enemy_count --;
            other.enemy_invince_check[player-1] = -1; //-1 means to ignore it completely
        }

        //checks total amount of players in general
        if (other.exist_timer == 1 && is_player_on(player) && !clone && !custom_clone && player != 5)
        {
            other.total_players ++;
            if (player != other.player) array_push(other.active_player_slots, player);
        }
    }
}

if (is_attacking)
{
    window_end = floor(get_window_value(attack, window, AG_WINDOW_LENGTH) * ((get_window_value(attack, window, AG_WINDOW_HAS_WHIFFLAG) && !has_hit) ? 1.5 : 1));
    window_last = get_attack_value(attack, AG_NUM_WINDOWS);
    window_cancel_time = get_window_value(attack, window, AG_WINDOW_CANCEL_FRAME);
}
else
{
    window_loops = 0;
    if (my_grab_id != noone) my_grab_id = noone;
    sound_stop(cur_loop_sound);
    sound_stop(cur_loop_sound2);
    if (state_timer == 0) //force reset manual offsets / rotations on new state
    {
        if (spr_angle != 0) spr_angle = 0;
        if (draw_x != 0) draw_x = 0;
        if (draw_y != 0) draw_y = 0;
    }
}

//grab logic
if (instance_exists(my_grab_id) && my_grab_id != noone) //if you have grabbed someone (and checked that they exist)
{
	grab_time ++;
    with (my_grab_id)
	{
		hitstop = 2; //freeze grabbed foe
    }
}
else grab_time = 0;

//play intro
if (game_time == 4 && has_intro) set_attack(AT_INTRO);

//renders effects
//credit to supersonic for the help
with (hit_fx_obj)
{
    if (player == other.player && depth == 3) depth = player_id.depth-1;
}

//////////////////////////////////////////////////////// CHARACTER SPECIFIC UPDATE /////////////////////////////////////////////////////////

voice_update();

//Fspecial's once per airtime double jump refresh
if (!free) {
    was_airborne = false; // Grounded — ready for next airtime
}

// Cheats
if (get_match_setting(SET_PRACTICE)) {
    // Activate Sparking
    if (down_down && taunt_pressed && !is_sparking) {
        is_guardian = false;
        is_super = false;
        is_sparking = true;
        meter = 999999;
    }

    // Deactivate Sparking
    if (up_down && taunt_pressed && is_sparking) {
        is_sparking = false;
    }

    // Activate Guardian
    if (right_down && taunt_pressed && !is_guardian) {
        is_sparking = false;
        is_super = false;
        is_guardian = true;
        meter = 999999;
    }

    // Deactivate Guardian
    if (up_down && taunt_pressed && is_guardian) {
        is_guardian = false;
    }

    // Activate Super
    if (left_down && taunt_pressed && !is_super) {
        is_sparking = false;
        is_guardian = false;
        is_super = true;
    }

    // Deactivate Super
    if (up_down && taunt_pressed && is_super) {
        is_super = false;
    }
}

// Super Form Compatibility
if ("super_form_active" in self) {
    is_super = super_form_active;
} 

/*
//Article stuff
if (ds_list_size(article_list) > 0) {  
    for (var i = ds_list_size(article_list) - 1; i >= 0; i--) {
        var article = article_list[| i];
        if (!instance_exists(article)) {
            ds_list_delete(article_list, i); // Remove non-existing article reference
            artc_count = max(artc_count - 1, 0); 
        }
    }

    // **Ensure `artc_ground` references the last active article if available**
    if (ds_list_size(article_list) > 0) {
        artc_ground = article_list[| ds_list_size(article_list) - 1]; // Set to last active article
    } else {
        artc_ground = noone; // Reset if no articles exist
    }
}*/
// Reduce lockout over time
if (artc_lockout > 0) {
    artc_lockout --;
}

if (artc_parried_timer > 0) {
    artc_parried_timer --;
}


//Thousand-Blows Mechanic

// Check and remove marks for players in PS_DEAD or PS_RESPAWN states
if (marked_players != noone) {
    var list_size = ds_list_size(marked_players); // Cache list size
    for (var i = list_size - 1; i >= 0; i--) {
        var entry = marked_players[| i];
        var marked_player = entry[0];

        if (instance_exists(marked_player)) {
            // Remove marks if player is dead or respawning
            if (marked_player.state == PS_DEAD || marked_player.state == PS_RESPAWN) {
                ds_list_delete(marked_players, i);
            }
        } else {
            // Remove marks if player no longer exists
            ds_list_delete(marked_players, i);
        }
    }
}

// Update animation and rotation for marks
if (marked_players != noone && ds_list_size(marked_players) > 0) {
    mark_angle += 5; // Increment angle for rotation

    // Update the global mark animation
    if (mark_anim < 6) {
        mark_anim += 0.2; // Increment animation until the final frame
    } else {
        mark_anim = 6; // Hold on the last frame
    }
}


//Install Meter
if (meter <= 0)
{
	is_guardian = false;
	is_sparking = false;
	if (is_guardian)
	{
		guardian_hud_timer = guardian_hud_timer_start
		guardian_hud_start_frame = 0;
	}
}
if (meter == meter_max && prev_meter < meter_max && meter_ready_timer == 0) {
    meter_ready_timer = 180; // Display for 3 seconds
}

// Decrement the timer every frame
if (meter_ready_timer > 0) {
    meter_ready_timer--;
}
// Store previous meter value for next frame comparison
prev_meter = meter;

if (is_sparking || is_guardian)
{
	meter_ready_timer = 0;
    // Deplete meter after X amount of time passed
    if (meter > 0)
    {
        if ("meter_decrease" in obj_stage_main && obj_stage_main.meter_decrease || meter_decrease)
        {
            // Deplete meter if:
            // - can hit at least one enemy
            meter -= 1 / meter_decrease_rate;
        }
        else
        {
            if (!playtest_active)
            {
                var invince_count = 0;

                // Check how many players are currently respawning unless they are either teammates or dead
                with (oPlayer)
                {
                    if (other.enemy_invince_check[player - 1] != -1 && (!clone && !custom_clone || player == 5))
                    {
                        invince_count += (state == PS_RESPAWN || invince_time > 0);
                    }
                }
            }

            // Deplete meter if:
            // - can hit at least one enemy
            if (invince_count < enemy_count || playtest_active)
            {
                meter -= 1 / meter_decrease_rate;
            }
        }
    }

    // Handle sparking state
    if (is_sparking)
    {
        charge_dmg_tick--;
        if (charge_dmg_tick == 0)
        {
            charge_dmg_tick = 20;

            // Determine if there are valid enemies
            var can_hit_enemy = (invince_count < enemy_count);

            // Apply self-damage only if:
            // - The player does NOT have Rune G, AND
            // - There are valid enemies to hit
            if (!has_rune("C") && can_hit_enemy && !is_super)
            {
                take_damage(player, -1, 1); // Apply self-damage
            }
        }
    }

    // Handle guardian state
    if (is_guardian)
    {
        guardian_hud_timer--;
        guardian_hud_start_frame++;
        if (guardian_hud_timer < 0)
        {
            guardian_hud_timer = 0;
            guardian_hud_start_frame = 8;
        }
    }
}


//Sprite Change
if (!is_sparking || !is_guardian || !is_super) 
{	
	set_victory_portrait(sprite_get("portrait"));
	//spawn_area_effect(x - 20 * spr_dir, y - 60, 40, 35, 1, -45 + (random_func(0, 90, true)), 0, 1, 1, -1);
	//spawn_hit_fx(x + (random_func(1, 9, true) - 4.5) * 8, y - random_func(2, 9, true) * 8, fx_sparking);
	set_skin("0");
	wait_time = 500;  
	wait_anim_lengths = [180, 160, 220, 140, 140];
	idle_anim_speed = 0.15;
	crouch_anim_speed = 0.1;
	if (has_rune("A")){
		dash_speed = 7.5;
		air_max_speed = 6;
		air_accel = 0.4;
		walk_speed = 4;
		initial_dash_speed = 8;
		dash_turn_accel = 1.8;
		dash_turn_time = 8;		
	}
	else{
		dash_speed = 6.5;
		air_max_speed = 4;
		air_accel = 0.3;
		walk_speed = 3.25;
		initial_dash_speed = 7;
		dash_turn_accel = 1.5;
		dash_turn_time = 14;		
	}
	//Saya's Extra Wait Animations (Thanks Reaver)
	if sprite_index != wait_sprite{
	    var waitanim = random_func(0, array_length(wait_anim_lengths), true);
	    wait_length = wait_anim_lengths[waitanim];
	    wait_sprite = sprite_get("wait" + string(waitanim));
	}
}

if (is_sparking) 
{
	if (state == PS_DASH)
	{
		if !(get_gameplay_time()%10)spawn_area_effect(x + 10 * spr_dir, y - 80, 5, 20, 3, 1, 0, 0, spr_dir, 1, 0, 3*spr_dir);
		if !(get_gameplay_time()%20)spawn_area_effect(x - 10 * spr_dir, y - 65, 5, 10, 3, 1, 0, 0, spr_dir, -1, 0, 2*spr_dir);
	}
	if (state != PS_DASH)	
	{
		if !(get_gameplay_time()%60)spawn_area_effect(x - 30 * spr_dir, y - 60, 0, 0, 0, 1, 0, 1, spr_dir, -1);
		if !(get_gameplay_time()%40)spawn_area_effect(x - 1, y - 60, 10, 25, 1, (random_func(0, 15, true)), 0, 0, 0, -1);		
	}
	set_victory_portrait(sprite_get("portrait_spark"));
	set_skin("1");	
	wait_time = 200;
	idle_anim_speed = 0.2;
	crouch_anim_speed = 0.15;
	wait_anim_lengths = [80, 170, 90];
	if (has_rune("A")){
		dash_speed = 8;
		air_max_speed = 6.5;
		air_accel = 0.5;
		walk_speed = 5;
		initial_dash_speed = 8;
		dash_turn_accel = 2;
		dash_turn_time = 7;		
	}
	else{
		dash_speed = 7.5;
		air_max_speed = 6;
		air_accel = 0.4;
		walk_speed = 4;
		initial_dash_speed = 8;
		dash_turn_accel = 1.8;
		dash_turn_time = 8;		
	}
	
	//Saya's Extra Wait Animations (Thanks Reaver)
	if sprite_index != wait_sprite{
	    var waitanim = random_func(0, array_length(wait_anim_lengths), true);
	    wait_length = wait_anim_lengths[waitanim];
	    wait_sprite = sprite_get("1_wait" + string(waitanim));
	}	
}

if (is_guardian) 
{
	if (state == PS_DASH)
	{
		if !(get_gameplay_time()%10)spawn_area_effect(x - 20 * spr_dir, y - 80, 5, 20, 8, 1, 0, 0, spr_dir, 1, 0, 3*spr_dir);
		if !(get_gameplay_time()%20)spawn_area_effect(x - 10 * spr_dir, y - 65, 5, 10, 8, 1, 0, 0, spr_dir, -1, 0, 2*spr_dir);
	}
	if (state != PS_DASH)	
	{
		if !(get_gameplay_time()%60)spawn_area_effect(x - 30 * spr_dir, y - 60, 20, 0, 6, 1, 0, 1, spr_dir, -1);
		if !(get_gameplay_time()%40)spawn_area_effect(x - 1, y - 60, 20, 25, 7, (random_func(0, 15, true)), 0, 0, spr_dir, -1);		
	}
	set_victory_portrait(sprite_get("portrait_guard"));
	set_skin("2");	
	wait_time = 200;
	idle_anim_speed = 0.14;
	crouch_anim_speed = 0.1;
	wait_anim_lengths = [128, 140, 92, 92];
	if (has_rune("A")){
		dash_speed = 8;
		air_max_speed = 6.5;
		air_accel = 0.5;
		walk_speed = 5;
		initial_dash_speed = 8;
		dash_turn_accel = 2;
		dash_turn_time = 7;		
	}
	else{
		dash_speed = 7.5;
		air_max_speed = 6;
		air_accel = 0.4;
		walk_speed = 4;
		initial_dash_speed = 8;
		dash_turn_accel = 1.8;
		dash_turn_time = 8;		
	}
	
	//Saya's Extra Wait Animations (Thanks Reaver)
	if sprite_index != wait_sprite{
	    var waitanim = random_func(0, array_length(wait_anim_lengths), true);
	    wait_length = wait_anim_lengths[waitanim];
	    wait_sprite = sprite_get("2_wait" + string(waitanim));
	}	
}

if (is_super) 
{
	if (state == PS_DASH)
	{
		if !(get_gameplay_time()%10)spawn_area_effect(x + 10 * spr_dir, y - 80, 5, 20, 3, 1, 0, 0, spr_dir, 1, 0, 3*spr_dir);
		if !(get_gameplay_time()%20)spawn_area_effect(x - 10 * spr_dir, y - 65, 5, 10, 3, 1, 0, 0, spr_dir, -1, 0, 2*spr_dir);
	}
	if (state != PS_DASH)	
	{
		if !(get_gameplay_time()%60)spawn_area_effect(x - 30 * spr_dir, y - 60, 0, 0, 0, 1, 0, 1, spr_dir, -1);
		if !(get_gameplay_time()%40)spawn_area_effect(x - 1, y - 60, 10, 25, 1, (random_func(0, 15, true)), 0, 0, 0, -1);		
	}
	
	if (is_attacking) && (attack != AT_DSPECIAL || sonic_rainbowring_atk) set_skin("1");
	else set_skin("3");	
	
	if (attack == AT_TAUNT) set_skin("3");
	wait_time = 0;
	idle_anim_speed = 0.2;
	crouch_anim_speed = 0.15;
	wait_anim_lengths = [80, 170, 90];
	dash_speed = 9.5;
	air_max_speed = 8;
	air_accel = 0.5;
	walk_speed = 6;
	initial_dash_speed = 9;
	dash_turn_accel = 2.5;
	dash_turn_time = 6;
	
	if (state == PS_DASH || state == PS_WALK || state == PS_IDLE)
	{
		float_timer += float_speed; 
		if (float_timer > 2 * pi) float_timer -= 2 * pi; 
		
		var float_offset = sin(float_timer) * float_amplitude; 
		draw_y = base_draw_y + float_offset; 	
	}

	
	is_guardian = false;
	is_sparking = false;
}

// Override air stats if parried during Uspecial in Install
if (was_parried && attack == AT_USPECIAL && free) {
    air_max_speed = 4;
    air_accel = 0.3;
}

init_shader();

////////////////////////////////////////////////////////////////// MISC. //////////////////////////////////////////////////////////////////
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
with (hit_fx_obj) if (player == other.player) 
{
    if ("spawned_effects" not in self)
    {
        //unique hit fx
        if (hit_fx == other.hfx_small) with (other)
        {
            other.uses_shader = false;

            var fg_fx = spawn_hit_fx(other.x, other.y, hfx_small_r);
            fg_fx.depth = depth + 1;
            fg_fx.draw_angle = random_func(0, 30, true)*12;
            fg_fx.uses_shader = false;

        }
        if (hit_fx == other.hfx_medium) with (other)
        {
            other.uses_shader = false;

            var fg_fx = spawn_hit_fx(other.x, other.y, hfx_medium_r);
            fg_fx.depth = depth + 1;
            fg_fx.draw_angle = random_func(0, 30, true)*12;
            fg_fx.uses_shader = false;

        }
        if (hit_fx == other.hfx_big) with (other)
        {
            other.uses_shader = false;

            var fg_fx = spawn_hit_fx(other.x, other.y, hfx_big_r);
            fg_fx.depth = depth + 1;
            fg_fx.draw_angle = random_func(0, 30, true)*12;
            fg_fx.uses_shader = true;

        }
        if (hit_fx == other.hfx_grab) with (other)
        {
            other.uses_shader = false;

            var fg_fx = spawn_hit_fx(other.x, other.y, hfx_grab_r);
            fg_fx.depth = depth + 1;
            fg_fx.uses_shader = true;

        }        
    }
}
//NOTE: KEEP THIS SECTION AT THE BOTTOM OF UPDATE.GML
//unless you are adding #defines, which should be at the bottom
if (uses_custom_dusts) custom_dust_effects();
prep_hitboxes();


//custom hitbox colors system (by @SupersonicNK)
#define prep_hitboxes
{
    //Applies the hitbox sprites and prepares them to be drawn (with color!)
    with (pHitBox) if (orig_player_id == other && "dont_color" not in self) {
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
#define set_skin(skin)
///Sets the active skin. You can supply a name or an index.
var obj = (object_index != oPlayer && object_index != oTestPlayer) ? player_id : id;
with obj {
    if (is_string(argument[0])) {
        //_ssnksprites.skin_active = array_find_index(_ssnksprites.skins,skin);
        var sskin = -1;
        if argument[0] in _ssnksprites.skins {
            _ssnksprites.skin_active = variable_instance_get(_ssnksprites.skins, argument[0])[@3];
        }
        else print(`Skin ${skin} not found.`);
    } else if (is_number(argument[0])) {
        
        if (_ssnksprites.skin_active >= array_length(_ssnksprites.skins_n)) print(`${skin} is out of bounds of the skin array. [0..${array_length(_ssnksprites.skins_n)-1}] inclusive. (-1 to disable skin.)`);
        else _ssnksprites.skin_active = skin;
    }
}
#define spawn_area_effect
/// spawn_area_effect(dx, dy, area_width, area_height, effect_id, angle = 1, seed = 0, follow_player = 0, dir = 1, depth_setting = -1, vsp = 0, hsp = 0;)
var dx = argument[0], dy = argument[1], area_width = argument[2], area_height = argument[3], effect_id = argument[4];
var angle = argument_count > 5 ? argument[5] : 1;
var seed = argument_count > 6 ? argument[6] : 0;
var follow_player = argument_count > 7 ? argument[7] : 0;
var dir = argument_count > 8 ? argument[8] : 1;
var depth_setting = argument_count > 9 ? argument[9] : -1;
var vsp = argument_count > 10 ? argument[10] : 0;
var hsp = argument_count > 11 ? argument[11] : 0;;

/* effect ids:
0 - vfx_sparking_big
1 - vfx_sparking_small1
2 - vfx_sparking_small2
3 - vfx_sparking_run
4 - vfx_guardian_big1
5 - vfx_guardian_big2
6 - vfx_guardian_small1
7 - vfx_guardian_small2
8 - vfx_guardian_run
*/
var fx_list = [vfx_sparking_big, vfx_sparking_small1, vfx_sparking_small2, vfx_sparking_run, vfx_guardian_big1, vfx_guardian_big2, vfx_guardian_small1, vfx_guardian_small2, vfx_guardian_run];
dx += random_func(1 + seed, area_width, true) - area_width / 2;
dy += random_func(2 + seed, area_height, true) - area_height / 2;

var da = angle;

// Particle spawn
var h = spawn_hit_fx(dx, dy, fx_list[effect_id]);

h.draw_angle = da * h.spr_dir;
h.hsp = hsp;  // Horizontal speed
h.vsp = vsp;  // Vertical speed

//If dir is set to 0, randomize between left (-1) or right (1)
if (dir == 0) {
    h.spr_dir = random_func(0, 2, true) == 0 ? -1 : 1;  
} else {
    h.spr_dir = dir;  // Use the provided direction
}

// Update position based on speed
h.x += h.hsp;
h.y += h.vsp;

// Depth logic setting depth_setting to -1 makes particles spawn in front of the player(default), 1 makes it spawn behind, and 0 randomizes between in front and behind
if (depth_setting == 1) {
    h.depth = depth + 1;  
} else if (depth_setting == -1) {
    h.depth = depth - 1;  
} else if (depth_setting == 0) {
    var random_depth = random_func(0, 2, true) == 0 ? -1 : 1;
    h.depth = depth + random_depth;
}

if follow_player with h if "fx_follow_player" not in self fx_follow_player = other;

#define voice_update()
if (voice != 0)
{
	if (voice_cooldown > 0 && !hitpause) voice_cooldown--;
	
	// Galaxy detection (kill effects)
	if (hit_player_obj != noone && hit_player_obj.activated_kill_effect) {
	    stop_voice();
	    voice_cooldown = 0;
	    play_voice(["030","031"], 60);
	    hit_player_obj = noone;
	}
	
	// State-based voice handling
	if (!hitpause) {
		if (meter == meter_max && meter_voice == true){
			meter_voice = false;
			stop_voice();
			voice_cooldown = 0;
			play_voice(["120","121"], 60);
		}
	    switch (state) {
	        case PS_FIRST_JUMP: case PS_DOUBLE_JUMP: case PS_WALL_JUMP: 
	        case PS_ROLL_BACKWARD: case PS_ROLL_FORWARD: case PS_AIR_DODGE: case PS_WAVELAND:
	            // Jump or movement-based voicelines (optional)
	            break;
			
			case PS_TECH_GROUND: case PS_TECH_FORWARD: case PS_TECH_BACKWARD: case PS_WALL_TECH:
                if (state_timer == 1){
	                stop_voice();
					play_voice("110", 150);	                	
                	
                }			
				break;
			
	        case PS_ATTACK_GROUND: case PS_ATTACK_AIR:
	            if (state_timer == 1 && voice_cooldown <= 0) stop_voice();
	
	            if (!hitpause) { // Handle attacks
	                switch (attack) {
	                    case AT_JAB:
	                        if (window_timer == 0) {
	                            switch (window) {
	                                case 2:
	                                    play_voice(["000", "001", "002", "003"], 100);
	                                    break;
	                                case 10:
	                                    voice_cooldown = 0;
	                                    play_voice(["010", "011","012","013","015"], voice_cooldown_set);
	                                    break;
	                            }
	                        }
	                        break;
	
	                    case AT_UTILT:
	                        if (window == 1 && window_timer == 0) play_voice(["003"], voice_cooldown_set);
	                        break;
	                        
                        case AT_FTILT:
                        	if (window == 2 && window_timer == 0) play_voice(["001","002"], 100);
                    		 break;
                    		 
                    		 
                        case AT_DATTACK:
                        	if (window == 2 && window_timer == 0) play_voice(["010","012"], 100);
                    		 break;  
                    		 
                        case AT_DAIR:
                        	if (window == 2 && window_timer == 0) play_voice(["013","015"], 100);
                    		 break;                    		 
	
	                    case AT_FAIR:
	                        if (window_timer == 0) {
	                            switch (window) {
	                                case 4:
	                                    voice_cooldown = 0;
	                                    play_voice(["014", "010"], voice_cooldown_set);
	                                    break;
	                            }
	                        }
	                        break;
	
	                    case AT_NSPECIAL: case AT_NSPECIAL_AIR:
	                        if (window_timer == 1 && window == 5) play_voice(["130", "132"], 80);	
	                        break;
	                        
	                    case AT_EXTRA_2:
	                        if (window_timer == 1 && window == 5) play_voice(["130", "132"], 80);	
	                        break;	                        
	                        
	                    case AT_DSPECIAL:
	                        if (window_timer == 0) {
	                            switch (window) {
	                                case 4: case 11: //sparking and guardian transformation
	                                    play_voice("080", voice_cooldown_set_100);
	                                    break;
	                                    
	                                case 6: //charge
	                                   play_voice("050", 100);
	                                   break;
	                            }
	                        }
	                        break;
	                        
	                    case AT_DSPECIAL_2:
	                        if (window_timer == 0) {
	                            switch (window) {
	                                case 3:
	                                    play_voice(["090", "003"], voice_cooldown_set);
	                                    break;
	                            }
	                        }
	                        break;		                        
	
	                    case AT_USPECIAL:
	                    	if (window_timer == 0){
	                    		switch (window){
	                    			case 3:
	                    				play_voice(["011", "015"], 0);
	                    				break;
	                    		}
	                    	}
	                    	if (window == 6 && window_timer == 1){
	                    		stop_voice();
				                play_voice(["130", "132"], voice_cooldown_set_100);		                    		
	                    	}	                    	
	                        break;
	
	                    case AT_FSPECIAL: case AT_FSPECIAL_AIR:
	                        if (window == 1 && window_timer == 0) play_voice(["090", "091", "020", "021"], 140);
	                        break;
	                        
	                    case AT_FSTRONG:
	                    	if (window_timer == 0){
	                    		switch (window){
	                    			case 26: //normal
	                    				play_voice(["011", "014"], voice_cooldown_set);
	                    				break;
	                    		}
	                    	}
	                    	if (window == 6 || window == 11 || window == 16 && window_timer == 1){
                				stop_voice();	   
                				voice_cooldown = 0;
				                play_voice(["130", "132"], voice_cooldown_set_100);		                    		
	                    	}
	                        break;
	
	                    case AT_USTRONG:
	                    	if (window_timer == 0){
	                    		switch (window){
	                    			case 2:
	                    				play_voice(["015", "012"], 0);
	                    				break;
	                    		}
	                    	}
	                        break;
	
	                    case AT_TAUNT:
	                    	if (window_timer == 0){
	                    		switch (window){
	                    			case 1: //base
	                    				play_voice("072", 100);
	                    				break;
	                    			case 4:
	                    				play_voice("070", 100);
	                    				break;	                    			
									case 9: //sparking
	                    				play_voice("073", 100);
	                    				break;
	                    				
	                    			case 13: case 16:
	                    				play_voice("071", 100);
	                    				break;
	                    		}
	                    	}
	                        break;
						case 2: //intro
							if (window == 2 && window_timer == 0) play_voice("100", voice_cooldown_set);				
							break;	                        
	
	                }
	            }
	            break;
	
	        case PS_HITSTUN:
	            if (state_timer == 1) {
	                stop_voice();
	                var dist = point_distance(0, 0, old_hsp, old_vsp);
	
	                if (dist > 17) play_voice(["062", "063"], voice_cooldown_set);
	                else if (dist > 10) play_voice(["060", "061"], voice_cooldown_set);
	            }
	            break;
	
	        case PS_RESPAWN: case PS_DEAD:
	            if (state_timer == 1) {
	                stop_voice();
	                voice_cooldown = 0;
	                play_voice(["040", "041", "042"], 0);
	            }
	            break;
	
	        default:
	            break;
	    }
	}
	
	// Ensure no overlapping voiceclips
	if (cur_voiceclip[0] != cur_voiceclip[1]) {
	    sound_stop(cur_voiceclip[1]);
	    cur_voiceclip[1] = cur_voiceclip[0];
	}	
}

#define play_voice (_string_array, _cooldown)
if (voice == 1) { // Only play voice if the system is active
    var arr = _string_array;
    if (!is_array(arr)) arr = [_string_array];

    if (voice_cooldown <= 0) {
        var num = floor(random_func(6, array_length(arr), false));
        cur_voiceclip[0] = sound_play(sound_get("vc" + string(arr[num])));
        voice_cooldown = _cooldown;
    }
}
#define stop_voice()
sound_stop(cur_voiceclip[1]);