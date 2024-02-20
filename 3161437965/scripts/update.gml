//update.gml

window_end_time = floor(get_window_value(attack, window, AG_WINDOW_LENGTH) * ((get_window_value(attack, window, AG_WINDOW_HAS_WHIFFLAG) && !has_hit) ? 1.5 : 1));
last_window = get_attack_value(attack, AG_NUM_WINDOWS);

//nspecial
move_cooldown[AT_NSPECIAL] = 2;
if (special_pressed && special_counter == 0 && !using_stored_attack && !was_parried &&
    state != PS_PRATFALL && state != PS_PRATLAND && state_cat != SC_HITSTUN && state != PS_DEAD && state != PS_RESPAWN)
{
    //LOAD STORED ATTACK
    if (has_saved_state &&
        ((state == PS_ATTACK_GROUND || state == PS_ATTACK_AIR) && //the condition checks if chara is attacking, not using the other specials OR the state timer is more than 0
        (attack != AT_FSPECIAL && attack != AT_USPECIAL && attack != AT_DSPECIAL || state_timer > 0) && //it bypasses the double input you normally would have gotten otherwise
        is_special_pressed(DIR_ANY) ||
        is_special_pressed(DIR_NONE)))
    {
        //visual/audio cues
        save_flash_time = 15;
        sound_play(sound_get("sfx_load"));
        spawn_hit_fx(x, y - 32, fx_savestate);

        if (saved_state.attack > 0)
        {
            set_attack_value(saved_state.attack, AG_CATEGORY, 2); //lets chara air tilt lol
            if (saved_state.free && saved_state.category == 1 && !free) //if the stored attack is an aerial and nspec is used on the ground (add exceptions)
            {
                free = true;
                vsp = -short_hop_speed;
            }

            //use attack + skip to the middle of the first window (add exceptions) + play whiff sound if the window starts after it should be playing

            //attack specific stuff
            if ((state == PS_ATTACK_GROUND || state == PS_ATTACK_AIR) && (attack == AT_USPECIAL || attack == AT_FSPECIAL || attack == AT_DSPECIAL)) loaded_off_uspec = true;
            if (saved_state.attack == AT_DSTRONG)
            {
                dstrong_fall_time = dstrong_cancel_time;
                y -= 38;
            }
            if (saved_state.attack == AT_FSPECIAL)
            {
                window = saved_state.window;
                window_timer = saved_state.window_timer;
                fspec_charge = saved_state.fspec_charge;
            }
            else uses_afterimage_trail = false;

            set_attack(saved_state.attack);
            if (saved_state.strong_window == 0)
            {
                window_timer = floor(get_window_value(saved_state.attack, 1, AG_WINDOW_LENGTH)/2);
                if (!hitpause && window_timer > get_window_value(saved_state.attack, 1, AG_WINDOW_SFX_FRAME)) sound_play(get_window_value(saved_state.attack, 1, AG_WINDOW_SFX));
            }
            else
            {
                //strong_charge = saved_state.strong_charge;
                window = saved_state.strong_window + 1;
                window_timer = 0;
            }
            hsp = clamp(hsp, -load_max_speed, load_max_speed);
            using_stored_attack = true;

            //stored attack is used up, reset everything
            reset_attack_value(saved_state.attack, AG_CATEGORY);
            //saved_state.strong_charge = 0;
            saved_state.fspec_charge = 0;
            has_saved_state = false;
        }
    }
    //SAVE STORED ATTACK
    else if (!has_saved_state && (state == PS_ATTACK_GROUND || state == PS_ATTACK_AIR) && !get_attack_value(attack, AG_CANT_SAVE_ATTACK))
    {
        if (attack != AT_FSPECIAL && attack != AT_USPECIAL && attack != AT_DSPECIAL || state_timer > 0)
        {
            //visual/audio cues
            save_flash_time = 15;
            sound_play(sound_get("sfx_save"));
            spawn_hit_fx(x, y - 32, fx_savestate);

            saved_state.free = free;
            saved_state.attack = attack;
            saved_state.category = get_attack_value(saved_state.attack, AG_CATEGORY);
            saved_state.strong_window = get_attack_value(saved_state.attack, AG_STRONG_CHARGE_WINDOW);
            //saved_state.strong_charge = strong_charge;
            saved_state.fspec_charge = fspec_charge;
            saved_state.window = window;
            saved_state.window_timer = window_timer;
            /*
                //saved_state.hsp = hsp;
                //saved_state.vsp = vsp;
                //saved_state.spr_dir = spr_dir;
            */

            //specific resets/state transition
            uses_afterimage_trail = false;
            if (saved_state.attack = AT_FSPECIAL) hsp /= 3;
            if (saved_state.attack != AT_USPECIAL) set_state(free ? PS_IDLE_AIR : PS_IDLE);
            else
            {
                if (vsp > -5) vsp = -5;
                set_state(PS_PRATFALL);
            }

            //prevents attacks from coming out when recorded
            clear_button_buffer(PC_ATTACK_PRESSED);
            clear_button_buffer(PC_LEFT_STRONG_PRESSED);
            clear_button_buffer(PC_RIGHT_STRONG_PRESSED);
            clear_button_buffer(PC_UP_STRONG_PRESSED);
            clear_button_buffer(PC_DOWN_STRONG_PRESSED);
            clear_button_buffer(PC_LEFT_STICK_PRESSED);
            clear_button_buffer(PC_RIGHT_STICK_PRESSED);
            clear_button_buffer(PC_UP_STICK_PRESSED);
            clear_button_buffer(PC_DOWN_STICK_PRESSED);
            has_saved_state = true;
        }
    }
    clear_button_buffer(PC_SPECIAL_PRESSED);
}


if (using_stored_attack && loaded_off_uspec && !has_hit_player && window == last_window && window_timer == window_end_time-1 && free) //cue schrodinger's pratfall
{
    set_state(PS_PRATFALL);
    loaded_off_uspec = false;
}
if (state != PS_ATTACK_GROUND && state != PS_ATTACK_AIR || attack != saved_state.attack) using_stored_attack = false;

//save move flash
if (save_flash_time > 0) save_flash_time--;

//walljump jump buffer reset cuz there's only wall frames
if (state == PS_WALL_JUMP && state_timer == 0) clear_button_buffer(PC_JUMP_PRESSED);