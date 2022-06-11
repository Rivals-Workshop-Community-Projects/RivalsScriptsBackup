//update

// end match to test result screen
//if (shield_pressed) end_match(player);

//////////////////////////////////////////////////////// USEFUL CUSTOM VARIABLES ////////////////////////////////////////////////////////

//debug mode
/*
if (get_match_setting(SET_PRACTICE))
{
    if (!free && taunt_down && shield_pressed && shield_counter == 1)
    {
        debug_keqing = !debug_keqing;
        set_state(PS_IDLE);
    }
}
*/

if (debug_keqing)
{
    nspec_cd = 0; //nspec has no cooldown on debug mode

	if (instance_exists(artc_marker) && artc_marker.state == 2 && artc_marker.state_timer == 1)
	{
	    hud_anim_timer = 0;
	    hud_anim_start = true;
	}
}


//apperently i don't even need an if statement for this
//i'm just checking if it's in those states and if it is, set it to true
is_attacking = (state == PS_ATTACK_GROUND || state == PS_ATTACK_AIR); //attack check
is_dodging = (state == PS_ROLL_FORWARD || state == PS_ROLL_BACKWARD || state == PS_AIR_DODGE); //dodge check


//set window_last, window_end, window_cancel_time every time keqing is in an attack state
if (is_attacking)
{
    window_last = get_attack_value(attack, AG_NUM_WINDOWS);
    window_end = floor(get_window_value(attack, window, AG_WINDOW_LENGTH) * ((get_window_value(attack, window, AG_WINDOW_HAS_WHIFFLAG) && !has_hit) ? 1.5 : 1));
    window_cancel_time = get_window_value(attack, window, AG_WINDOW_CANCEL_FRAME);
}

//play intro
//has_intro right now prevents keqing from playing an intro, so simply remove it when she does have one
if (get_gameplay_time() == 4 && has_intro) set_attack(AT_INTRO);

if (is_attacking && attack == AT_INTRO)
{
    var fx_x = x+11*spr_dir;
    var fx_y = y-30;

    if (window == 1 && window_timer == 1)
    {
        artc_marker = instance_create(fx_x-2*spr_dir, fx_y, "obj_article1");
        artc_marker.state = 1;
    }
    if (window == 1 && window_timer == window_end-8 && instance_exists(artc_marker) && artc_marker.state == 1)
    {
        spawn_hit_fx(fx_x-2*spr_dir, fx_y, fx_nspec_marker_despawn);
		instance_destroy(artc_marker);
    }
    if (window == 2 && window_timer == 0)
    {
        color_outline_timer = color_outline_timer_max;
        spawn_hit_fx(fx_x, fx_y, fx_nspec_warpend);
    }
    if (window == 4 && window_timer == 52) spawn_hit_fx(fx_x+16*spr_dir, fx_y-12, fx_introspark);

	if (window == window_last && window_timer == window_end-1)
	{
		if (get_gameplay_time() <= 125) state = PS_SPAWN;
	}
}


//////////////////////////////////////////////////////////// KEQING MECHANICS /////////////////////////////////////////////////////////////



//this counter checks if keqing is able to do the charge attacks or not
if (attack_down) attack_down_counter ++;
else attack_down_counter = 0;


//electro infuse enemies
//right now it just has a cool visual effect but it's not doing anything
/*
with (oPlayer)
{
    if (electro_infused)
    {
        electro_infused_time ++;

        //electro effect work
        with (other) if (get_gameplay_time() % 5 == 0)
	    {
	    	var elec_random = random_func(6, 3, true);
        	var elec_angle = random_func(7, 360, true);

        	var elec_dir = random_func(7, 2, true)-1;
        	if (elec_dir == 0) elec_dir = spr_dir;

        	var electro_effect = spawn_hit_fx(other.x, other.y-32, fx_electro[elec_random]);
        	electro_effect.draw_angle = elec_angle;
        	electro_effect.spr_dir = elec_dir;
	    }

        if (electro_infused_time >= 60 || state == PS_DEAD)
        {
            electro_infused_time = 0;
            electro_infused = false;
        }
    }
}
*/

///////////////////////////////////////////////////////////////// ATTACK LOGIC /////////////////////////////////////////////////////////////////


//jab
if (!is_attacking) can_jab4 = false;

//dair effect work
if (attack == AT_DAIR && state == PS_ATTACK_AIR && window == 2)
{
    if (dair_fx_y_scale < 2) dair_fx_y_scale += 0.25;
}
else dair_fx_y_scale = 0;

