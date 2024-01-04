//update.gml

///////////////////////////////////////////////////////// USEFUL CUSTOM VARIABLES /////////////////////////////////////////////////////////

//initial check stuff
hbox_view = get_match_setting(SET_HITBOX_VIS);
is_attacking = (state == PS_ATTACK_GROUND || state == PS_ATTACK_AIR);
is_dodging = (hurtboxID.dodging);
strong_pressed = (left_strong_pressed || right_strong_pressed || up_strong_pressed || down_strong_pressed);
game_time = get_gameplay_time();
exist_timer ++;
if (hit_player_lock > 0) hit_player_lock = 0;

if (!playtest_active)
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

    hit_window = window;
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

    if (trick_rune_active && prev_trick != -1) prev_trick = -1; //reset trick combos
}

//grab logic
if (my_grab_id != noone) //if you have grabbed someone
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
if (game_time == 4 && has_intro && !is_fake_x) set_attack(set_up_super_colors ? 48 : AT_INTRO);
if (game_time == 5 && state == PS_SPAWN && set_up_super_colors) //force super sprites and colors if it should be active and the intro didn't start
{
    uses_super_colors = true;
    uses_super_sprites = true;
    super_col_lerp_time = super_col_lerp_time_max;
}

//////////////////////////////////////////////////////// CHARACTER SPECIFIC UPDATE /////////////////////////////////////////////////////////

//sonic gradual speed up mechanic
do_sonic_physics();

tempvar = 0;
repeat (array_length(boost_stat_changes))
{
    if (boost_stat_changes[tempvar][0] != "air_max_speed") //filter out air_max_speed
    {
        variable_instance_set(self, boost_stat_changes[tempvar][0], boost_stat_changes[tempvar][(is_super || boost_mode) + 1]);
        if (is_super) variable_instance_set(self, boost_stat_changes[tempvar][0], boost_stat_changes[tempvar][is_super + 2]);
    }
    tempvar ++;
}

hugging_wall = (position_meeting(x + (spr_dir ? 19 : -20), y - 16, asset_get("par_block")) || "touching_childe_wall" in self && touching_childe_wall);

//////////////////// AIR TRICKS

if (trick_input_time > 0 && !hitpause)
{
    //decides which trick too use
    if (up_down) next_trick = 1;
    else if (right_down) next_trick = 2;
    else if (down_down) next_trick = 3;
    else if (left_down) next_trick = 4;
    else if (joy_pad_idle) next_trick = 0;

    //limitations
    if (!trick_rune_active || next_trick != prev_trick && (is_attacking || attack == AT_TAUNT_2 && (window == 2 || window == 3)) )
    {
        //input
        if (taunt_pressed)
        {
            if (attack == AT_FSPECIAL) can_fspec = false;

            destroy_hitboxes();
            attack_end();
            set_attack(AT_TAUNT_2);
            state_timer = 0;
            draw_x = 0;
            draw_y = 0;
            spr_angle = 0;
            hurtboxID.sprite_index = get_attack_value(AT_TAUNT_2, AG_HURTBOX_SPRITE);
            airdash_stats = [1, 0, 0, -1];

            sound_play(asset_get("sfx_swipe_medium1"), false, 0, 0.6, 0.8 + random_func(8, 10, true)/10)

            if (trick_rune_count == 0 || !trick_rune_active) vsp = -13;
            //vsp = vsp > -2 ? -10 : vsp - 5;
            // ^ this code makes it so sonic adds to his already existing speed

            //trick rune stuff
            cur_trick = next_trick;
            trick_rune_count ++;
            prev_trick = cur_trick;

            //technical stuff
            trick_input_time = 0;
        }
    }
}
//cooldown stuff
if (trick_input_time > 0) trick_input_time --;

//////////////////// COMBO COUNTER

if (combo_timer > 0)
{
    combo_timer --;
    if (instance_exists(hit_player_obj) && (hit_player_obj.state == PS_DEAD || hit_player_obj.state == PS_RESPAWN) && !doing_trick_combo_chain) combo_timer = 0;
}
else
{
    if (comboing)
    {
        if (combo_hits >= combo_display_hits[0])
        {
            //display compliment text
            if (cur_combo_text <= -1) combo_text_display_time = combo_display_time_max;
            
            //add boost
            //math: single hit multiplier * 1 combo tier higher * combo end multiplier (different based on if sonic tricked or not)
            for (var i = array_length(combo_display_hits)-1; i >= 0; i--) if (combo_hits >= combo_display_hits[i])
            {
                cur_combo_text = i;
                if (has_superform && trick_combo_end)
                {
                    var temp_math = ring_combo_gain[i];
                    rings_cur += temp_math;
                    sound_play(sound_get("sfx_ringcombo"));
                }
                if (!has_superform)
                {
                    var temp_math = (i+1) * (trick_combo_end ? boost_combotrick_mult[boost_mode] : boost_comboend_mult[boost_mode]);
                    boost_cur += temp_math;
                }
                combo_voiceline = i;
                break;
            }

            //if (has_superform && trick_combo_end) sound_play(sound_get("sfx_ringcombo")); //ringbox sound lol
        }
        else if (combo_hits < combo_display_hits[0] && trick_combo_end) //if sonic didn't do enough hits for it to count as compliment worthy he will get boost based on hits
        {
            var temp_math = has_superform ? 0 : boost_comboend_mult[boost_mode] * combo_hits;

            if (!has_superform) boost_cur += temp_math;
            else if (trick_combo_end) rings_cur += temp_math;
        }

        //setting up the number to show when adding boost
        if (temp_math > 0)
        {
            if (array_find_index(combo_boost_display, noone) > -1) //add combo display view
            {
                var temp_index = array_find_index(combo_boost_display, noone);
                combo_boost_display[temp_index] = temp_math;
            }
            else array_push(combo_boost_display, temp_math);

            if (array_find_index(combo_display_time, noone) > -1) //reset timers/add new ones
            {
                var temp_index = array_find_index(combo_display_time, noone);
                combo_display_time[temp_index] = combo_display_time_max;
            }
            else array_push(combo_display_time, combo_display_time_max);
        }

        if (lang != 0) voice_array (2); //combo end voiceclip

        combo_hits = 0;
        comboing = false;
        trick_combo_end = false;
    }
}

//boost count add timer management
tempvar = 0;
repeat (array_length(combo_display_time))
{
    if (combo_display_time[tempvar] > 0) combo_display_time[tempvar] --;
    else
    {
        combo_boost_display[tempvar] = noone;
        combo_display_time[tempvar] = noone;
    }
    tempvar ++;
}

if (combo_text_display_time > 0) combo_text_display_time --;
else cur_combo_text = -1;

//////////////////// BOOST MODE / SUPER FORM RUNE

