//update.gml

///////////////////////////////////////////////////////// USEFUL CUSTOM VARIABLES /////////////////////////////////////////////////////////

//initial check stuff
is_attacking = (state == PS_ATTACK_GROUND || state == PS_ATTACK_AIR);
is_dodging = (hurtboxID.dodging);
game_time = get_gameplay_time();
hbox_view = get_match_setting(SET_HITBOX_VIS);

if(state == PS_SPAWN && get_player_color(player) == 18) //check for motion input
{
    if(state_timer < 2)
    {    
        //RESET SLIME ALT   
        set_color_profile_slot( 18, 0, 53, 188, 255 ); //Hair
        set_color_profile_slot( 18, 1, 255, 230, 249 ); //Shirt
        set_color_profile_slot( 18, 2, 184, 119, 255 ); //Bow
        set_color_profile_slot( 18, 3, 251, 217, 175 ); //Skin
        set_color_profile_slot( 18, 4, 62, 61, 66 ); //Pants
        set_color_profile_slot( 18, 5, 132, 234, 255 ); //Sword
        set_color_profile_slot( 18, 6, 193, 55, 90 ); //Gold
        set_color_profile_slot( 18, 7, 118, 135, 183 ); //Waist
    }
	motion_timer ++;
	if(motion_timer > 20)
	{
		motion_timer = 0;
		motion_state = 0;
		motion_state2 = 0;
	}
	//Slime
	switch(motion_state)
	{
		case 0:
			motion_timer = 0;
			if(down_down)
				motion_state = 1;
			break;
		case 1:
			motion_timer = 0;
			if((down_down && left_down && spr_dir == 1) ||
				(down_down && right_down && spr_dir == -1))
				motion_state = 2;
			break;
		case 2:
			if((left_down && spr_dir == 1) || (right_down && spr_dir == -1) )
				motion_state = 3;
			break;
		case 3:
			if(special_pressed && !motion_input)
			{
				if(lang!=0)sound_play(sound_get("sl_letsgo"), false, noone, 0.8);
                white_flash_timer = 10;
				secretalt = 1;
				motion_input = true;
                init_shader();
			}
			break;
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
    uspec_grab_id = noone;
    
    if (state_timer == 0) //force reset manual offsets / rotations on new state
    {
        if (spr_angle != 0) spr_angle = 0;
        if (draw_x != 0) draw_x = 0;
        if (draw_y != 0) draw_y = 0;
    }
}

if(past_fspec_used && move_cooldown[AT_FSPECIAL] < 2) move_cooldown[AT_FSPECIAL] = 2;

if(state_cat == SC_HITSTUN || state == PS_WALL_JUMP || !free) 
{
    past_nspec_used = false;
    past_fspec_used = false;
}

if (get_player_color(player) == 30 && game_time % 7 == 0 && point_distance(0, 0, hsp, vsp) > 2.5 && visible)
{
    var fx = spawn_hit_fx(
        x + draw_x + (random_func(0, 8, false) - 4)*8,
        y + draw_y - random_func(1, 8, false)*8,
        fx_bubble_trail
    );
    fx.hsp = (random_func(2, 8, false) - 4)/4;
    fx.vsp = (random_func(3, 8, false) - 4)/2 - 1;
}

if (get_player_color(player) == 31 && game_time % 7 == 0 && point_distance(0, 0, hsp, vsp) > 2.5 && visible)
{
    var fx = spawn_hit_fx(
        x + draw_x + (random_func(0, 8, false) - 4)*8,
        y + draw_y - random_func(1, 8, false)*8,
        fx_ashe_trail
    );
    fx.hsp = (random_func(2, 8, false) - 4)/4;
    fx.vsp = (random_func(3, 8, false) - 4)/2 - 1;
}

//play intro
//if (game_time == 4 && has_intro) set_attack(AT_INTRO);

//////////////////////////////////////////////////////// CHARACTER SPECIFIC UPDATE /////////////////////////////////////////////////////////

voice_update();

with (oPlayer) 
{
	if ("past_ink_owner" not in self)
    {
    	past_ink_owner = noone;
        past_ink_r = 0;
        past_ink_b = 0;
        past_ink_y = 0;
    }
    if (past_ink_owner == other) {
	    if (!hitpause && state_cat != SC_HITSTUN)
	    {
	        if (past_ink_r > 0) past_ink_r --;
	        if (past_ink_b > 0) past_ink_b --;
	        if (past_ink_y > 0) past_ink_y --;
	
	        if (past_ink_r > 0 || past_ink_b > 0 || past_ink_y > 0)
	        {
	            if (other.game_time % 20 == 0 && visible) with (other) //Ink drippings
	            {
	                var ink_fx = ink_drip_r;
	                if (other.past_ink_b > 0) ink_fx = ink_drip_b;
	                else if (other.past_ink_y > 0) ink_fx = ink_drip_y;
	
	                fx = spawn_hit_fx(
	                    other.x - 30 + random_func(2,60,true),
	                    other.y - 10 - random_func(5,50,true),
	                    ink_fx
	                );
	                fx.depth = depth + 1;
	                fx.uses_shader = 0;
	            }
	        }
	    }
	    if (state == PS_RESPAWN || state == PS_DEAD)
	    {
	        past_ink_r = 0;
	        past_ink_b = 0;
	        past_ink_y = 0;
	    }
    }
}
with (obj_stage_article) if ("enemy_stage_article" in self)
{
    if ("past_ink_owner" not in self)
    {
        past_ink_r = 0;
        past_ink_b = 0;
        past_ink_y = 0;
        past_ink_owner = noone;
    }
    if (past_ink_owner == other)
    {
        if (!hitpause)
        {
            if (past_ink_r > 0) past_ink_r --;
            if (past_ink_b > 0) past_ink_b --;
            if (past_ink_y > 0) past_ink_y --;

            if (past_ink_r > 0 || past_ink_b > 0 || past_ink_y > 0)
            {
                if (other.game_time % 20 == 0 && visible) with (other) //Ink drippings
                {
                    var ink_fx = ink_drip_r;
                    if (other.past_ink_b > 0) ink_fx = ink_drip_b;
                    else if (other.past_ink_y > 0) ink_fx = ink_drip_y;

                    fx = spawn_hit_fx(
                        other.x - 30 + random_func(2,60,true),
                        other.y - 10 - random_func(5,50,true),
                        ink_fx
                    );
                    fx.depth = depth + 1;
                    fx.uses_shader = 0;
                }
            }
        }
    }
}
////////////////////////////////////////////////////////////////// MISC. //////////////////////////////////////////////////////////////////
if (spawn_timer == 2 || was_reloaded && spawn_timer == 2)
{
    set_color_profile_slot_range( 0, 13, 32, 32 ); // Hair
    set_color_profile_slot_range( 1, 1, 6, 18 ); // Shirt
    set_color_profile_slot_range( 2, 20, 14, 21 ); // Bow
    set_color_profile_slot_range( 3, 30, 12, 22 ); // Skin
    set_color_profile_slot_range( 4, 22, 11, 17 ); // Pants
    set_color_profile_slot_range( 5, 15, 30, 37 ); // Sword
    set_color_profile_slot_range( 6, 17, 11, 12 ); // Gold
    set_color_profile_slot_range( 7, 1, 3, 23 ); // Waist
    set_ui_element(UI_HUD_ICON, get_char_info(player, INFO_HUD));
}

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

    for (var i = 0; i < 3; i++) if (hit_effect == other.fx_hit_ink_col1[i] || hit_effect == other.fx_hit_ink_col2[i]) fx_particles = i+1;
    if (hit_effect == other.fx_hit_ink1 || hit_effect == other.fx_hit_pen_ink1 || hit_effect == other.fx_hit_ink2 || hit_effect == other.fx_hit_pen_ink2)
    {
        if (attack != AT_DSPECIAL) fx_particles = other.ink_hold+1;
    }
    if (hit_effect == other.fx_hit_pen1 || hit_effect == other.fx_hit_pen2) fx_particles = 4;
    
}
/* SLIME PORTRAIT
if(secretalt == 1)
    set_victory_portrait( sprite_get( "custom" ));*/
    