//strongs effects
if (state_cat != SC_HITSTUN)
{
    switch (attack)
    {
        case AT_FSTRONG:
            if (window == 4 && window_timer == 0)
            {
                //var slashes = spawn_hit_fx(x+48*spr_dir, y+32, fx_strong);
                //slash_pos_x = slashes.x;
                //slash_pos_y = slashes.y-64;

                strong_slashes = spawn_hit_fx(x, y, fx_fstrong);
                slash_pos_x = strong_slashes.x+32*spr_dir;
                slash_pos_y = strong_slashes.y-32;
            }
            break;
        case AT_DSTRONG:
            if (window == 4 && window_timer == 0) strong_slashes = spawn_hit_fx(x, y, fx_dstrong);
            if (strong_slashes != noone && instance_exists(strong_slashes)) strong_slashes.x = x;
            break;
        case AT_USTRONG:
            if (window == 4 && window_timer == 0) strong_slashes = spawn_hit_fx(x, y, fx_ustrong);
            if (strong_slashes != noone && instance_exists(strong_slashes)) strong_slashes.x = x;
            break;
    }

    if (instance_exists(strong_slashes)) strong_slashes.depth = -6;
}


//if keqing is not in the attack state or not doing a strong, the stilleto explosion's buff will be disabled
if (attack != AT_USTRONG && attack != AT_FSTRONG && attack != AT_DSTRONG || !is_attacking) nspec_increase_kb = false;


//  N-SPECIAL
//this one checks if keqing is aiming or not
//under 0 and 0 = not aiming || over 0 = aiming
if (attack != AT_NSPECIAL && window != 2 || !is_attacking) marker_aim_timer = -1;

//aim ambience
if (is_attacking && attack == AT_NSPECIAL && window_timer == 0 && window == 2) sound_play(sfx_nspec_aim, true);
else if (!is_attacking || attack != AT_NSPECIAL || window != 2) sound_stop(sfx_nspec_aim);

//stilleto marking foes code
if (stilleto_id != noone)
{
    artc_marker.x = stilleto_id.x;
    artc_marker.y = stilleto_id.y-stilleto_id.char_height/2;

    if (stilleto_id == self || stilleto_id.clone) stilleto_id = noone;
}

if (nspec_cancel_timer > 0) nspec_cancel_timer --;

//if the projectile goes further than the end point, it should spawn the marker and erase itself
if (nspec_proj != noone && instance_exists(nspec_proj))
{
    if (nspec_angle > 90 && nspec_angle < 270 && nspec_proj.x < marker_dist_x) nspec_proj.length = -1;
	else if ((nspec_angle < 90 || nspec_angle > 270) && nspec_proj.x > marker_dist_x) nspec_proj.length = -1;

    if (nspec_angle > 0 && nspec_angle < 180 && nspec_proj.y < marker_dist_y) nspec_proj.length = -1;
    else if ((nspec_angle < 0 || nspec_angle > 180) && nspec_proj.y > marker_dist_y) nspec_proj.length = -1;
}

//some visual flare work
if (is_attacking && attack == AT_NSPECIAL_2)
{
    if (window < 3)
    {
        color_outline_rise = true;
        color_outline_timer ++;
    }
    else color_outline_rise = false;

    if (window_timer == 0 && !counter_success)
    {
        if (window == 3) spawn_hit_fx(x, y-32, fx_nspec_warpstart);
        if (window == 4) color_outline_timer = color_outline_timer_max;
    }
}



//outline shenanigans
//also has bar burning compatibility
if (color_outline_timer > 0 && !color_outline_rise) color_outline_timer --;

if (!is_gb && "holyburning" not in self || "holyburning" in self && !holyburning)
{
    outline_color = [
        floor(lerp(0, get_color_profile_slot_r(alt_cur, 0), color_outline_timer/color_outline_timer_max)),
        floor(lerp(0, get_color_profile_slot_g(alt_cur, 0), color_outline_timer/color_outline_timer_max)),
        floor(lerp(0, get_color_profile_slot_b(alt_cur, 0), color_outline_timer/color_outline_timer_max))];
    init_shader();
}


//HUD stuff
if (is_attacking && (attack == AT_NSPECIAL || attack == AT_NSPECIAL_2)) using_nspec = true;
else using_nspec = false;

move_cooldown[AT_NSPECIAL] = nspec_cd;
if (nspec_cd > -1) nspec_cd --;
if (nspec_cd == 0)
{
    hud_anim_timer = 0;
    hud_anim_start = true;
}

if (hud_anim_start)
{
    hud_anim_timer ++;
    if (hud_anim_timer >= 10) hud_anim_start = false;
}



//  U-SPECIAL

//uspec reset
if (state == PS_WALL_JUMP || state != PS_ATTACK_GROUND && state != PS_ATTACK_AIR) uspec_count = 0;

//turbo limiter
if (get_match_setting(SET_TURBO) && is_attacking && turbo_attack_hit == AT_USPECIAL
&& attack != turbo_attack_hit && turbo_attack_window == 2)
{
    if (state_timer <= 1 && attack != AT_DAIR && attack != AT_FTILT)
    {
        hsp = 0;
        vsp = 0;
        turbo_attack_hit = 0;
        turbo_attack_window = 0;
    }
}

if (instance_exists(uspec_flash) && hitpause)
{
    uspec_flash.pause_timer = 0;
	uspec_flash.pause = hitstop;
}


//  F-SPECIAL

//restore fspec on the ground/walljump
if (!free || state == PS_WALL_JUMP) fspec_used = false;

