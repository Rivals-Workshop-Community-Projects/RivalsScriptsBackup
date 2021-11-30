// MunoPhone Touch code - don't touch
// should be at TOP of file
muno_event_type = 1;
user_event(14);

//if phone_cheats[CHEAT_FLY] && !shield_down vsp = -1;

//=============================================================
//Levitate
do_levitate(uno_lev_height_min + uno_lev_offset,
            uno_lev_height_mid + uno_lev_offset,
            uno_lev_height_max + uno_lev_offset);

// "Pratland" time calculation
if (state == PS_PRATFALL && state_timer == 0 && (lev_pratland_timer <= 0))
{
    lev_pratland_timer = prat_land_time;
    if (parry_was_attacking) lev_pratland_timer += parry_stun_extra_time;
    if (extended_parry_lag)
    {
        //parry stun goes from 60 to 100 frames based on distance (150 to 600)
        lev_pratland_timer = clamp( (4/45.0) * parry_distance + (160.0/3.0), 60, 100)
        lev_pratland_timer += (parry_was_attacking ? 10 : 0)
    }

    lev_pratland_timer = floor(lev_pratland_timer);
}

if (lev_is_grounded)
{
    //reset once-per-airtime stuff!
    djumps = 0;
    has_walljump = true;
    if (lev_parry_cooldown == 0) has_airdodge = true;

    //pratland sends straight to PS_IDLE_AIR when it ends 
    //(cases where you fastfall from prat)
    if (prev_state == PS_PRATLAND) set_state(PS_PRATFALL);
    
    switch (state)
    {
        case PS_PRATFALL: 
            if (lev_pratland_timer > 0) lev_pratland_timer--;
            else 
            {
                lev_pratland_timer = 0;
                set_state(PS_IDLE_AIR);
                //Dan why isnt this reset smh
                parry_was_attacking = false;
            }
        break;

        case PS_IDLE_AIR:
            //simulated walkturn
            if (left_down - right_down == unown_looking_dir)
            && !(unown_turning_timer > 0)
            {
                unown_looking_dir *= -1;
                unown_turning_timer = unown_turning_time_per_frame * 2;
            }
        break;
    }
}

if (state_cat == SC_HITSTUN) || (state == PS_PRATFALL)
{
    can_fast_fall = false;
}
else if !(fast_falling || state == PS_ATTACK_AIR)
{
    can_fast_fall = true;
}

//rising fastfall check
if (!fast_falling && down_hard_pressed && !lev_is_grounded && free) 
 && can_fast_fall && (vsp < 0)
{
    spawn_hit_fx( x, y, unown_fastfall_vfx);
    vsp = fast_fall;
    fast_falling = true;
}

//=============================================================
//Taunt input
if (state_cat == SC_AIR_NEUTRAL && taunt_pressed)
{
    set_attack(AT_TAUNT);
}

//=============================================================
//Parry input
if (state == PS_AIR_DODGE && air_dodge_dir == 0 && window == 1)
{
    has_airdodge = false;
    clear_button_buffer(PC_SHIELD_PRESSED);
    //AT_EXTRA_1 is the parry.
    var pseudogrounded = ground_test(uno_lev_height_max + uno_lev_offset, true);
    //set_attack.gml is not called. Dan pls.
    set_attack( pseudogrounded ? AT_EXTRA_1 : unown_form_data[UNOWN_ATK.QM].atk);
    if (pseudogrounded) lev_parry_cooldown = lev_parry_cooldown_max;
    unown_attack_is_fresh = true;
    
    hurtbox_spr = unown_form_data[UNOWN_ATK.QM].hurtbox;
    unown_current_form = UNOWN_ATK.QM;
    //separate invincibility. DAN PLS
    hurtboxID.dodging = false;
    //this is what controls the white overlay!? DAN STAHP
    hurtboxID.sprite_index = get_attack_value(attack, AG_HURTBOX_SPRITE);

    lev_bypass = false; //failsafe
}

if (lev_parry_cooldown > 0) 
{
    lev_parry_cooldown = clamp(lev_parry_cooldown - 1, 0, lev_parry_cooldown_max);
    if (lev_parry_cooldown == 0) has_airdodge = true;
}

//once per airtime moves
if (lev_is_grounded || !free)
{
    unown_c_used = false;
}

//=============================================================
//turning animation
unown_turning_timer = max(0, unown_turning_timer - 1);
if (state == PS_IDLE_AIR)
&& (unown_turning_timer == unown_turning_time_per_frame)
{
    spr_dir = unown_looking_dir;
}

// assymetrical hurtboxes
if (prev_spr_dir != spr_dir)
&& (unown_form_data[unown_current_form].left_hurtbox != noone)
{
    hurtbox_spr = (spr_dir > 0) ? unown_form_data[unown_current_form].hurtbox
                                : unown_form_data[unown_current_form].left_hurtbox;
    if !(state == PS_ATTACK_GROUND || state == PS_ATTACK_AIR)
    { hurtboxID.sprite_index = hurtbox_spr; }
}
prev_spr_dir = spr_dir;

//=============================================================================
//Word typing
if (unown_collect_dictionary_entries)
{
    get_extra_dictionary_entries();
    unown_collect_dictionary_entries = false;
}

if (unown_attack_is_fresh)
{
    user_event(1);
}