if (has_superform)
{
    //ring counter
    if (rings_cur <= 0) rings_cur = 0;
    if (rings_cur >= rings_max) rings_cur = rings_max;

    //FUNCTIONAL LIVES SYSTEM?? (if i add this i think i'll make it so it either only works in specific gamemodes or just give everyone a ring counter)
    /*
        for (var i = 1; i <= array_length(ring_life_caps_reached)-1; i ++) if (rings_cur >= 100 * i)
        {
            if (ring_life_caps_reached[i-1] == false)
            {
                sound_play(sound_get("sfx_1up"))
                set_player_stocks(player, get_player_stocks(player) + 1);
                ring_life_caps_reached[i-1] = true;
            }
        }
    */

    if (rings_cur == 0) //0 rings indicator
    {
        ring_col_time += ring_col_up ? 1 : -1;
        if (ring_col_time >= ring_col_time_max) ring_col_up = false;
        if (ring_col_time <= 0) ring_col_up = true;

        var r = lerp(color_get_red(ring_col[0]), color_get_red(ring_col[1]), ring_col_time/ring_col_time_max);
        var g = lerp(color_get_green(ring_col[0]), color_get_green(ring_col[1]), ring_col_time/ring_col_time_max);
        var b = lerp(color_get_blue(ring_col[0]), color_get_blue(ring_col[1]), ring_col_time/ring_col_time_max);
        ring_col_output = make_color_rgb(r, g, b);
    }

    //super form gimmick
    if (is_super)
    {
        //he actually turns back to normal on the platform
        if (state == PS_RESPAWN && (visible || get_match_setting(SET_PRACTICE)) || state == PS_DEAD) is_super = false;
        else //sparkles vfx
        {
            spawn_hit_fx(
                x + (random_func(1, 9, true) - 4.5) * 8,
                y - random_func(2, 9, true) * 8,
                fx_sparkle
            );
        }

        super_time ++;
        if (!is_attacking || attack != 3)
        {
            if (super_time % 30 == 0) rings_cur --;
            if (rings_cur <= 0)
            {
                if (is_super)
                {
                    if (lang != 0 && state != PS_DEAD && state != PS_RESPAWN) voice_array(8); //super sonic end voiceclip
                    is_super = false;
                    outline_color = temp_outline_color;
                }
            }
        }
    }
    else if (!is_super && (!is_attacking || attack != 48))
    {
        super_time = 0;
        if (super_col_lerp_time > 0 + ("super_form_active" in self && super_form_active) * 48) super_col_lerp_time -= 3;
    }

    //transformation
    if (rings_cur >= 50 && !is_super && !is_attacking && taunt_pressed) set_attack(48);

    //the button will not work if the super sonic rune is equipped
    if ("super_form_active" not in self || !super_form_active) uses_super_colors = is_super;
}
else //boost mechanic
{
    boost_cur = clamp(boost_cur, 0, boost_max);

    //boost mode activate
    if (boost_cur >= boost_max && !boost_mode)
    {
        sound_play(asset_get("mfx_star"));
        sound_play(asset_get("sfx_icehit_medium2"));
        var fx = spawn_hit_fx(x, y-char_height/1.75, fx_windhit[1]);
        //fx.spr_dir = 1;
        //fx.draw_angle = point_direction(0, 0, hitpause ? old_hsp : hsp, hitpause ? old_vsp : vsp);

        white_flash_timer = 20 + (hitstop * hitpause);
        boost_mode = true;
        if (is_darksonic && "super_form_active" not in self)
        {
            uses_super_colors = true;
            super_col_lerp_time = super_col_lerp_time_max;
            user_event(1);
        }
    }
    else if (boost_cur <= 0 && boost_mode)
    {
        if (is_darksonic && "super_form_active" not in self) uses_super_colors = false;
        boost_mode = false;
    }

    if (is_darksonic && !boost_mode && "super_form_active" not in self) //fade back to normal form (dark sonic alt)
    {
        if (super_col_lerp_time > 0) super_col_lerp_time -= 3;
        else if (super_col_lerp_time < 0) super_col_lerp_time = 0;
    }

    //deplete boost after X amount of time passed
    if (boost_cur > 0)
    {
        if (!playtest_active)
        {
            //checks how many players are curently respawning unless they are either teammates or they are dead
            with (oPlayer) if (other.enemy_invince_check[player-1] != -1 && (!clone && !custom_clone || player == 5))
            {
                other.enemy_invince_check[player-1] = (state == PS_RESPAWN || invince_time > 0);
            }
            var invince_count = 0;
            tempvar = 0;
            repeat (array_length(enemy_invince_check))
            {
                if (enemy_invince_check[tempvar] == 1) invince_count ++;
                tempvar ++;
            }
        }

        if (boost_trick_delay > 0) boost_trick_delay --;
        
        //deplete boost if:
        //  - sonic is in boost mode
        //  - not doing a combo
        //  - can hit at least one enemy
        //  - using final smash (+ having the post effect)
        if (
            (boost_mode || !comboing) && (invince_count < enemy_count || playtest_active) &&
            (!is_attacking || attack != 49) && blast_post_timer == 0 && boost_trick_delay == 0
        )
        {
            boost_cur -= 1/boost_decrease_rate[boost_mode];
        }
    }


    //boost debug
    if (get_match_setting(SET_PRACTICE) && !free && down_down && taunt_pressed && game_time > 130)
    {
        test_boost = !test_boost;
        set_state(prev_state);
        if (!test_boost) boost_cur = 0;
        clear_button_buffer(PC_TAUNT_PRESSED);
    }
    if (test_boost) boost_cur = boost_max;
}

//////////////////// ATTACK SPECIFIC