//bounce mechanic
//bouncing on a stilleto restores fspec
if (fspec_bounce && !hitpause)
{
    fspec_used = false;
    vsp = -9;
    fspec_bounce = false;
}

//make the move unavailable according to the fspec_used variable
move_cooldown[AT_FSPECIAL] = fspec_used+1;

if (instance_exists(fspec_slash) && hitpause && state_cat != SC_HITSTUN)
{
    fspec_slash.pause_timer = 0;
	fspec_slash.pause = hitstop;
}


//  D-SPECIAL

//set up the coordinates for the article to be spawned at
if (is_attacking && attack == AT_DSPECIAL && window == 3 && window_timer == 0)
{
	dspec_rec_x = x;
	dspec_rec_y = y;
}


// STARWARD SWORD
if (!used_burst && fs_alpha_bg > 0) fs_alpha_bg -= 0.05;
if (fs_alpha_bg <= 0) fs_alpha_bg = 0;
if (used_burst || vhd_attack) attack_invince = true;

//final smash/burst
if ("fs_char_initialized" in self) has_burst = true;

if (has_burst)
{
    allow_burst_UI = true;

    if ("fs_char_initialized" in self && fs_char_initialized)
    {
        fs_using_final_smash = used_burst;
        burst_charge = fs_charge;
    }
    else
    {
        if (burst_charge >= 200 && !burst_ready) sound_play(sound_get("sfx_burst_ready"));
        if (particle_cd > 0) particle_cd--;
    }

    if (burst_charge >= 200) burst_ready = true;
    else burst_ready = false;
    burst_charge = clamp(burst_charge, 0, 200);

    //because i can't use hit_player / user_event 13 to unfreeze stage players...
    if (attack == AT_BURST && has_hit && has_hit_id != noone) with (has_hit_id) if ("player" in self && player == 5)
    {
        hitpause = false;
    }
}

////////////////////////////////////////////////////////////// ABYSS RUNES /////////////////////////////////////////////////////////////

