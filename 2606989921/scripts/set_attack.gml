#macro AT_BSPECIAL AT_DSPECIAL_2


if (attack == AT_DSPECIAL && move_cooldown[AT_NTHROW] < 1) attack = AT_NTHROW; //GRAB
else if (attack == AT_JAB) attack = AT_FTILT; //NTILT
else if (attack == AT_DATTACK && down_down) attack = AT_DTILT;

//==========================================================
// BSPECIAL input
if (attack == AT_FSPECIAL && (spr_dir * at_prev_spr_dir < 0))
{
    attack = AT_BSPECIAL; //conversion
    spr_dir = sign(at_prev_spr_dir); //dont flip
    clear_button_buffer(PC_SPECIAL_PRESSED);
}

if (attack == AT_BSPECIAL)
{
    if (msg_bspecial_last_move.target == noone)
    {
        attack = at_prev_attack;
    }
    else if (msg_bspecial_last_move.target.msg_is_missingno)
    {
        attack = msg_bspecial_last_move.move;
        if (attack == AT_BSPECIAL) //copied a Missingno's Bspecial! commutative steal
            steal_move_data(msg_bspecial_last_move.target, msg_bspecial_last_move.move);
        //...if not self; apply runes?
    }
    else
    {
        sound_play(sound_get("eden2"), false, noone, 0.6, 0.6 + GET_RNG(6, 0x07)/15.0);
        steal_move_data(msg_bspecial_last_move.target, msg_bspecial_last_move.move);
    }

    move_cooldown[attack] = 0; //cannot prevent use of BSPEC, whatever it is at the moment
    set_attack_value(attack, AG_CATEGORY, 2); //Allowed at any time because of special input
    msg_is_bspecial = true;
}
else
{
    reset_attack_value(attack, AG_CATEGORY);
    msg_is_bspecial = false;
}

//"morph" effect attacks
if (attack == AT_BSPECIAL)
|| (attack == AT_NSPECIAL)
{
    msg_unsafe_effects.quadrant.gameplay_timer = 1;
    msg_unsafe_effects.quadrant.freq = 1;
    msg_unsafe_effects.quadrant.impulse = 4;
    msg_unsafe_effects.shudder.impulse = 4;
}

//===========================================================
// RNG for Alternative sprites
msg_alt_sprite = noone;
var list = get_attack_value(attack, AG_MSG_ALT_SPRITES);
if (list != 0) switch (attack)
{
    case AT_FSTRONG:
        var active = GET_RNG(10, 0x07) < 1;
        if (active) msg_alt_sprite = list[0];
        set_hitbox_value(AT_FSTRONG, 1, HG_HIT_SFX, asset_get(active ? "sfx_burnconsume" : "sfx_ell_arc_small_missile_ground"));
    break;
    case AT_NAIR:
        //TBD: "seen" criteria tracked across game session
        var active = GET_RNG(10, 0x07) < 3;
        if (active) msg_alt_sprite = list[0];
    break;
    case AT_FAIR:
        //if not online; check if self has negative percent
        var active = (!msg_is_online || !msg_is_local)
                  && 0 > get_player_damage(msg_is_online ? msg_get_local_player() : player);
        if (active) msg_alt_sprite = list[0];
        set_window_value(AT_FAIR, 1, AG_WINDOW_SFX,asset_get( active ? "sfx_clairen_arc_lose" : "sfx_swipe_weak2"));
    break;
    case AT_DAIR:
        var active = GET_RNG(10, 0x07) < 3;
        if (active) set_hitbox_value(AT_DAIR, 3, HG_PROJECTILE_SPRITE, list[1]);
              else  set_hitbox_value(AT_DAIR, 3, HG_PROJECTILE_SPRITE, list[0])
    break;
    case AT_NSPECIAL:
        var rng = GET_RNG(20, 0x03);
        if (rng < array_length(list)) msg_alt_sprite = list[rng];
    break;
    case AT_TAUNT:
        msg_alt_taunt_flag = 0; //default
        reset_window_value(AT_TAUNT, 1, AG_WINDOW_SFX);
        var rng = GET_RNG(10, 0x0F);

        if (msg_can_control_taunt) && (up_down - down_down != 0)
            rng = (up_down ? 4 : 1);

        if (rng < 2) //gaster
        { msg_alt_taunt_flag = 1; msg_alt_sprite = list[0]; set_window_value(AT_TAUNT, 1, AG_WINDOW_SFX, sound_get("hands")); }
        else if (rng < 5) //majora
        { msg_alt_taunt_flag = 2; msg_alt_sprite = list[1]; set_window_value(AT_TAUNT, 1, AG_WINDOW_SFX, sound_get("ben"));}
        else if (rng < 7) //fred
        { set_window_value(AT_TAUNT, 1, AG_WINDOW_SFX, sound_get("fred"));}
    break;
}

//=======================================================================
#define steal_move_data(target_id, target_move)
{
    with (target_id)
    {
        var num_windows = get_attack_value(target_move, AG_NUM_WINDOWS);
        var num_hitboxes = get_num_hitboxes(target_move);
    }
    
    var k = 0; //windows and hitboxes
    var i = 0; //for indexes
    var temp = 0;
    
    //Move Indexes
    for (i = 0; i < 100; i++) 
    {
        with (target_id) { temp = get_attack_value(target_move, i); }
        set_attack_value(AT_DSPECIAL_2, i, temp);
    }
    //Window Indexes
    for (k = 1; k <= num_windows; k++)
    {
        for (i = 0; i < 100; i++) 
        {
            with (target_id) { temp = get_window_value(target_move, k, i); }
            //softlock prevention: no looping windows
            if (i == AG_WINDOW_TYPE) 
            { temp = temp == 9 ? 0 : (temp == 10 ? 8 : temp) }
            else if (i == AG_WINDOW_LENGTH) 
            { temp = clamp(temp, 0, 60) }
            set_window_value(AT_DSPECIAL_2, k, i, temp);
        }
    }
    set_num_hitboxes(AT_DSPECIAL_2, num_hitboxes);
    //Hitbox Indexes
    for (k = 1; k <= num_hitboxes; k++)
    {
        for (i = 0; i < 100; i++) 
        {
            with (target_id) { temp = get_hitbox_value(target_move, k, i); }
            if (i == HG_HITBOX_Y || i == HG_HITBOX_X) 
            { temp = clamp(temp, -500, 500) }
            set_hitbox_value(AT_DSPECIAL_2, k, i, temp);
        }
    }
    
    //allow all moves no matter the situation
    set_attack_value(AT_DSPECIAL_2, AG_CATEGORY, 2);
}

// #region vvv LIBRARY DEFINES AND MACROS vvv
// DANGER File below this point will be overwritten! Generated defines and macros below.
// Write NO-INJECT in a comment above this area to disable injection.
#define GET_RNG(offset, mask) // Version 0
    // ===========================================================
    // returns a random number from the seed by using the mask.
    // uses "msg_unsafe_random" implicitly.
    return (mask <= 0) ? 0
           :((msg_unsafe_random >> offset) & mask);

#define msg_get_local_player // Version 0
    // get closest local player
    var best_player = player;
    var best_distance = 9999999;
    with (oPlayer)
    {
        if (msg_is_local) && (point_distance(other.x, other.y, x, y) < best_distance)
            best_player = player;
    }
    return best_player;
// DANGER: Write your code ABOVE the LIBRARY DEFINES AND MACROS header or it will be overwritten!
// #endregion