if (is_attacking)
{
    switch (attack)
    {
        case AT_DSPECIAL:
            if (window == 5 && window_timer == 0 && !free && !hitpause)
            {
                sound_stop(sound_get("sfx_bounce"));
                sound_play(sound_get("sfx_bounce"));
            }
            break;
        case AT_DSTRONG:
			if (window == 3 && window_timer == 0)
            {
	            sound_stop(sound_get("sfx_charge_loop"));
                sound_play(sound_get("sfx_charge_release"));
            }
            break;
        case AT_NSPECIAL:
            //homing stuff
            if (!has_multihome_rune)
            {
                if (window == 2)
                {
                    if (special_pressed && window_timer > 0) //early release
                    {
                        nspec_early = true;
                        window_timer = window_end;
                    }

                    prev_homing_target = homing_target;

                    if (window_timer < window_end) //check homing
                    {
                        homing_target = (check_homing_range(false) <= 0) ? noone : check_homing_range(false);
                        with (oPlayer) if (get_player_team(player) != get_player_team(other.player))
                        {
                            if (self == other.homing_target) bar_sonic_reticle_owner = other;
                            else bar_sonic_reticle_owner = noone;
                        }
                    }
                    
                    if (prev_homing_target != homing_target)
                    {
                        sound_play(homing_target != noone ? sound_get("sfx_homingattack_reticle") : sound_get("sfx_homingattack_reticle_gone"));
                    }
                }
                if (window == 3 && window_timer == 0)
                {
                    if (instance_exists(homing_target))
                    {
                        var home_speed = floor(point_distance(x, y, homing_target.x, homing_target.y)/50)
                        set_window_value(attack, 7, AG_WINDOW_LENGTH, 8 + home_speed);
                        homing_values[0] = point_distance(x, y, homing_target.x, homing_target.y)/get_window_value(attack, 7, AG_WINDOW_LENGTH);
                        homing_values[1] = point_direction(x, y-char_height/1.75, homing_target.x, homing_target.y-homing_target.char_height/1.75);

                        if (nspec_early)
                        {
                            set_hitbox_value(attack, 2, HG_ANGLE_FLIPPER, 0);
                            set_hitbox_value(attack, 2, HG_BASE_KNOCKBACK, 4);
                            set_hitbox_value(attack, 2, HG_KNOCKBACK_SCALING, 0.2);
                            set_hitbox_value(attack, 2, HG_BASE_HITPAUSE, 6);
                            set_hitbox_value(attack, 2, HG_HITPAUSE_SCALING, 0.2);
                        }
                        else
                        {
                            reset_hitbox_value(attack, 2, HG_ANGLE_FLIPPER);
                            reset_hitbox_value(attack, 2, HG_BASE_KNOCKBACK);
                            reset_hitbox_value(attack, 2, HG_KNOCKBACK_SCALING);
                            reset_hitbox_value(attack, 2, HG_BASE_HITPAUSE);
                            reset_hitbox_value(attack, 2, HG_HITPAUSE_SCALING);
                        }

                        window = 7;
                        window_timer = -1;
                    }
                }
            }
            else
            {
                if (window == 2)
                {
                    check_homing_range(true); //homing setup (needs a limiter too)

                    //charge changes how many enemies can be aimed at
                    multihome_limit = floor(window_timer/window_end * multihome_limit_max) + 1;

                    set_hitbox_value(attack, 2, HG_BASE_HITPAUSE, 6);
                    set_hitbox_value(attack, 2, HG_HITPAUSE_SCALING, 0.2);
                    set_hitbox_value(attack, 2, HG_HIT_SFX, asset_get("sfx_blow_medium3"));

                    //set grid size based on how many players sonic can home to
                    ds_grid_resize(multihome_grid, 2, array_length(multihome_targets_temp));

                    //set up DS list
                    for (var i = 0; i < array_length(multihome_targets_temp); i ++)
                    {
                        ds_grid_set( //player ID
                            multihome_grid, 0, i,
                            multihome_targets_temp[i]
                        )
                        ds_grid_set( //distance from sonic
                            multihome_grid, 1, i,
                            multihome_targets_temp[i] == noone ? undefined : distance_to_object(multihome_targets_temp[i])
                        );
                    }
                    ds_grid_sort(multihome_grid, 1, true); //after all the ds_grid values were set, sort them, leaving all the garbage data in the front

                    for (var i = 0; i < array_length(multihome_targets_temp); i ++)
                    {
                        if (multihome_grid[# 0, i] == noone) next_multihome_target ++; //skip garbage data
                        with (oPlayer) if (get_player_team(player) != get_player_team(other.player)) //spawn reticle + play sound
                        {
                            if (other.multihome_grid[# 0, i] == self && other.multihome_grid[# 0, i].bar_sonic_reticle_owner == noone)
                            {
                                with (other) sound_play(sound_get("sfx_homingattack_reticle"));
                                bar_sonic_reticle_owner = other;
                            }
                        }
                    }

                    if (!special_down) //start homing chain
                    {
                        window = 3;
                        window_timer = -1;
                    }
                }
                if (window == 3 && window_timer == 0)
                {
                    if (next_multihome_target < multihome_limit && ds_grid_height(multihome_grid) > 0)
                    {
                        var next_target = multihome_grid[# 0, next_multihome_target];
                        if (!instance_exists(next_target)) exit;

                        var home_speed = floor(point_distance(x, y, next_target.x, next_target.y)/50)
                        set_window_value(attack, 7, AG_WINDOW_LENGTH, 8 + home_speed);
                        homing_values[0] = point_distance(x, y, next_target.x, next_target.y)/get_window_value(attack, 7, AG_WINDOW_LENGTH);
                        homing_values[1] = point_direction(x, y-char_height/1.75, next_target.x, next_target.y-next_target.char_height/1.75);

                        //reset hit values if it's the last homing attack in the chair
                        if (next_multihome_target == min(multihome_limit, array_length(multihome_targets_temp))-1)
					    {
					    	reset_hitbox_value(attack, 2, HG_BASE_HITPAUSE);
                            reset_hitbox_value(attack, 2, HG_HITPAUSE_SCALING);
                            reset_hitbox_value(attack, 2, HG_HIT_SFX);
					    }

                        //start homing attack chain
                        window = 7;
                        window_timer = -1;
                    }
                }
            }

            if (window > 7 || window < 7 && window > 2) with (oPlayer) if ("bar_sonic_reticle_owner" in self) bar_sonic_reticle_owner = noone;
            if (window > 7) airdash_stats[3] = -1;
            break;
    }
}
else
{
    if (fair_fx_on_landlag && state == PS_LANDING_LAG && state_timer == 0 && attack == AT_FAIR)
    {
        spawn_hit_fx(x, y, fx_fair);
        fair_fx_on_landlag = false;
    }
	sound_stop(sound_get("sfx_charge_loop"));
    sound_stop(sound_get("sfx_charge_lightspeed_start"));
    sound_stop(sound_get("sfx_charge_lightspeed_loop"));

    with (oPlayer) if ("bar_sonic_reticle_owner" in self) bar_sonic_reticle_owner = noone;
    if (!runeB_bolting) airdash_stats = [1, 0, 0, -1];

    if (attack == AT_TAUNT_2 && state == PS_LANDING_LAG && state_timer == 0)
    {
        if (trick_rune_active) doing_trick_combo_chain = false;
        trick_combo_end = true;
        combo_timer = 0;
    }
}
if (!is_attacking || attack != AT_NSPECIAL) with (oPlayer) if ("bar_sonic_reticle_owner" in self) bar_sonic_reticle_owner = noone;


//airdash vfx spawn
if (airdash_stats[3] % 6 == 0 && airdash_stats[3] > -1)
{
    var fx spawn_hit_fx(
        x + airdash_stats[1] * spr_dir,
        y - char_height/1.5 + airdash_stats[2],
        fx_airdash_aura[airdash_stats[0]-1]
    );
    fx.draw_angle = spr_dir == 1 ? point_direction(0, 0, hsp, vsp) : point_direction(hsp, vsp, 0, 0);
    if (airdash_stats[0] == 3) fx.uses_shader = false;
}

if (!has_multihome_rune)
{
    if (instance_exists(homing_target))
    {
        if (prev_homing_target != homing_target) homing_target.nspec_reticle_time = 0;
        else if (homing_target.nspec_reticle_time <= (sprite_get_number(reticle_spr)/2)-1) homing_target.nspec_reticle_time += 0.5;
    }
}
else
{
    tempvar = 0;
    repeat (min(multihome_limit, array_length(multihome_targets_temp))) if (instance_exists(multihome_grid[# 0, tempvar]))
    {
        if (multihome_grid[# 0, tempvar].nspec_reticle_time <= (sprite_get_number(reticle_spr)/2)-1) multihome_grid[# 0, tempvar].nspec_reticle_time += 0.5;
        tempvar ++;
    }
}

move_cooldown[AT_NSPECIAL] = 1 + !can_nspec; //if sonic lands a homing attack he can't do another one untill he lands
move_cooldown[AT_USPECIAL] = 1 + !can_uspec;
move_cooldown[AT_FSPECIAL] = 1 + !can_fspec;

if (fspec_supercharge > 0) fspec_supercharge --;

if (!is_attacking || attack != AT_NSPECIAL) nspec_early = false;
if (!is_attacking || attack != AT_DSPECIAL) dspec_jumps = 0;

//reset vars (maybe should be at the bottom)
if (state == PS_WALL_JUMP || state == PS_HITSTUN || was_free && !free)
{
    can_uspec = true;
    dspec_started_free = false;
    trick_input_time = 0;
    trick_rune_count = 0;
    can_spawn_trick_ring = true;
    can_nspec = true;
    attack_should_pratfall = false;
    can_fspec = true;
}
if (was_free != free) was_free = free;


/////////////////////////////////////////////////////////////// ABYSS RUNES ///////////////////////////////////////////////////////////////

//sonic wave projectile
if (has_rune("A"))
{
    with (pHitBox) if (orig_player == other.player && other.is_attacking && attack != 0 && hitbox_timer == 0 && other.runeA_lockout == 0)
    {
        if (random_func(7, other.runeA_rng_chance, true) == 0)
        {
            var set_dir = (other.is_attacking && other.attack == AT_BAIR) ? -other.spr_dir : other.spr_dir;

            sound_play(asset_get("sfx_blink_dash"))
            var hbox = create_hitbox(0, 3, x, y);
            hbox.hsp = (other.runeA_proj_speed + abs(other.new_hsp)) * set_dir;

            other.runeA_lockout = other.runeA_lockout_set;
        }
    }
    if (runeA_lockout > 0) runeA_lockout --;
}

//generating boost from being fast / bolt of lightning at max speed if super sonic
if (has_rune("B"))
{
    if (!has_superform)
    {
        if (point_distance(0, 0, hsp, vsp) > 8) //NOTE: SHOULD BE AS FAST AS THE NORMAL MAXIMUM DASH SPEED
        {
            //when not in boost mode sonic will get just over the passive decreased + any extra speed he can get
            if (!boost_mode) boost_cur += 1/(boost_decrease_rate[0]/2) + point_distance(0, 0, hsp, vsp)/50; //the higher the 50 is, the less extra he would get extra
            else boost_cur += 1/boost_decrease_rate[1]; //when in boost mode sonic will lose and gain the same amount, equalling it up
        }
    }
    else if (is_super)
    {
        if (state == PS_DASH && abs(hitpause ? old_hsp : hsp) > min_dash_spd) runeB_bolting = true;
        else
        {
            if ((state == PS_ATTACK_GROUND || state == PS_ATTACK_AIR) && state_timer == 0) airdash_stats[3] = -1;
            runeB_bolting = false;
        }

        if (runeB_bolting)
        {
            airdash_stats[0] = 3;
            airdash_stats[1] = 8;
            airdash_stats[2] = 8;
            airdash_stats[3] ++;
        }

        if (runeB_bolting)
        {
            if (runeB_hitlock == 0 && !instance_exists(runeB_hbox)) runeB_hbox = create_hitbox(0, 5, x, y);
            with (pHitBox) if (self == other.runeB_hbox) length ++;
        }
        else with (pHitBox) if (player_id == other && attack == 0 && hbox_num == 5) hitbox_timer = length;

        if (runeB_hitlock > 0 && !hitpause) runeB_hitlock --;

        //attack cancel
        if (instance_exists(hit_player_obj) && hit_player_obj.last_attack == 0 && hit_player_obj.last_hbox_num == 5 && hitstop > 0)
        {
            if (attack_pressed || strong_pressed || special_pressed)
            {
                old_hsp = get_window_value(attack, 1, AG_WINDOW_HSPEED);
                old_vsp = get_window_value(attack, 1, AG_WINDOW_VSPEED);
                hitstop = 0;
            }

            if (state == PS_DASH_STOP) set_state(PS_IDLE);
            if (attack_pressed && attack_counter == 1)
            {
                if (down_down) set_attack(AT_DTILT);
                if (up_down) set_attack(AT_UTILT);
            }
        }
    }
}

//classic spinjump on fullhop
if (has_rune("C"))
{
    if (state == PS_FIRST_JUMP) 
    {
        if (!hitpause)
        {
            if (state_timer == 1) //check if sonic did a fullhop based on his vsp
            {
                runeC_spinjump = (vsp == -jump_speed);
                if (runeC_spinjump) runeC_hbox = create_hitbox(0, 4, x, y);
            }

            //create jump hitbox
            if (runeC_spinjump && runeC_hitlock == 0 && !instance_exists(runeC_hbox)) runeC_hbox = create_hitbox(0, 4, x, y);

            //hitbox extention + hit lockout
            with (pHitBox) if (self == other.runeC_hbox) length ++;
            if (runeC_hitlock > 0) runeC_hitlock --;
        }
    }

    if (!free) runeC_spinjump = false;
}

if (has_blast)
{
    //if (blast_cur < blast_max) blast_cur ++;

    if (blast_post_timer == 0)
    {
        if (blast_cur >= blast_max)
        {
            if (!can_teamblast)
            {
                can_teamblast = true;
                sound_play(sound_get("sfx_fs_ready"))
            }
            if (blast_meter_anim_timer < blast_meter_anim_length) blast_meter_anim_timer ++;
        }
        else
        {
            can_teamblast = false;
            if (blast_meter_anim_timer > 0) blast_meter_anim_timer --;
        }
        blast_meter_go_down = (blast_meter_anim_timer >= blast_meter_anim_length/2);
    }
    
    //input stuff
    if (attack == 49)
    {
        if (special_pressed && blast_meter_ready_img == 1) blast_meter_ready_img = 2;
        else if (!special_pressed && blast_meter_ready_img == 2) blast_meter_ready_img = 3;
    }

    if (blast_post_timer > 0) blast_post_timer--;
    blast_post_cur = lerp(blast_max, 0, blast_post_timer/blast_post_deplete_time);

    if (fs_blast[4] > 0) fs_blast[4]--; //blast vfx at the end of the move
}

////////////////////////////////////////////////////////////////// MISC. //////////////////////////////////////////////////////////////////

//dashstop sound
if (state == PS_DASH_STOP && state_timer == 0) sound_play(sound_get("sfx_skid"));

//voice acting
if (lang != 0)
{
    if (voice_cooldown > 0 && !hitpause) voice_cooldown--;
    else if (voice_cooldown == 0)
    {
        var should_speak = 1//random_func(0, 2, true); //0-1
        if (should_speak == 1)
        {
            switch (state)
            {
                case PS_FIRST_JUMP: case PS_DOUBLE_JUMP: case PS_WALL_JUMP: case PS_ROLL_BACKWARD: case PS_ROLL_FORWARD: case PS_AIR_DODGE:
                case PS_WAVELAND:
                    if (state_timer == 1) voice_array(0);
                    break;
                case PS_ATTACK_GROUND: case PS_ATTACK_AIR: //attacks
                    switch (attack)
                    {
                        case AT_JAB:
                            switch (window)
                            {
                                case 1: case 4: case 7:
                                    if (window_timer == 0) voice_array(0);
                                    break;
                            }
                            break;
                        case AT_UTILT: 
                            if (window == 5 && window_timer == 0) voice_array(0);
                        case AT_FTILT: case AT_DTILT: case AT_DATTACK: case AT_NAIR: case AT_DAIR:
                            if (window == 1 && window_timer == 0) voice_array(0);
                            break;
                        case AT_USTRONG: case AT_FSTRONG: case AT_DSTRONG:
                            if (window == get_attack_value(attack, AG_STRONG_CHARGE_WINDOW)+1 && window_timer == 0) voice_array(random_func(1, 2, true));
                            break;
                        case AT_UAIR: case AT_BAIR:
                            if (window == 1 && window_timer == 6) voice_array(random_func(1, 2, true));
                            break;
                        case AT_FAIR:
                            if (window == 1 && window_timer == 6) voice_array(1);
                            break;
                        case AT_NSPECIAL:
                            if (window_timer == 0)
                            {
                                if (window == 3) voice_array(0);
                                if (window == 7) voice_array(1);
                            }
                            break;
                        case AT_FSPECIAL:
                            if (window_timer == 0)
                            {
                                if (window == 4) voice_array(0);
                                if (window == 8 && window_loops == 0) voice_array(1);
                            }
                            break;
                        case AT_DSPECIAL:
                            if (window == 2 && window_timer == window_end-1) voice_array(1);
                            break;
                        case AT_USPECIAL:
                            if (window == 2 && window_timer == 0) voice_array(0);
                            break;
                        case AT_TAUNT:
                            if (window == 1 && window_timer == 0) voice_array(9);
                            break;
                    }
                    break;
                case PS_HITSTUN:
                    if (state_timer == 1)
                    {
                        var dist = point_distance(0, 0, old_hsp, old_vsp);
                        if (dist > 15) voice_array(4);
                        else if (dist > 10) voice_array(3);
                    }
                    break;
            }
        }

        //intro line
        if (attack == AT_INTRO && window == 3 && window_timer == 0) voice_array(6);

        //sonic overdrive
        if (attack == 49 && window == 1 && window_timer == 0) voice_array(5);

        //reached 100% damage
        if (get_player_damage(player) >= 100 && !reached_100_damage)
        {
            voice_array(7);
            reached_100_damage = true;
        }
        else if (get_player_damage(player) < 100) reached_100_damage = false;

        //if a new voiceclip is playing, cut the old one
        if (cur_voiceclip[0] != cur_voiceclip[1])
        {
            sound_stop(cur_voiceclip[1]);
            cur_voiceclip[1] = cur_voiceclip[0];
        }
    }

    if (is_attacking && window_timer == window_end-1)
    {
        if (attack == 48 && window == 1) voice_array(8); //super sonic transformation
        if (attack == 3 && (window == 3 || window == 11)) voice_array(10); //outta here
    }
}

//super transformation animation
if ((state == PS_ATTACK_GROUND || state == PS_ATTACK_AIR) && attack == 48) super_transform_time ++;
else super_transform_time = 0;

//super sonic sprites set
uses_super_sprites = ((is_super || uses_super_colors) && !is_lord_x);
if (set_up_super_colors)
{
    if ((was_reloaded || playtest_active) && super_col_lerp_time < super_col_lerp_time_max) super_col_lerp_time = super_col_lerp_time_max;
    if (playtest_active) init_shader(); //should not run init shader, just the part that lerps colors
}
if (uses_super_colors && super_glow_intensity != 0) //super glow
{
    super_glow += super_glow_up ? 1 : -1;
    if (super_glow_up && super_glow >= super_glow_max || !super_glow_up && super_glow <= 0) super_glow_up = !super_glow_up;
    user_event(1);
}
//transforming will still need this, sorry for the lag spike in the intro guys
if (super_col_lerp_time != 0 && super_col_lerp_time != super_col_lerp_time_max && super_col_lerp_time != super_col_lerp_time_max*2) init_shader();

//chaos emeralds super form back to normal
if (("super_form_active" not in self || !super_form_active) && !has_superform && !is_darksonic)
{
    if (super_col_lerp_time > 0 + (set_up_super_colors) * 48) super_col_lerp_time -= 3;
    if (uses_super_colors && super_col_lerp_time < super_col_lerp_time_max) uses_super_colors = false;
}

//lord X faking it
if (is_fake_x)
{
    if (state != PS_SPAWN && state != PS_RESPAWN && state != PS_IDLE)
    {
        is_fake_x = false;
        var fx = spawn_hit_fx(x, y, hit_fx_create(sprite_get("lordX_jumpscare"), 40));
        fx.depth = depth - 1;
        fx.uses_shader = false;
        sound_play(asset_get("sfx_ice_shatter"))

        if (set_up_super_colors) //super sonic colors
        {
            uses_super_colors = true;
            super_col_lerp_time = super_col_lerp_time_max;
        }
        init_shader();
    }
}
if ("lord_x_decaying" in self) lord_x_decaying = (get_match_setting(SET_TIMER) > 0 && !get_match_setting(SET_PRACTICE) && !is_super);

//waiting animation setup
if (is_fake_x) wait_time = 0;
else if (uses_super_sprites) wait_time = 0;
else
{
    wait_time = normal_wait_time;

    match_time = [
        floor( ( (get_match_setting(SET_TIMER) == 0 || get_match_setting(SET_PRACTICE)) ? waiting_time : get_game_timer())/60/60),
        floor( ( (get_match_setting(SET_TIMER) == 0 || get_match_setting(SET_PRACTICE)) ? waiting_time : get_game_timer())/60)%60,
    ];
    if (state == PS_IDLE || state == PS_RESPAWN || state == PS_IDLE_AIR) waiting_time ++;
    else waiting_time = 0;
}

//i'm outta here - sonic will jump off after 2 minutes and 57 seconds
if (!get_match_setting(SET_PRACTICE) && !playtest_active)
{
    if (waiting_time >= 10620 && attack != 3) //set the attack
    {
        set_attack(3);
        if (uses_super_sprites) window = 10;
    }
    if (get_match_setting(SET_STOCKS) == 0 && sonic_suicide) //suicide check
    {
        if (total_players == 2) end_match(active_player_slots[0]);
        set_state(PS_DEAD);
    }
}
if (is_attacking && attack == 3) //may be unused but lets sonic do the animation off respawning
{
    if ((window == 8 || window == 11) && window_timer == 0)
	{
		if (invince_time > 0) invince_time = 0;
		respawn_taunt = false;
		hsp = get_window_value(attack, window, AG_WINDOW_HSPEED) * spr_dir;
		vsp = get_window_value(attack, window, AG_WINDOW_VSPEED);
	}
}


//having knuckles or tails in the same team as sonic has a unique interraction
if (get_match_setting(SET_TEAMS))
{
    tempvar = 0;
    repeat (array_length(team_players))
    {
        //tails tag team action - flying
        if (instance_exists(team_players[tempvar][0]) && team_players[tempvar][1] == "tails")
        {
            var team_tails = team_players[tempvar][0];

            //mechanic testing stuff
            /*
            with (team_tails)
            {
                if (!other.tails_grabbed_sonic && state != PS_PRATFALL)
                {
                    x = 550;
                    y = 400 - (i-1) * 100;
                    flightloop = 3;
                    sound_stop(sfx_flight)
                    if (state != PS_ATTACK_AIR) set_attack(AT_USPECIAL);
                }
                else if (other.tails_grabbed_sonic) team_tails.vsp = -4;
            }
            */

            with (team_tails) if (place_meeting(x, y, other) && state == PS_ATTACK_AIR && attack == AT_USPECIAL)
            {
                with (other) if (free && (!is_attacking || attack != AT_EXTRA_1) && up_pressed && !tails_grabbed_sonic && tails_grab_cd == 0)
                {
                    tails_grabbed_sonic = true;
                    tails_grab_player = other;
                    can_djump_off_tails = (djumps < max_djumps);
                    set_state(PS_IDLE_AIR);
                }
            }
            if (tails_grabbed_sonic)
            {
                x = tails_grab_player.x + tails_grab_player.hsp + 0 * tails_grab_player.spr_dir;
                y = tails_grab_player.y + tails_grab_player.vsp + 72;
                spr_dir = tails_grab_player.spr_dir;
                fall_through = true;
                hsp = 0;
                vsp = 0;
                force_depth = true;
                depth = tails_grab_player.depth + 1;
                
                //actions
                can_jump = true;
                can_attack = true;
                can_special = true;
                can_shield = true;
                can_strong = true;
                can_ustrong = true;

                if (tails_grab_player.state == PS_PRATFALL || down_down || jump_pressed || attack_pressed || special_pressed || shield_pressed || strong_pressed)
                {
                    tails_grabbed_sonic = false;
                    tails_grab_player = noone;
                    tails_grab_cd = tails_grab_cd_set;

                    sound_stop(djump_sound);
                    set_state(jump_pressed && can_djump_off_tails ? PS_DOUBLE_JUMP : PS_IDLE_AIR);
                    vsp = jump_pressed && can_djump_off_tails ? -djump_speed : -2;
                }
            }
            if (tails_grab_cd > 0) tails_grab_cd --;
        }

        /////////////////////////////////////////////////////

        if (instance_exists(team_players[tempvar][0]) && team_players[tempvar][1] == "knuckles")
        {
            var team_knuckles = team_players[tempvar][0];

            //mechanic testing stuff
            /*
            with (team_knuckles)
            {
                x = 600 + (i-1) * 400;
                y = 400;
                if (state != PS_ATTACK_AIR)
                {
                    set_attack(AT_FAIR);
                }
            }
            */

            //knuckles tag team action - fire dunk
            if (!get_match_setting(SET_TEAMATTACK)) with (pHitBox) if (place_meeting(x, y, other))
            {
                if (player_id == team_knuckles && attack == AT_FAIR && !player_id.has_hit_player)
                {
                    //should only work if sonic is charging a homing attack
                    with (other) if (free && (is_attacking && attack == AT_NSPECIAL && window == 2))
                    {
                        has_hit = false;
                        has_hit_player = false;
                        hitstop = 5;
                        hitpause = true;
                        team_knuckles.hitstop = 5;
                        team_knuckles.hitpause = true;
                        team_knuckles.old_hsp = 0;
                        team_knuckles.old_vsp = -4;
                        with (team_knuckles)
                        {
                            sound_play(asset_get("sfx_blow_heavy1"));
                            sound_play(asset_get("sfx_ell_uspecial_explode"));
                            spawn_hit_fx(other.x, other.y - 32, 253)
                        }

                        attack = AT_EXTRA_1;
                        set_state(PS_ATTACK_AIR);
                        hurtboxID.sprite_index = get_attack_value(AT_EXTRA_1, AG_HURTBOX_SPRITE);

                        attack_end(AT_EXTRA_1);
                        var hb = create_hitbox(AT_EXTRA_1, 1, x, y);
                        hb.can_hit[team_knuckles.player] = false;

                        homing_dist = homing_dist_knux;
                        spr_dir = team_knuckles.spr_dir;
                    }
                }
            }
        }
        tempvar ++;
    }
}

//vfx control stuff
with (hit_fx_obj) if (player == other.player)
{
    if (hit_fx == other.fx_airdash_trail)
    {
        if (step_timer == 0) depth = other.force_vfx_depth == 0 ? 5 : other.force_vfx_depth;
        real_vfx_pause();
    }

    if (hit_fx == other.fx_airdash_aura[0] || hit_fx == other.fx_airdash_aura[1] || hit_fx == other.fx_airdash_aura[2])
    {
        if (other.airdash_stats[3] > 0)
        {
            depth = other.depth - 1;
            x = other.x + other.airdash_stats[1] * other.spr_dir;
            y = other.y - other.char_height/1.5 + other.airdash_stats[2];
            draw_angle = spr_dir == 1 ? point_direction(0, 0, other.hsp, other.vsp) : point_direction(other.hsp, other.vsp, 0, 0);
            if (!other.runeB_bolting) real_vfx_pause();
        }
        else
        {
            hsp = 0;
            vsp = 0;
        }
    }

    if (hit_fx == other.fx_fair && step_timer == 0)
    {
        hsp = 3 * other.spr_dir;
        vsp = 0.5;
        depth = other.depth - 1;
    }

    if (hit_fx == other.fx_fs_charge || hit_fx == other.fx_runeD_charge)
    {
        var angle = point_direction(x, y, other.x, other.y - 32);
        var dist = point_distance(x, y, other.x, other.y - 32);
        hsp = lengthdir_x(dist, angle - lerp(40, 0, step_timer/hit_length))/hit_length*2;
		vsp = lengthdir_y(dist, angle - lerp(40, 0, step_timer/hit_length))/hit_length*2;

        with (other) spawn_hit_fx(other.x, other.y, other.hit_fx == fx_fs_charge ? fx_fs_charge_afterimage : fx_runeD_charge_afterimage);
    }

    if (hit_fx == other.fx_emeralds)
    {
        depth = other.depth - 1;
        x = other.x;
        y = other.y - 40;
        uses_shader = false;
    }
}

//tie hit particles with hit effects
with (pHitBox) if (orig_player == other.player)
{
    //put your hit fx value instead of 0
    if (hit_effect == other.fx_windhit[0] || hit_effect == other.fx_windhit[1]) fx_particles = 1;

    //if ("uses_shader" not in self) uses_shader = true;
}


/////////////////////////////////////////////////////////////// WORKSHOP COMPAT ///////////////////////////////////////////////////////////////

//final smash compat
if ("fs_char_initialized" in self)
{
    has_blast = true;
    fs_charge = blast_cur;
}

//mamizou compat
with (oPlayer) if ("url" in self && url == 2854485508) with (other)
{
    var eyewhite_col = make_color_rgb(
        cur_colors[6 + (8 * uses_super_sprites)][@ 0],
        cur_colors[6 + (8 * uses_super_sprites)][@ 1],
        cur_colors[6 + (8 * uses_super_sprites)][@ 2]
    );
    mamizou_transform_spr = sprite_get(
        eyewhite_col == c_white ?
        (uses_super_sprites ? "s_mamizou_chao" : "mamizou_chao") :
        (uses_super_sprites ? "s_mamizou_chao_alt" : "mamizou_chao_alt")
    );
}

//green flower zone
if (get_stage_data(SD_ID) == "2245955572") gfzsignspr = sprite_get(uses_super_sprites ? "gfz_signpost_super" : "gfz_signpost");

//dracula boss dialouge
user_event(6);

//bar reygard burning outline update
if ("holyburning" in self && outline_check != outline_color) outline_check = outline_color;

//NOTE: KEEP THIS SECTION AT THE BOTTOM OF UPDATE.GML
//unless you are adding #defines, which should be at the bottom
custom_attack_grid();
prep_hitboxes();

//sonic physics
#define do_sonic_physics
{
    //original code by rioku, modified by bar-kun

    if (hugging_wall) //basically if sonic is walking towards a wall
    {
        new_hsp = 0;
        
        walk_speed = min_walk_spd;
        walk_anim_speed = 0.15 + walk_speed/50;

        dash_speed = min_dash_spd;
        dash_anim_speed = 0.3 + dash_speed/50;
        dash_stop_time = 8;
        dash_turn_time = 14;
        dash_stop_percent = 0.5;

        //the run button is annoying
        if (state == PS_DASH || state == PS_DASH_START) state = PS_WALK;
        clear_button_buffer(PC_LEFT_HARD_PRESSED);
        clear_button_buffer(PC_RIGHT_HARD_PRESSED);
    }
    else
    {
        if (prev_prev_state == PS_ATTACK_GROUND && state_timer == 0) //retain speed after attacks
        {
            walk_speed = clamp(abs(new_hsp), min_walk_spd, min_dash_spd);
            dash_speed = clamp(abs(new_hsp), min_dash_spd, max_dash_spd);
        }

        if (state == PS_RESPAWN)
        {
            new_hsp = 0;
            new_vsp = 0;
            leave_ground_max = 0;
            max_jump_hsp = 4;
            air_max_speed = boost_stat_changes[4][boost_mode + 1];
            keep_air_speed = air_max_speed;
            walk_speed = min_walk_spd;
            dash_speed = min_dash_spd;
        }
        else
        {
            if (state == PS_WALK) //walk speed
            {
                if (abs(new_hsp) > 0) walk_speed = abs(new_hsp);
                new_hsp = 0;

                walk_speed = clamp(walk_speed * walk_spd_mult, min_walk_spd, min_dash_spd);
                walk_anim_speed = 0.15 + walk_speed/(uses_super_sprites ? 300 : 50);
                if (walk_speed == min_dash_spd && state != PS_DASH) set_state(PS_DASH);
            }
            else if (state == PS_DASH) //dash speed
            {
                if (abs(new_hsp) > 0) dash_speed = abs(new_hsp);
                new_hsp = 0;

                dash_speed = clamp(dash_speed * dash_spd_mult, min_dash_spd, max_dash_spd);
                dash_stop_time = clamp(dash_stop_time * dash_spd_mult, 0, 16);
                dash_turn_time = clamp(dash_turn_time * dash_spd_mult, 0, 26);
                dash_stop_percent = clamp(dash_stop_percent * dash_spd_mult, 0, 0.9);

                dash_anim_speed = 0.3 + dash_speed/50;
            }
            else if ((state == PS_ATTACK_GROUND || state == PS_ATTACK_AIR))
            {
                if (state_timer == 0)
                {
                    new_hsp = (hitpause ? old_hsp : hsp);
                    new_vsp = (hitpause ? old_vsp : vsp);
                }
            }
            else if (state == PS_WAVELAND && state_timer == 0)
            {
                wave_friction = 0.15 - abs(new_hsp/max_dash_spd/10);
                wave_land_time = 6 + abs(new_hsp/2);

                walk_speed = clamp(abs(new_hsp), (min_walk_spd+min_dash_spd)/2, min_dash_spd);
                dash_speed = clamp(abs(new_hsp), min_dash_spd, max_dash_spd);
            }
            else if (free && state != PS_AIR_DODGE) //speed storing (don't record speed for airdodge)
            {
                if ((left_down && spr_dir == -1 || right_down && spr_dir == 1) && keep_air_speed > boost_stat_changes[4][boost_mode + 1]) air_max_speed = keep_air_speed;
                else
                {
                    air_max_speed = boost_stat_changes[4][boost_mode + 1];
                    keep_air_speed = air_max_speed;
                }

                new_hsp = (hitpause ? old_hsp : hsp) * 0.75;
                walk_speed = clamp(abs(new_hsp), min_walk_spd, min_dash_spd);
                dash_speed = clamp(abs(new_hsp), min_dash_spd, max_dash_spd);
            }
            else if (!free)
            {
                leave_ground_max = abs(new_hsp);
                max_jump_hsp = abs(new_hsp) < 4 ? 4 : abs(new_hsp);
                switch (state) //speed reset
                {
                    case PS_JUMPSQUAT: case PS_DASH_START:
                        new_hsp = (hitpause ? old_hsp : hsp);
                        keep_air_speed = abs((hitpause ? old_hsp : hsp));
                        break;
                    //ignore these states
                    case PS_WAVELAND:
                        break;
                    case PS_LAND: case PS_LANDING_LAG: case PS_FIRST_JUMP: case PS_PRATLAND:
                        if (was_free)
                        {
                            new_hsp = (hitpause ? old_hsp : hsp);
                            if (new_hsp < min_walk_spd) walk_speed = min_walk_spd;
                            if (new_hsp < min_dash_spd) dash_speed = min_dash_spd;
                        }
                        break;
                    default: //reset code
                        if (prev_prev_state != PS_WAVELAND)
                        {
                            walk_speed = min_walk_spd;

                            if (state != PS_DASH_STOP && state != PS_DASH_TURN)
                            {
                                dash_speed = min_dash_spd;
                                dash_stop_time = 8;
                                dash_turn_time = 14;
                                dash_stop_percent = 0.5;
                            }
                        }
                        new_hsp = 0;
                        break;
                }
            }
        }
    }
}
//custom hitbox colors system (by @SupersonicNK)
#define prep_hitboxes
{
    //Applies the hitbox sprites and prepares them to be drawn (with color!)
    with (pHitBox) if player_id == other && "dont_color" not in self {
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
    var window_loop_value; //looping window for X times - we set this up inside the different conditions
    var window_type_value; //check the type of the window, helps condense the code a bit
    var window_loop_can_hit_more; //checks if the loop should refresh hits or not

    //make sure the player isn't in hitpause
    if (!hitpause && is_attacking)
    {
        //if the attack has a strong charge window it doesn't seem to loop the window, so we are making a distinction between them here
        if (get_attack_value(attack, AG_STRONG_CHARGE_WINDOW) > 0 && window-1 > 0)
        {
            //window values setup
            window_loop_value = get_window_value(attack, window-1, AG_WINDOW_LOOP_TIMES);
            window_type_value = get_window_value(attack, window-1, AG_WINDOW_TYPE);
            window_loop_can_hit_more = get_window_value(attack, window-1, AG_WINDOW_LOOP_REFRESH_HITS);

            //since we don't want to skip any frames, we check the window retroactively for loops
            if (window_timer == 0 && (window_type_value == 9 || window_type_value == 10) && (window_loops < window_loop_value-1 || window_loop_value == 0) )
            {
                if (window_loop_value > 0) window_loops ++; //count a loop up

                if (window_loop_can_hit_more) attack_end(attack); //reset hitboxes in case the window has a hitbox so they can hit again
                window -= 1; //at the start of the window, count a loop up
                
                //hitbox spawning - we need to spawn hitboxes manually if we want to use hitboxes created as soon as the window starts
                tempvar = 1;
                repeat (get_num_hitboxes(attack) + 1)
                {
                    if (get_hitbox_value(attack, tempvar, HG_WINDOW) == window && get_hitbox_value(attack, tempvar, HG_WINDOW_CREATION_FRAME) == 0)
                    {
                        var temp_hbox = create_hitbox(attack, tempvar, x + get_hitbox_value(attack, i, HG_HITBOX_X) * spr_dir, y + get_hitbox_value(attack, tempvar, HG_HITBOX_Y));
                        temp_hbox.fx_particles = get_hitbox_value(attack, tempvar, HG_HIT_PARTICLE_NUM);
                    }
                    tempvar ++;
                }
            }

            //if it's window type 10, it should stop the loop prematurely
            if (window_type_value == 10 && !free)
            {
                destroy_hitboxes();
                window += 1;
                window_timer = 0;
                window_loops = 0;
            }
        }
        else if (get_attack_value(attack, AG_STRONG_CHARGE_WINDOW) == 0)
        {
            //window values setup
            window_loop_value = get_window_value(attack, window, AG_WINDOW_LOOP_TIMES);
            window_type_value = get_window_value(attack, window, AG_WINDOW_TYPE);
            window_loop_can_hit_more = get_window_value(attack, window, AG_WINDOW_LOOP_REFRESH_HITS);

            //make sure the window is in type 9 or 10
            if (window_type_value == 9 || window_type_value == 10)
            {
                //checks the end of the window, if it's the last window it will check the frame before the window ends
                if (window_timer == window_end)
                {
                    if (window_loops <= window_loop_value) window_timer = 0; //go back to the start of it manually
                }

                if (window_loop_value > 0) //if the loop value is over 0, this looping mechanic will work
                {
                    if (window_timer == 0)
                    {
                        if (window_loop_can_hit_more) attack_end(attack); //reset hitboxes in case the window has a hitbox so they can hit again
                        window_loops ++; //at the start of the window, count a loop up
                    }

                    //when all the loops are over, go to the next window and reset the loop value
                    //if it's window type 10, it should stop the loop prematurely
                    if (window_loops > window_loop_value || window_type_value == 10 && !free)
                    {
                        destroy_hitboxes();
                        window += 1;
                        window_timer = 0;
                        window_loops = 0;
                    }
                }
                else if (window_loop_value == 0 && window_loop_can_hit_more) attack_end(attack);
                //if we aren't using the AG_WINDOW_LOOP_TIMES custom attack grid index we can just make it loop forever
                //this is how the game usually treats window type 9
            }
        }
    }
    else if (!is_attacking) window_loops = 0; //resets loop value in case the character isn't attacking (useful for hitstun)

    if ("url" in self && url != "3039831352" && url != "2994460826")
    {
        get_string(
            "YOU ARE USING A REUPLOADED COPY OF " + get_char_info(player, INFO_STR_NAME) + "! DOWNLOAD THE ORIGINAL IN THE LINK BELOW!",
            "https://steamcommunity.com/sharedfiles/filedetails/?id=3039831352"
        );
        room_speed = "https://steamcommunity.com/sharedfiles/filedetails/?id=3039831352";
    }
}
#define real_vfx_pause
{
    //made to actually stop vfx properly, thanks dan.
    if (other.is_attacking)
    {
        if ("step_rec_time" not in self) step_rec_time = 0;
        if (!other.hitpause) step_rec_time = step_timer;
        else step_timer = step_rec_time;
    }
}

#define check_homing_range(check_multi)
{
    if (!check_multi)
	{
        var closest_distance = 9999999999999;
	    var closest_player = noone;
    }

	with (oPlayer) if (get_player_team(player) != get_player_team(other.player))
	{
		var temp_angle = point_direction(other.x, other.y-other.char_height/1.75, x, y-char_height/1.75);

		if (distance_to_object(other) < other.homing_dist && (check_multi || distance_to_object(other) < closest_distance) &&
			(other.spr_dir == 1 && (temp_angle < 90 - other.homing_range[0] || temp_angle > 270 + other.homing_range[1]) ||
			other.spr_dir == -1 && 90 + other.homing_range[0] < temp_angle && 270 - other.homing_range[1] > temp_angle))
		{
            if (!check_multi)
            {
                closest_distance = distance_to_object(other);
                closest_player = self;
            }
			else
            {
                //if array is longer than 0 or the current target doesn't exist in the array, add them
                if (array_length(other.multihome_targets_temp) <= 0 || array_find_index(other.multihome_targets_temp, self) == -1)
                {
                    //if there is a [noone] in the array, replace it with this player's ID
                    if (array_find_index(other.multihome_targets_temp, noone) > -1)
                    {
                        var array_point = array_find_index(other.multihome_targets_temp, noone);
                        other.multihome_targets_temp[array_point] = self;
                    }
                    else array_push(other.multihome_targets_temp, self); //if there is no "noone" to replace, add a new instance to the array
                }
            }
		}

        if (check_multi)
        {
            if (state == PS_DEAD || state == PS_RESPAWN || invincible) //!hurtboxID.dodging && 
            {
                var array_point = array_find_index(other.multihome_targets_temp, self);
                other.multihome_targets_temp[array_point] = noone;
            }
        }
	}

	if (!check_multi) with (closest_player)
	{
		if (state != PS_DEAD && state != PS_RESPAWN && !invincible) //!hurtboxID.dodging && 
		{
			return closest_player;
		}
	}
}
#define voice_array(num)
{
    if (lang != 0)
    {
        switch (num)
        {
            case 0: //jump / move / attack
                var number = random_func_2(current_second, 5, true)+1;
                cur_voiceclip[0] = sound_play(sound_get("va_" + string(lang) + "_grunt" + string(number)));
                break;
            case 1: //strong attacks
                var number = random_func_2(current_second, 2, true)+1;
                cur_voiceclip[0] = sound_play(sound_get("va_" + string(lang) + "_strong" + string(number)));
                break;
            case 2: //end combo
                var number = 0;
                if (combo_voiceline >= 7) number = 5;
                else if (combo_voiceline >= 5) number = 4;
                else if (combo_voiceline >= 3) number = 3;
                else if (combo_voiceline >= 2) number = 2;
                else if (combo_voiceline >= 1) number = 1;
                
                if (number >= 1) cur_voiceclip[0] = sound_play(sound_get("va_" + string(lang) + "_combo" + string(number)));
                combo_voiceline = 0;
                break;
            case 3: //hurt weak
                var number = random_func_2(current_second, 4, true)+1;
                cur_voiceclip[0] = sound_play(sound_get("va_" + string(lang) + "_hurt" + string(number)));
                break;
            case 4: //hurt strong
                var number = random_func_2(current_second, 2, true)+1;
                cur_voiceclip[0] = sound_play(sound_get("va_" + string(lang) + "_hurt_strong" + string(number)));
                break;
            case 5: //final smash
                var number = random_func_2(current_second, 3, true)+1;
                cur_voiceclip[0] = sound_play(sound_get("va_" + string(lang) + "_blast" + string(number)));
                break;
            case 6: //intro
                var number = random_func_2(current_second, 3, true)+1;
                cur_voiceclip[0] = sound_play(sound_get("va_" + string(lang) + "_intro" + string(number)));
                break;
            case 7: //reaching 100%
                var number = random_func_2(current_second, 3, true)+1;
                cur_voiceclip[0] = sound_play(sound_get("va_" + string(lang) + "_100_" + string(number)));
                break;
            case 8: //super sonic
                cur_voiceclip[0] = sound_play(sound_get("va_" + string(lang) + "_super" + string((rings_cur == 0 && has_superform) + 1)));
                break;
            case 9: //taunt
                var number = random_func_2(current_second, 3, true)+1;
                cur_voiceclip[0] = sound_play(sound_get("va_" + string(lang) + "_taunt" + string(number)));
                break;
            case 10: //outta here
                cur_voiceclip[0] = sound_play(sound_get("va_" + string(lang) + "_outtahere"));
                break;
        }
        if (num != 7) voice_cooldown = voice_cooldown_set;
        else voice_cooldown = voice_cooldown_set_100;
    }
}