if (get_match_setting(SET_RUNES))
{
    for (var i = 0; i < 15; ++i)
    {
        has_rune(rune_active[i]);

        if (has_rune(rune_active[i]))
        {
            switch (rune_active[i])
            {
                /////////////////////////////////////////////////// TIER 1 ///////////////////////////////////////////////////
                case "A": //warp blast with nspec
                    if (is_attacking && attack == AT_NSPECIAL_2)
                    {
                        if (window == 2 && window_timer == window_end-1) prev_pos = [floor(x), floor(y)-32];
                        if (window == 4 && window_timer == 1)
                        {
                            //the hitbox sends towards her
                            var warphit = create_hitbox(AT_NSPECIAL_2, 2, prev_pos[0], prev_pos[1]);
                            warphit.fx_particles = 2;
                            sound_play(asset_get("sfx_clairen_hit_strong"));
                        }
                    }
                    break;
                case "C": //keqing burst + elemental particles
                    has_burst = true;
                    break;
                case "D": //genshin stamina mechanics
                    switch (state)
                    {
                        default:
                            if (!free) cur_stamina ++;
                            wind_glider_toggle = false;
                            break;
                        case PS_DASH_START:
                            cur_stamina -= 2;
                        case PS_DASH: case PS_DASH_TURN:
                            cur_stamina --;
                            if (cur_stamina <= 0) set_state(runeE_special_dash ? PS_DASH_STOP : PS_WALK);
                            break;
                        case PS_DOUBLE_JUMP:
                            if (jump_pressed && cur_stamina > 0 && state_timer > 6) wind_glider_delay_open = true;
                            break;
                        case PS_IDLE_AIR:
                            if (jump_pressed && jump_counter == 1 && cur_stamina > 0 && vsp >= 0 || wind_glider_delay_open)
                            {
                                wind_glider_toggle = !wind_glider_toggle;
                                wind_glider_delay_open = false;
                                spawn_hit_fx(x-4*spr_dir, y-32, wind_glider_toggle ? fx_glider_spawn : fx_glider_despawn);
                                sound_play(asset_get(wind_glider_toggle ? "sfx_bird_upspecial" : "sfx_birdflap"));
                            }

                            if (wind_glider_toggle)
                            {
                                if (state_timer % 2 == 0) cur_stamina --;
                                vsp = clamp(vsp, 0, 2+fast_falling*4);

                                windglider_open_time ++;

                                if (abs(hsp) >= air_max_speed-1) spr_dir = sign(hsp);

                                if (cur_stamina == 0) wind_glider_toggle = false;
                            }
                            else windglider_open_time = 0;
                            break;
                        case PS_WALL_JUMP:
                            if (state_timer <= 1) wind_glider_toggle = false;

                            if (jump_pressed && cur_stamina > 0)
                            {
                                if (state_timer > 7) wind_glider_delay_open = true;

                                if ((jump_counter == 1 || wind_glider_delay_open) && vsp >= 0) set_state(PS_IDLE_AIR);
                            }
                            break;
                        case PS_WAVELAND:
                            cur_stamina -= 4;
                            if (cur_stamina <= 16) set_state(PS_LANDING_LAG);
                            break;
                        case PS_ATTACK_GROUND:
                            move_cooldown[AT_FSTRONG] = 1 + (25 - cur_stamina);
                            move_cooldown[AT_USTRONG] = 1 + (25 - cur_stamina);
                            move_cooldown[AT_DSTRONG] = 1 + (25 - cur_stamina);
                            if (attack == AT_FSTRONG || attack == AT_USTRONG || attack == AT_DSTRONG)
                            {
                                if (window == 1 && !hitpause) cur_stamina -= 7;
                            }
                            else if (!free) cur_stamina ++;

                            if (25 - cur_stamina > 0) attack_down_counter = 0;
                            break;
                    }
                    cur_stamina = clamp(cur_stamina, 0, max_stamina);
                    
                    if (cur_stamina >= max_stamina && genshin_stamina_alpha > 0) genshin_stamina_alpha -= 0.05;
                    else if (cur_stamina < max_stamina) genshin_stamina_alpha = 1;
                    break;
                case "E": //special dash
                    if (state == PS_DASH || state == PS_DASH_TURN || state == PS_DASH_STOP)
                    {
                        runeE_special_dash = true;
                        super_armor = true;
                        do_electro_particles(x, y+16, 3, 0, 0);
                        if (state == PS_DASH && state_timer == 1 && !hitpause) sound_play(asset_get("sfx_absa_jabloop"), true);
                    }
                    else 
                    {
                        sound_stop(asset_get("sfx_absa_jabloop"));
                        if (runeE_special_dash && !hitpause && state != PS_RESPAWN && state != PS_DEAD)
                        {
                            sound_play(asset_get("sfx_absa_dattack"));
                            spawn_hit_fx(x, y-8, fx_nspec_cursorspawn);
                        }
                        runeE_special_dash = false;
                    }

                    //if (cur_stamina == 0) set_state(PS_DASH_STOP);
                    
                    //on dash end, keqing jumps
                    if (state_timer == 3 && state == PS_DASH_STOP)
                    {
                        vsp = -6;
                        hsp = hsp-4*spr_dir;
                        set_state(PS_IDLE_AIR);
                    }
                    break;
                /////////////////////////////////////////////////// TIER 2 ///////////////////////////////////////////////////
                case "G": //lisa C2
                    if (is_attacking) switch (attack)
                    {
                        case AT_NSPECIAL: case AT_NSPECIAL_2: case AT_USPECIAL: case AT_FSPECIAL: case AT_DSPECIAL:
                            soft_armor = 10;
                            break;
                    }
                    
                    if (spawn_blast_attack && !hit_player_obj.hitpause)
                    {
                        //the hitbox should copy all knockback values from the previous hitbox
                        var blast = create_hitbox(48, 1, hit_player_obj.x, hit_player_obj.y-32);
                        blast.fx_particles = 2;
                        sound_play(asset_get("sfx_clairen_hit_strong"));
                        spawn_hit_fx(hit_player_obj.x, hit_player_obj.y-32, fx_nspec_marker_explode);

                        spawn_blast_attack = false;
                    }
                    break;
                case "H": //beidou skill
                    if (down_down && shield_pressed && !free && !is_attacking && move_cooldown[AT_DSPECIAL_2] == 0 && state != PS_PARRY)
                    {
                        set_attack(AT_DSPECIAL_2);
                    }
                    if (prev_state == is_attacking && attack == AT_DSPECIAL_2) counter_uptime = counter_uptime_reset;
                    break;
                
                /////////////////////////////////////////////////// TIER 3 ///////////////////////////////////////////////////
                case "I": //1:2 crit ratio
                    if (!hitpause) crit_val = random_func(7, 100, true);
                    break;
                case "L": //vision hunt decree
                    resolve_cur = clamp(resolve_cur, 0, resolve_max);
                    if (particle_cd > 0) particle_cd--;

                    if (!burst_ready && !used_burst)
                    {
                        if (resolve_cur >= resolve_max && special_down && attack_down && !free)
                        {
                            vhd_attack = true;
                            sound_play(sound_get("sfx_burst_start"));
                            set_attack(AT_TAUNT);
                            if (instance_exists(artc_marker)) instance_destroy(artc_marker);
                            vhd_effect = true;
                        }
                        if (vhd_attack && attack == AT_TAUNT && !is_attacking) vhd_attack = false;
                    }

                    if (vhd_effect)
                    {
                        if (fs_alpha_bg < 1) fs_alpha_bg += 0.1;
                        force_depth = true;
                        depth = -2;

                        vhd_effect_time ++;
                        if (vhd_effect_time >= vhd_effect_time_max) vhd_effect = false;

                        with (oPlayer) if (player != other.player && get_player_team(other.player) != get_player_team(player))
                        {
                            move_cooldown[AT_NSPECIAL] = 2;
                            move_cooldown[AT_FSPECIAL] = 2;
                            move_cooldown[AT_USPECIAL] = 2;
                            move_cooldown[AT_DSPECIAL] = 2;

                            //bar is not immune to this
                            //i might need more conditions for other characters i don't know
                            if (url == 2601775097)
                            {
                                move_cooldown[AT_NTHROW] = 2;
                                move_cooldown[AT_NSPECIAL_AIR] = 2;
                                move_cooldown[AT_FTHROW] = 2;
                                move_cooldown[AT_FSPECIAL_AIR] = 2;
                                move_cooldown[AT_UTHROW] = 2;
                                move_cooldown[AT_DTHROW] = 2;
                                move_cooldown[39] = 2;
                                move_cooldown[AT_FSPECIAL_2] = 2;
                                move_cooldown[AT_NSPECIAL_2] = 2;
                                move_cooldown[AT_USPECIAL_2] = 2;
                                move_cooldown[AT_DSPECIAL_2] = 2;
                                move_cooldown[AT_EXTRA_2] = 2;
                                move_cooldown[AT_EXTRA_3] = 2;
                                move_cooldown[AT_EXTRA_1] = 2;
                            }
                            else break;
                        }
                    }
                    break;
            }
        }
    }
}


