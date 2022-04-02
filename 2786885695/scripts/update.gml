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


//deactivate damage numbers display
if (display_numbers_timer < 121) display_numbers_timer ++;
if (display_numbers_timer < 120 && taunt_pressed) display_damage_numbers = false;



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

///////////////////////////////////////////////////////////////// NORMALS /////////////////////////////////////////////////////////////////



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

///////////////////////////////////////////////////////////////// SPECIALS /////////////////////////////////////////////////////////////////



//  N-SPECIAL

//this one checks if keqing is aiming or not
//under 0 and 0 = not aiming || over 0 = aiming
if (attack != AT_NSPECIAL && window != 2 || state != PS_ATTACK_AIR && state != PS_ATTACK_GROUND) marker_aim_timer = -1;

//aim ambience
if (is_attacking && attack == AT_NSPECIAL && window_timer == 0 && window == 2) sound_play(sfx_nspec_aim, true);
else if (!is_attacking || attack != AT_NSPECIAL || window != 2) sound_stop(sfx_nspec_aim);

//stilleto marking foes code
if (stilleto_id != noone)
{
    artc_marker.x = stilleto_id.x;
    artc_marker.y = stilleto_id.y-stilleto_id.char_height/2;
}
if (stilleto_id == self) stilleto_id = noone;

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
if (is_attacking && attack == AT_NSPECIAL_2 && window_timer == 0)
{
    if (window == 3) spawn_hit_fx(x, y-32, fx_nspec_warpstart);
    if (window == 4) color_outline_timer = color_outline_timer_max;
}

if (color_outline_timer > 0) color_outline_timer --;

//no outline shenanigans
//also has bar burning compatibility
if (!is_gb && "holyburning" in self && !holyburning)
{
    outline_color = [
        floor(lerp(0, get_color_profile_slot_r(alt_cur, 0), color_outline_timer/color_outline_timer_max)),
        floor(lerp(0, get_color_profile_slot_g(alt_cur, 0), color_outline_timer/color_outline_timer_max)),
        floor(lerp(0, get_color_profile_slot_b(alt_cur, 0), color_outline_timer/color_outline_timer_max))];
    init_shader();
}


//HUD stuff
if ((state == PS_ATTACK_GROUND || state == PS_ATTACK_AIR) && (attack == AT_NSPECIAL || attack == AT_NSPECIAL_2)) using_nspec = true;
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
//this decides when she speaks
//i need to see how i can also cut her already playing voicelines when she is hurt
/*
if (voice_active)
{
    var should_speak = random_func(7, 2, true); //0-1
    if (should_speak == 0)
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
                        case AT_DATTACK: case AT_NAIR: case AT_FAIR: case AT_UAIR:
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
    if (window_timer == 0 && window == 1)
    {
        if (attack == AT_BURST) voice_array(5);
        if (attack == AT_INTRO) voice_array(9);
    }
}
*/

//dialouge buddy
dialogue_buddy_compat();

//final smash/burst
if (burst_charge >= 200) burst_ready = true;
else burst_ready = false;

if ("fs_char_initialized" in self && fs_char_initialized)
{
    allow_burst_UI = true;

    fs_using_final_smash = used_burst;
    burst_charge = fs_charge;
}

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
/*
#define voice_array (num) //this is just for the attack stuff specifically
{
    if (lang == 0) //japanese
    {
        switch (num)
        {
            case 0: //jump / move
                var number = random_func(6, 5, true)+1;
                sound_play(sound_get("va_jp_jump" + string(number)));
                break;
            case 1: //weak attacks
                var number = random_func(6, 7, true)+1;
                sound_play(sound_get("va_jp_attack_weak" + string(number)));
                break;
            case 2: //medium attacks
                var number = random_func(6, 3, true)+1;
                sound_play(sound_get("va_jp_attack_medium" + string(number)));
                break;
            case 3: //strong attacks
                var number = random_func(6, 3, true)+1;
                sound_play(sound_get("va_jp_attack_strong" + string(number)));
                break;
            case 4: //specials
                var number = random_func(6, 6, true)+1;
                sound_play(sound_get("va_jp_skill" + string(number)));
                break;
            case 5: //burst / final smash
                var number = random_func(6, 3, true)+1;
                sound_play(sound_get("va_jp_burst" + string(number)));
                break;
            case 6: //hurt weak
                var number = random_func(6, 6, true)+1;
                sound_play(sound_get("va_jp_hurt_weak" + string(number)));
                break;
            case 7: //hurt hard
                var number = random_func(6, 6, true)+1;
                sound_play(sound_get("va_jp_hurt_strong" + string(number)));
                break;
            case 8: //reaching 100%
                var number = random_func(6, 3, true)+1;
                sound_play(sound_get("va_jp_100_" + string(number)));
                break;
            case 9: //intro - it's the voicelines from when she is joining the party
                //var number = random_func(6, 3, true)+1;
                //sound_play(sound_get("va_jp_intro" + string(number)));
                break;
        }
    }
    //else if (lang == 1) //english
}
*/