//=============================================================================
//Form stats
if (unown_recalculate_stats)
{
    unown_recalculate_stats = false;
    
    //Apply form's speed and weight
    var bonus = unown_current_bonus;
    var form_accel = unown_form_data[unown_current_form].speed;
    var form_weight = unown_form_data[unown_current_form].weight;
    
    knockback_adj = lerp(form_weight, form_weight+unown_kbadjust_bonus, bonus);
    air_accel     = lerp(form_accel,  form_accel+unown_accel_bonus, bonus);
    air_max_speed = lerp(unown_maxspeed_base, unown_maxspeed_base+unown_maxspeed_bonus, bonus);
}


//=============================================================================
#define do_levitate(lev_min, lev_mid, lev_max)
{
    lev_is_grounded = false;
    var lev_prev_state = lev_state;
    if (!free) lev_prev_state = 3;
    
    //cases where levitate turns off
    if (state_cat == SC_HITSTUN) || (vsp < -4)
    || (state == PS_ATTACK_AIR || state == PS_ATTACK_GROUND) && lev_bypass
    || (state == PS_AIR_DODGE) //allows wavedash

    || (state == PS_TECH_GROUND && window < 1) //allows teching
    || (state == PS_TECH_BACKWARD && window < 2)
    || (state == PS_TECH_FORWARD && window < 2)
    {
        lev_state = 0;
        if (lev_prev_state != 0) { lev_state_timer = 0; }
                            else { lev_state_timer++; }
        return;
    }
    //else
    lev_bypass = false;
    
    var check_plats = !((lev_prev_state == 0 && down_down) || down_hard_pressed);
    
    var low_test = ground_test(lev_min, check_plats);
    var mid_test = ground_test(lev_mid, check_plats);
    var high_test= ground_test(lev_max, check_plats);
    
    //0 aerial, 1 high-lev, 2 mid-lev, 3 low-lev
    lev_state = (low_test + mid_test + high_test);
    if (lev_prev_state != lev_state) { lev_state_timer = 0; }
                                else { lev_state_timer++; }
    
    if (lev_state > 0)
    {
        lev_is_grounded = true;
        vsp -= gravity_speed; //cancel gravity
        
        switch (lev_state)
        {
            case 1: //high: from negative to positive VSP
            {
                var target_vsp = min(lev_target_vsp, -lev_target_vsp + lev_state_timer * lev_target_accel);
                vsp += (vsp >= target_vsp) ? lev_target_accel : 0.6 * gravity_speed;
                
                //unstuck from VSP 0
                if (lev_prev_state == 2) 
                { vsp = lerp(vsp, -lev_target_vsp, 0.35); }
            }break;
            case 2: //mid: from positive to negative VSP
            {
                var target_vsp = max(-lev_target_vsp, lev_target_vsp - lev_state_timer * lev_target_accel);
                vsp -= (vsp <= target_vsp) ? lev_target_accel : 2 * gravity_speed;
                
                //unstuck from VSP 0
                if (lev_prev_state == 1) 
                { vsp = lerp(vsp, lev_target_vsp, 0.35); }
            }break;
            case 3: //low: hard negative pushback
            {
                vsp = max(-3, min(vsp - max(gravity_speed, min(2, vsp)), 6));
            }break;
        }
    }
    
    return;
}

//=============================================================================
#define ground_test(ydist, check_plat)

var val = place_meeting(x, y+ydist, asset_get("par_block"));
if (check_plat && !val)
{
    var left_check = 18;
    var right_check = 18;
    //can't use place_meeting here
    //plats could screw detection by overlapping with top half of collider
    val = (noone != collision_rectangle(x+left_check, y+1, x-right_check, y+ydist, 
                                        asset_get("par_jumpthrough"), true, true)
        && noone == collision_line(x+left_check, y-2, x-right_check, y-2, 
                                   asset_get("par_jumpthrough"), true, true));
}

return val;

//=============================================================================
// Collect extra entries from other mods
#define get_extra_dictionary_entries()
{
    var list = [];
    with (oPlayer) if (self != other)
    {
        var char_name = get_char_info(player, INFO_STR_NAME);
        var char_author = get_char_info(player, INFO_STR_AUTHOR); //broken?
        with (other)
        {
            list = string_split(char_name);
            for (var i = 0; i < array_length(list); i++)
                insert_in_trie(unown_dictionary, list[i]);

            list = string_split(char_author);
            for (var i = 0; i < array_length(list); i++)
                insert_in_trie(unown_dictionary, list[i]);
        }
    }
    
    //list = string_split(get_stage_data(SD_???));
    //for (var i = 0; i < array_length(list); i++)
    //    insert_in_trie(unown_dictionary, list[i]);
}
//=============================================================================
#define string_split(str)
{
    var output = []; 
    var o = 0;
    var length = string_length(str);
    var stop = false;
    var i = 1;
    while (i < length)
    {
        var n = 1;
        while (" " != string_char_at(str, i + n) && ((i + n) <= length)) n++;
        output[o] = string_copy(str, i, n); o++;
        i += n + 1;
    }
    
    return output;
}

#macro TERMINATOR  "_"
//=============================================================================
#define insert_in_trie(top_trie, word)
{
    word = string_letters(string_lower(word));
    var word_length = string_length(word);
    if (word_length < 2) return;
    var cur_trie = top_trie;
    for (var cur_index = 1; cur_index <= word_length; cur_index++)
    {
        var letter = string_char_at(word, cur_index);
        if (letter in cur_trie)
        {
            cur_trie = variable_instance_get(cur_trie, letter);
        }
        else
        {
            variable_instance_set(cur_trie, letter, {});
            cur_trie = variable_instance_get(cur_trie, letter);
        }
    }
    
    //mark path as valid
    variable_instance_set(cur_trie, TERMINATOR, true);
}