///////////////////////////////////////////////////////////////// MISC /////////////////////////////////////////////////////////////////

//lyre fade in/out effect
if (lyre_hud_play_fade != 0)
{
    lyre_hud_fade += lyre_hud_play_fade;
    
    if (lyre_hud_fade >= 10 || lyre_hud_fade <= 0)
    {
        lyre_hud_play_fade = 0;
    }
}

//if keqing is not in the lyre attack, make the hud fade off and reset key_held_time
if (!is_attacking || is_attacking && attack != AT_TAUNT_2)
{
    if (lyre_hud_play_fade == 0 && lyre_hud_fade >= 10) lyre_hud_play_fade = -1;
    key_held_time = 0;
}

//vanish effect when dodging
if (is_dodging)
{
    //effect work
    if (is_dodging && window == 0 && window_timer == 1) // || attack == AT_JAB && window == [#] && window_timer == 0
    {
        if (free) var _y = 48;
        else _y = 32;
        var vanish = spawn_hit_fx(x, y-_y, fx_vanish);
        vanish.draw_angle = random_func(0, 30, true)*12;
        vanish.spr_dir = random_func(0, 2, true)-1;
        vanish.depth = -5;
        if (vanish.spr_dir = 0) vanish.spr_dir = 1;
    }
    
    //hide the overhead indicator when keqing isn't there
    //if (is_dodging && window == 1) draw_indicator = false; // add OR statement for the jab time that keqing is gone
    //else draw_indicator = true;
}


//deactivate damage numbers display
if (keqing_exist_time < 121) keqing_exist_time ++;
if (keqing_exist_time < 120 && taunt_pressed) display_damage_numbers = false;


//heal effect when getting healed/respawning
if (display_damage_numbers)
{
    //check if there's a gap between the old damage and the new damage value
    damage_gap = prev_damage - get_player_damage(player);

    //check if the gap is bigger than 0, if it is, display the number value
    if (damage_gap > 0)
    {
        if (get_player_stocks(player) > 0 && !get_match_setting(SET_PRACTICE) || get_match_setting(SET_PRACTICE))
        {
            if (state == PS_RESPAWN && state_timer >= respawn_time_appear || state != PS_RESPAWN)
            {
                artc_damage = instance_create(x, y, "obj_article3");
                artc_damage.is_crit = false;
                artc_damage.is_healing = true;
                artc_damage.damage = damage_gap * artc_damage.damage_mult;
                if (artc_damage.damage > power(10, 7)-1) artc_damage.damage = power(10, 7)-1;
                artc_damage.y = y - char_height*1.5;

                heal_time = heal_time_max;
            }
        }
    }
    if (heal_time > 0) //just heal particles for when she heals
    {
        heal_time --;
        var random_x = (random_func(5, 7, true)-4)*8;
        var random_y = (random_func(6, 9, true)-10)*8;
        var heal_part = spawn_hit_fx(x+random_x*spr_dir, y+random_y, fx_heal[is_gb]);
        heal_part.depth = -8;
    }

    //the current damage is now the previous damage value
    if (state != PS_RESPAWN && state != PS_DEAD) prev_damage = get_player_damage(player);
    else if (state == PS_RESPAWN && state_timer >= respawn_time_appear) prev_damage = get_player_damage(player);
}


//halloween hat effect
if (qiqi_hat)
{
    if (prev_state != PS_SPAWN && state != PS_RESPAWN)
    {
        qiqi_hat = false;
        spawn_hit_fx(x+1*spr_dir, y-66, fx_qiqi_vanish);
    }
}


//traveller effects colors
if (alt_mc) do_traveller_colors();

//credit to supersonic for the help
//effects default depth when they spawn is 3, so this will make it so it won't overwrite values if i add them manually
with (hit_fx_obj) if (player == other.player && depth == 3) depth = player_id.depth-2;