//NOTE: KEEP THIS SECTION AT THE BOTTOM OF UPDATE.GML
//unless you are adding #defines, which should be at the bottom
if (uses_custom_dusts) custom_dust_effects();
prep_hitboxes();


//custom hitbox colors system (by @SupersonicNK)
#define prep_hitboxes
{
    //Applies the hitbox sprites and prepares them to be drawn (with color!)
    with (pHitBox) if (player_id == other && "dont_color" not in self)
    {
        if ("col" not in self)
        {
            with (other)
            {
                var parent = get_hitbox_value(other.attack, other.hbox_num, HG_PARENT_HITBOX)
                var true_hbox_num = parent ? parent : other.hbox_num
                other.col = get_hitbox_value(other.attack, true_hbox_num, HG_HITBOX_COLOR);
                if (other.col == 0) other.col = c_red;
                other.shape = get_hitbox_value(other.attack, true_hbox_num, HG_SHAPE)
                other.draw_colored = true;
                if (other.type == 1) other.sprite_index = __hb_hd_spr[other.shape];
                else if (get_hitbox_value(other.attack, true_hbox_num, HG_PROJECTILE_MASK) == -1) other.mask_index = __hb_hd_spr[other.shape];
                else other.draw_colored = false;
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

#define voice_update()
	
//voice acting
if (lang != 0)
{
    if (voice_cooldown > 0 && !hitpause) voice_cooldown--;
    //galaxy detection
    if(secretalt == 1)
    {
        if(hit_player_obj != noone && hit_player_obj.activated_kill_effect)
        {
            stop_voice();
            voice_cooldown = 0;
            play_voice("sl_owned", 60);
            hit_player_obj = noone;
        }
        if(activated_kill_effect && !galaxy_sfx)
        {
            stop_voice();
            voice_cooldown = 0;
            play_voice("sl_what_are_you_doing", 60);
            galaxy_sfx = true;
        }
    }
    if (!hitpause)
    {
        var should_speak = 1; //0-1
        if (should_speak == 1)
        {
            //slime voices is different.
            if(secretalt == 1)
            {
                switch (state)
                {
                    case PS_FIRST_JUMP: case PS_DOUBLE_JUMP: case PS_WALL_JUMP: case PS_ROLL_BACKWARD: case PS_ROLL_FORWARD: case PS_AIR_DODGE:
                    case PS_WAVELAND:
                        //if (state_timer == 1) voice_array(0);
                        break;
                    case PS_ATTACK_GROUND: case PS_ATTACK_AIR:
                        if (state_timer == 1 && voice_cooldown <= 0) stop_voice();
                        if (!hitpause) //attacks
                        {
                            switch (attack)
                            {
                                case AT_JAB: //jab is special, it has multiple windows 
                                    if (window_timer == 0) {
                                        switch (window)
                                        {
                                            case 2:
                                                play_voice("sl_jab1", 60);
                                                break;
                                            case 6:
                                            voice_cooldown = 0;
                                                play_voice("sl_jab2", 60);
                                                break;
                                            case 10:
                                            voice_cooldown = 0;
                                                play_voice("sl_jab3", 60);
                                                break;
                                        }
                                    }
                                    break;
                                case AT_UTILT:
                                    if (window == 1 && window_timer == 2) 
                                        play_voice("sl_ladder", 60);
                                    break;
                                case AT_NSPECIAL: //Nspecial is quite literally special, it has multiple windows 
                                    if (window_timer == 0) {
                                        switch (window)
                                        {
                                            case 2:
                                                play_voice("sl_i_am_on_fire", voice_cooldown_set);
                                                break;
                                            case 5:
                                                play_voice(["sl_fireinhole","sl_im_going_to_camp"], voice_cooldown_set);
                                                break;
                                            case 8:
                                                //detect if you have thunder setup
                                                thunder_planted = false;
                                                with(pHitBox)
                                                {
                                                    if(player_id == other.id && attack == AT_NSPECIAL && hbox_num == 3)
                                                        other.thunder_planted = true;
                                                }
                                                if(thunder_planted)
                                                    play_voice("sl_blow", voice_cooldown_set);
                                                else
                                                    play_voice("sl_bombpl", voice_cooldown_set);
                                                break;
                                        }
                                    }
                                    break;
                                case AT_USPECIAL:
                                    if (window == 1 && window_timer == 6) 
                                        play_voice("sl_awp1", 0);
                                    break;
                                case AT_FSPECIAL:
                                    if (window == 1 && window_timer == 2) 
                                        play_voice("sl_rush_b", 120);
                                    break;
                                case AT_FSTRONG:
                                    if (window == 3 && window_timer == 0) 
                                        play_voice("sl_locknload", 100);
                                    break;
                                case AT_USTRONG:
                                    if (window == 2 && window_timer == 0) 
                                        play_voice("sl_ruined_his_day", 100);
                                    break;
                                case AT_TAUNT:
                                    if (window == 2 && window_timer == 0)
                                        play_voice("sl_made_him_cry", 120);
                                    break;
                            }
                        }
                        break;
                    case PS_RESPAWN:
                    case PS_DEAD:
                        if (state_timer == 1)
                        {
                            if(!galaxy_sfx)
                            {
                                stop_voice();
                                voice_cooldown = 0;
                                play_voice("sl_oh_no_sad", 0);
                            }
                            else
                                galaxy_sfx = false;
                        }
                        break;
                    default:
                    break;
                }
            }
            else
            //regular voice
            {
                switch (state)
                {
                    case PS_FIRST_JUMP: case PS_DOUBLE_JUMP: case PS_WALL_JUMP: case PS_ROLL_BACKWARD: case PS_ROLL_FORWARD: case PS_AIR_DODGE:
                    case PS_WAVELAND:
                        //if (state_timer == 1) voice_array(0);
                        break;
                    case PS_ATTACK_GROUND: case PS_ATTACK_AIR:
                        if (state_timer == 1 && voice_cooldown <= 0) stop_voice();

                        if (!hitpause) //attacks
                        {
                            switch (attack)
                            {
                                case AT_JAB: //jab is special, it has multiple windows 
                                    if (window_timer == 0) {
                                        switch (window)
                                        {
                                            case 2:
                                                play_voice(["attack_l1","attack_l2"], 100);
                                                break;
                                            case 10:
                                            voice_cooldown = 0;
                                                play_voice(["attack_l3","attack_l7"], voice_cooldown_set);
                                                break;
                                        }
                                    }
                                    break;
                                case AT_UTILT:
                                    if (window == 1 && window_timer == 0) play_voice("attack_l5", voice_cooldown_set);
                                    break;
                                case AT_FAIR: //fair is special, it has multiple windows 
                                    if (window_timer == 0) {
                                        switch (window)
                                        {
                                            case 2:
                                                play_voice(["attack_l1","attack_l2"], voice_cooldown_set);
                                                break;
                                            case 8:
                                            voice_cooldown = 0;
                                                play_voice(["attack_l3","attack_l7"], voice_cooldown_set);
                                                break;
                                        }
                                    }
                                    break;
                                case AT_NSPECIAL: //Nspecial is quite literally special, it has multiple windows 
                                    if (window_timer == 0) {
                                        switch (window)
                                        {
                                            case 2:
                                                play_voice(["fire1","fire2","fire3"], voice_cooldown_set);
                                                break;
                                            case 5:
                                                play_voice(["freeze1","freeze2","freeze3","freeze4"], voice_cooldown_set);
                                                break;
                                            case 8:
                                                play_voice(["thunder1","thunder2"], voice_cooldown_set);
                                                break;
                                        }
                                    }
                                    break;
                                case AT_USPECIAL:
                                    if (window == 3 && window_timer == 6) play_voice(["attack_m3","attack_m5"], 0);
                                    break;
                                case AT_FSPECIAL:
                                    if (window == 1 && window_timer == 0) play_voice(["attack_l6","fspec2"], 100);
                                    break;
                                case AT_FSTRONG:
                                    if (window == 3 && window_timer == 0) play_voice(["attack_m1","attack_m3"], voice_cooldown_set);
                                    break;
                                case AT_USTRONG:
                                    if (window == 2 && window_timer == 0) play_voice(["attack_m2","attack_m4"], 100);
                                    break;
                                case AT_TAUNT:
                                    if (window == 2 && window_timer == 0) {
                                        play_voice("taunt1", 100);
                                    }
                                    break;
                                case AT_EXTRA_1:
                                    if (window == 2 && window_timer == 0) play_voice("wait1", 0);
                                    break;
                                case AT_EXTRA_2:
                                    if (window == 2 && mako_wait_timer % 160 == 0) play_voice("sleep", 0);
                                    if (window == 3 && window_timer == 0) play_voice("sleep_awake", 0);
                                    break;
                            }
                        }
                        break;
                    case PS_HITSTUN:
                        if (state_timer == 1)
                        {
                            stop_voice();
                            var dist = point_distance(0, 0, old_hsp, old_vsp);
                            
                            if (dist > 17) play_voice(["hurt3", "hurt4", "hurt5", "hurt6"], voice_cooldown_set);
                            else if (dist > 10) play_voice(["hurt1", "hurt2"], voice_cooldown_set);
                        }
                        break;
                    case PS_RESPAWN:
                    case PS_DEAD:
                        if (state_timer == 1)
                        {
                            stop_voice();
                            voice_cooldown = 0;
                            play_voice(["death1", "death2", "death3"], 0);
                        }
                        break;
                    default:
                    break;
                }
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


#define play_voice (_string_array, _cooldown)
var arr = _string_array;
if (!is_array(arr)) arr = [_string_array];

if (lang != 0)
{
	if (voice_cooldown <= 0) 
    {
        var num = floor(random_func(6, array_length(arr), false));
        if(secretalt == 1)
        {
            cur_voiceclip[0] = sound_play(sound_get(string(arr[num])));
        }
        else
        {
            cur_voiceclip[0] = sound_play(sound_get("va_" + string(arr[num]) + "_" + string(lang)));
            voice_cooldown = _cooldown;
        }
	}
}

#define stop_voice()
sound_stop(cur_voiceclip[1]);