//voice acting
//switch "get_gameplay_time()" with "keqing_exist_time" to make it work on reload
if (lang == 0 && get_gameplay_time() < 120 && get_gameplay_time() > 10) //only at the start of the match keqing can select a voice 
{
    if (jump_pressed)
    {
        lang = "jp";
        voice_array(9);
    }
    else if (attack_pressed)
    {
        lang = "en";
        voice_array(9);
    }
    else if (special_pressed)
    {
        lang = "cn";
        voice_array(9);
    }
    else if (shield_pressed)
    {
        lang = "kr";
        voice_array(9);
    }
}
else
{
    var should_speak = random_func(7, 2, true); //0-1
    if (should_speak == 1)
    {
        switch (state)
        {
            case PS_FIRST_JUMP: case PS_DOUBLE_JUMP: case PS_WALL_JUMP: case PS_ROLL_BACKWARD: case PS_ROLL_FORWARD: case PS_AIR_DODGE:
            case PS_WAVELAND:
                if (state_timer == 1) voice_array(0);
                break;
            case PS_ATTACK_GROUND: case PS_ATTACK_AIR:
                if (window_timer == 0) //attacks
                {
                    switch (attack)
                    {
                        case AT_JAB: //jab is special, it has multiple windows
                            switch (window)
                            {
                                case 1: case 4: case 7: case 11:
                                    voice_array(1);
                                    break;
                                case 14:
                                    voice_array(2);
                                    break;
                            }
                            break;
                        case AT_USTRONG: case AT_FSTRONG: case AT_DSTRONG: //stongs play sounds only on window 4
                            if (window == 4) voice_array(3);
                            break;
                        case AT_UTILT: case AT_FTILT: case AT_DTILT: case AT_DSPECIAL:
                            if (window == 1) voice_array(1);
                            break;
                        case AT_DATTACK: case AT_NAIR: case AT_FAIR: case AT_UAIR: case AT_DSPECIAL_2:
                            if (window == 1) voice_array(2);
                            break;
                        case AT_DAIR: case AT_BAIR: case AT_NSPECIAL_2:
                            if (window == 1) voice_array(3);
                            break;
                        case AT_FSPECIAL:
                            if (window == 1) voice_array(0);
                            if (window == 3) voice_array(3);
                            break;
                        case AT_USPECIAL:
                            if (window == 1) voice_array(2);
                            break;
                    }
                }
                break;
            case PS_HITSTUN:
                if (state_timer == 1)
                {
                    if (get_player_damage(player) < 60) voice_array(6);
                    else if (get_player_damage(player) >= 60) voice_array(7);
                }
                break;
        }
    }

    if (is_attacking && attack = AT_NSPECIAL && window_timer == 0 && window == 3) voice_array(4);

    //with voice on, she always will do the 100% line
    if (get_player_damage(player) >= 100 && !reached_100_damage)
    {
        voice_array(8);
        reached_100_damage = true;
    }
    else if (get_player_damage(player) < 100) reached_100_damage = false;

    //also with her burst/final smash and intro
    if ((attack == AT_BURST || attack == AT_TAUNT && vhd_attack) && window == 1 && window_timer == 0) voice_array(5);

    //if a new voiceclip is playing, cut the old one
    if (cur_voiceclip[0] != cur_voiceclip[1])
    {
        sound_stop(cur_voiceclip[1]);
        cur_voiceclip[1] = cur_voiceclip[0];
    }
}


//dialouge buddy
dialogue_buddy_compat();


//custom hitbox color system by supersonic
prep_hitboxes();

//////////////////////////////////////////////////////////// #DEFINE SECTION ////////////////////////////////////////////////////////////


#define dialogue_buddy_compat
{
    if(variable_instance_exists(id,"diag"))
    {
    //Change their name whenever
        diag_name = "Keqing";
    //  ADDING REGULAR DIALOGUE

        //Diagchoice is variable that keeps default interactions in array! Feel free to put as much as you would want!
        diagchoice = [
        "Let's finish this quickly.",
        "For Liyue Harbor's future, I must stop you here!",
        "We live in an era of change, this is no time to procrastinate."]

    /*
    //  Specific Character Interactions

    //  Regular dialogue
        if(otherUrl == "" && diag != "") //Change the url into a specific character's
        {
            diag = "Hey, I know you! I will beat you up.";
            diag_index = 0; //If your portrait has multiple sprite indexes. You can change them during the interaction!
        }

    //  NRS/3-Part dialogue
        if(otherUrl == url) //Change the url into a specific character's
        {
            with(pet_obj)
            {
                if(variable_instance_exists(id,"diag_text"))
                {
                    diag_nrs_p1 = other.player; //This will decide which character will speak first! If it's the opponent use (otherPlayer) instead.
                    diag_nrs = true; //Sets the 3-Part dialogue to happen.
                    diag_nrs_diag = [
                    "Hey, I know you! I will beat you up!",
                    "So you left us for someone else, and now you've come back to beat us up?",
                    "I-I had to do what was best for all of us, I wished you weren't dragged into this."]
                }

                //If your portrait has multiple sprite indexes. You can change them during the interaction!
                switch(diag_nrs_state)
                {
                    case 0: //First Message
                        other.diag_index = 1;
                        break;
                    case 1: //Second Message
                        other.diag_index = 1;
                        break;
                    case 2: //Last Message
                        other.diag_index = 2;
                        break;
                }
            }
        }
    */
    }
}
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
#define do_traveller_colors
{
    //this function makes it so the colors alternate between all 7 elemental colors
    //what's nice is that because it doesn't use init_shader, i can give them their eye colors

    //if color idle timer is 0, count as a new color
    if (travel_col_time == 0)
    {
        //if it reaches 7 it should reset back to 0 (anemo)
        travel_col_cur ++;
        if (travel_col_cur >= 7) travel_col_cur = 0;
    }
    
    if (travel_col_lerp == 0) travel_col_time ++; //if the lerping isn't active, count the color idle timer up

    if (travel_col_time >= 30) //if the color idle timer is 30 or up, stop it and start lerping
    {
        travel_col_lerp ++; //anim lerp rate

        for (var i = 0; i <= 2; i++)
        {
            if (travel_col_cur >= 1) lerp_array[i] = floor(lerp(travel_col[travel_col_cur-1][i], travel_col[travel_col_cur][i], travel_col_lerp/10));
            else lerp_array[i] = floor(lerp(travel_col[6][i], travel_col[travel_col_cur][i], travel_col_lerp/10));
        }
    
        if (travel_col_lerp >= 10)
        {
            travel_col_time = 0;
            travel_col_lerp = 0;
        }
    }
    
    set_article_color_slot(0, lerp_array[0], lerp_array[1], lerp_array[2], 1);
    set_character_color_slot(0, lerp_array[0], lerp_array[1], lerp_array[2], 1);
}
#define voice_array (num) //this is just for the attack stuff specifically
{
    if (lang != 0) switch (num)
    {
        case 0: //jump / move
            var number = random_func(6, 5, true)+1;
            cur_voiceclip[0] = sound_play(sound_get("va_" + string(lang) + "_jump" + string(number)));
            break;
        case 1: //weak attacks
            var number = random_func(6, 7, true)+1;
            cur_voiceclip[0] = sound_play(sound_get("va_" + string(lang) + "_attack_weak" + string(number)));
            break;
        case 2: //medium attacks
            var number = random_func(6, 3, true)+1;
            cur_voiceclip[0] = sound_play(sound_get("va_" + string(lang) + "_attack_medium" + string(number)));
            break;
        case 3: //strong attacks
            var number = random_func(6, 3, true)+1;
            cur_voiceclip[0] = lang == "kr" ? sound_play(sound_get("va_kr_attack_strong")) : sound_play(sound_get("va_" + string(lang) + "_attack_strong" + string(number)));
            break;
        case 4: //specials
            var number = random_func(6, 6, true)+1;
            cur_voiceclip[0] = sound_play(sound_get("va_" + string(lang) + "_skill" + string(number)));
            break;
        case 5: //burst / final smash
            var number = random_func(6, 3, true)+1;
            cur_voiceclip[0] = sound_play(sound_get("va_" + string(lang) + "_burst" + string(number)));
            break;
        case 6: //hurt weak
            var number = random_func(6, 6, true)+1;
            cur_voiceclip[0] = sound_play(sound_get("va_" + string(lang) + "_hurt_weak" + string(number)));
            break;
        case 7: //hurt hard
            var number = random_func(6, 6, true)+1;
            cur_voiceclip[0] = sound_play(sound_get("va_" + string(lang) + "_hurt_strong" + string(number)));
            break;
        case 8: //reaching 100%
            var number = random_func(6, 3, true)+1;
            cur_voiceclip[0] = sound_play(sound_get("va_" + string(lang) + "_100_" + string(number)));
            break;
        case 9: //selected voice
            var number = random_func(6, 3, true)+1;
            sound_play(sound_get("va_" + string(lang) + "_intro" + string(number)));
            break;
    }


    /*
    switch (lang)
    {
        case 1: //japanese (jump)
            switch (num)
            {
                case 0: //jump / move
                    var number = random_func(6, 5, true)+1;
                    cur_voiceclip[0] = sound_play(sound_get("va_jp_jump" + string(number)));
                    break;
                case 1: //weak attacks
                    var number = random_func(6, 7, true)+1;
                    cur_voiceclip[0] = sound_play(sound_get("va_jp_attack_weak" + string(number)));
                    break;
                case 2: //medium attacks
                    var number = random_func(6, 3, true)+1;
                    cur_voiceclip[0] = sound_play(sound_get("va_jp_attack_medium" + string(number)));
                    break;
                case 3: //strong attacks
                    var number = random_func(6, 3, true)+1;
                    cur_voiceclip[0] = sound_play(sound_get("va_jp_attack_strong" + string(number)));
                    break;
                case 4: //specials
                    var number = random_func(6, 6, true)+1;
                    cur_voiceclip[0] = sound_play(sound_get("va_jp_skill" + string(number)));
                    break;
                case 5: //burst / final smash
                    var number = random_func(6, 3, true)+1;
                    cur_voiceclip[0] = sound_play(sound_get("va_jp_burst" + string(number)));
                    break;
                case 6: //hurt weak
                    var number = random_func(6, 6, true)+1;
                    cur_voiceclip[0] = sound_play(sound_get("va_jp_hurt_weak" + string(number)));
                    break;
                case 7: //hurt hard
                    var number = random_func(6, 6, true)+1;
                    cur_voiceclip[0] = sound_play(sound_get("va_jp_hurt_strong" + string(number)));
                    break;
                case 8: //reaching 100%
                    var number = random_func(6, 3, true)+1;
                    cur_voiceclip[0] = sound_play(sound_get("va_jp_100_" + string(number)));
                    break;
                case 9: //selected voice
                    var number = random_func(6, 3, true)+1;
                    sound_play(sound_get("va_jp_intro" + string(number)));
                    break;
            }
            break;
        case 2: //english (attack)
            switch (num)
            {
                case 0: //jump / move
                    var number = random_func(6, 5, true)+1;
                    cur_voiceclip[0] = sound_play(sound_get("va_en_jump" + string(number)));
                    break;
                case 1: //weak attacks
                    var number = random_func(6, 7, true)+1;
                    cur_voiceclip[0] = sound_play(sound_get("va_en_attack_weak" + string(number)));
                    break;
                case 2: //medium attacks
                    var number = random_func(6, 3, true)+1;
                    cur_voiceclip[0] = sound_play(sound_get("va_en_attack_medium" + string(number)));
                    break;
                case 3: //strong attacks
                    var number = random_func(6, 3, true)+1;
                    cur_voiceclip[0] = sound_play(sound_get("va_en_attack_strong" + string(number)));
                    break;
                case 4: //specials
                    var number = random_func(6, 6, true)+1;
                    cur_voiceclip[0] = sound_play(sound_get("va_en_skill" + string(number)));
                    break;
                case 5: //burst / final smash
                    var number = random_func(6, 3, true)+1;
                    cur_voiceclip[0] = sound_play(sound_get("va_en_burst" + string(number)));
                    break;
                case 6: //hurt weak
                    var number = random_func(6, 6, true)+1;
                    cur_voiceclip[0] = sound_play(sound_get("va_en_hurt_weak" + string(number)));
                    break;
                case 7: //hurt hard
                    var number = random_func(6, 6, true)+1;
                    cur_voiceclip[0] = sound_play(sound_get("va_en_hurt_strong" + string(number)));
                    break;
                case 8: //reaching 100%
                    var number = random_func(6, 3, true)+1;
                    cur_voiceclip[0] = sound_play(sound_get("va_en_100_" + string(number)));
                    break;
                case 9: //selected voice
                    var number = random_func(6, 3, true)+1;
                    sound_play(sound_get("va_en_intro" + string(number)));
                    break;
            }
            break;
        case 3: //chinese (special)
            switch (num)
            {
                case 0: //jump / move
                    break;
                case 1: //weak attacks
                    break;
                case 2: //medium attacks
                    break;
                case 3: //strong attacks
                    break;
                case 4: //specials
                    break;
                case 5: //burst / final smash
                    break;
                case 6: //hurt weak
                    break;
                case 7: //hurt hard
                    break;
                case 8: //reaching 100%
                    break;
                case 9: //selected voice
                    var number = random_func(6, 3, true)+1;
                    sound_play(sound_get("va_cn_intro" + string(number)));
                    break;
            }
            break;
        case 4: //korean (shield)
            switch (num)
            {
                case 0: //jump / move
                    break;
                case 1: //weak attacks
                    break;
                case 2: //medium attacks
                    break;
                case 3: //strong attacks
                    break;
                case 4: //specials
                    break;
                case 5: //burst / final smash
                    break;
                case 6: //hurt weak
                    break;
                case 7: //hurt hard
                    break;
                case 8: //reaching 100%
                    break;
                case 9: //selected voice
                    var number = random_func(6, 3, true)+1;
                    sound_play(sound_get("va_kr_intro" + string(number)));
                    break;
            }
            break;
    }
    */
}
#define do_electro_particles(x, y, pulse_rate, random, effect)
{
	if (state_timer % pulse_rate == 0)
	{
		var random_x = (random_func(9, 5, true)-2)*8;
		var random_y = (random_func(10, 5, true)-2)*8;

		var elec_angle = random_func(7, 360, true);

		var elec_dir = random_func(8, 2, true)-1;
		if (elec_dir == 0) elec_dir = spr_dir;

		switch (effect)
		{
			case 0:
				var elec_random = random_func(6, 3, true);
    			var electro_effect = spawn_hit_fx(x+(random_x*random), y+(random_y*random)-32, fx_electro[elec_random]);
				break;
			case 1:
    	    	var electro_effect = spawn_hit_fx(x+(random_x*random), y+(random_y*random)-32, fx_electro_aura);
            	electro_effect.depth = -3;
				break;
		}

		electro_effect.draw_angle = elec_angle;
    	electro_effect.spr_dir = elec_dir;
	}
}