//ACE grab setup
msg_acemilate(hit_player_obj.attack, attack, my_hitboxID);

if (my_hitboxID.type == 1) && (my_hitboxID.damage > 0)
{ 
    if (msg_rune_flags.recoil) take_damage(player, player, 1);
    
    if (msg_rune_flags.whiff_storage)
    {
        take_damage(hit_player_obj.player, player, max(0, msg_rune_whiff_storage));
        msg_rune_whiff_storage = -1;
    }
}

if (my_hitboxID.orig_player_id != self) exit; //Only our own hitboxes

//==========================================================
// By FSTRONG charge-storage glitch's nature, every attack is 
// forced to become, functionally, a strong attack.
// Therefore; we need to apply the fix anyways (see article1_update)
// unless we want every hitbox we land to deal essentially no damage
if ("msg_last_known_damage" in hit_player_obj)
&& (hit_player_obj.msg_last_known_damage < 0)
&& (get_player_damage(hit_player_obj.player) == 0)
{
    var new_damage = hit_player_obj.msg_last_known_damage + my_hitboxID.damage;
    set_player_damage(hit_player_obj.player, new_damage);
    hit_player_obj.msg_last_known_damage = new_damage;
}
//==========================================================

//RUNE: opponent's attack variable may trigger effects...
var opponent_attack = msg_rune_flags.check_hit_opponent ? hit_player_obj.attack : noone;

//==========================================================
//Bubbles internal lockout logic (hopefully less heavy)
if (my_hitboxID.attack == AT_FSPECIAL_2) && (my_hitboxID.hbox_num == 2)
{
    var victim_player = hit_player_obj.player;
    with (pHitBox) if (orig_player_id == other)
                   && (attack == AT_FSPECIAL_2) && (hbox_num == 2)
    {
        can_hit[victim_player] = false;
    }
    msg_collective_bubble_lockout[victim_player] = msg_fspecial_bubble_lockout;
}

//==========================================================
// JAB: FLAME BODY rune effect
if (my_hitboxID.attack == AT_JAB || opponent_attack == AT_JAB) && (my_hitboxID.type == 1)
{
    hit_player_obj.burned = true;
    hit_player_obj.burn_timer = hit_player_obj.burn_timer % 30;
    hit_player_obj.burnt_id = self;
}
//==========================================================
// NAIR sfx
if (my_hitboxID.attack == AT_NAIR && my_hitboxID.hbox_num == 1)
{
    sound_stop(get_window_value(AT_NAIR, 1, AG_WINDOW_SFX));
}
//==========================================================
// UTILT: airtech
if (my_hitboxID.attack == AT_UTILT || opponent_attack == AT_UTILT) && (my_hitboxID.hbox_num == 2)
{
    msg_air_tech_active = true;

    if (my_hitboxID.type == 3)
    {
        hitpause = true;
        old_vsp = vsp;
        old_hsp = hsp;
        hitstop = max(5, hitstop);
        hitstop_full = max(5, hitstop_full);

        my_hitboxID.type = 2;
        my_hitboxID.destroyed = true;
    }
}
//==========================================================
// DSTRONG: save which side to activate yoyo from
if (my_hitboxID.attack == AT_DSTRONG || opponent_attack == AT_DSTRONG) && (my_hitboxID.hbox_num <= 2)
{
    //1 is in front, 2 is in back
    msg_dstrong_yoyo.dir = spr_dir * (my_hitboxID.hbox_num == 1 ? 1 : -1);
    msg_dstrong_yoyo.x = my_hitboxID.x;
    msg_dstrong_yoyo.y = my_hitboxID.y;
}
else if (my_hitboxID.attack == AT_DSTRONG && my_hitboxID.hbox_num == 4)
{
    msg_dstrong_sweetspot_hit = true;
}

//==========================================================
// USTRONG non-interruption of kb
if (my_hitboxID.attack == AT_USTRONG || opponent_attack == AT_USTRONG) && (my_hitboxID.hbox_num != 1)
{
    var coin = my_hitboxID;

    if (coin.hitpause == 0) //signal for repeating rune
    {
        coin.can_hit[hit_player_obj.player] = true;
        hit_player_obj.can_be_hit[coin.player] = coin.no_other_hit;
        coin.stop_effect = false;

        if (coin.transcendent) coin.length -= 12;
        hit_player_obj.should_make_shockwave = false;
    }
    //signal for kb preservation
    else if (coin.kb_value == 0) with (hit_player_obj)
    {
        if (!hitpause)
        {
            old_vsp = vsp;
            old_hsp = hsp;
            hitpause = true;
        }
        orig_knock = point_distance(0, 0, old_hsp, old_vsp);

        hitstop = max(coin.hitpause, hitstop);
        hitstop_full = max(coin.hitpause, hitstop_full);
        can_be_hit[coin.player] = coin.no_other_hit + hitstop;
        sound_play(coin.sound_effect);
    }

    //coins granted per hit
    if (msg_is_local || !msg_is_online) 
    {
        msg_persistence.msg_coinhits++;
    }
}

//==========================================================
// FAIR variable damage
if (my_hitboxID.attack == AT_FAIR || opponent_attack == AT_FAIR)
{
    var victim_dmg = get_player_damage(hit_player_obj.player);

    if (my_hitboxID.hit_priority > 4) //signal for Opponent-sum rune
    {
        victim_dmg = abs(victim_dmg -1);
        var own_dmg = abs(get_player_damage(player));
        var bonus_dmg = floor(victim_dmg % 10)
                      + floor((victim_dmg/10) % 10)
                      + floor((victim_dmg/100) % 10) - 1
                      + floor(own_dmg % 10)
                      + floor((own_dmg/10) % 10)
                      + floor((own_dmg/100) % 10) - 1;

        take_damage(hit_player_obj.player, player, bonus_dmg);
    }
    else
    {
        var bonus_dmg = floor(clamp(14.5 - (victim_dmg * 0.12), 0, 19));
        take_damage(hit_player_obj.player, player, bonus_dmg);
    }

    var min_knockback = 7;
    if (hit_player_obj.old_vsp > 0) 
    {
        hit_player_obj.orig_knock = min_knockback;
        hit_player_obj.old_vsp *= -1;
        hit_player_obj.old_hsp *= -1;
    }
    else if (hit_player_obj.orig_knock < min_knockback) hit_player_obj.orig_knock = min_knockback;

    if (my_hitboxID.kb_angle == 70) //signal for variable angle rune
    {
        //normalize vector
        var old_spd = point_distance(0, 0, hit_player_obj.old_vsp, hit_player_obj.old_hsp);
        hit_player_obj.old_vsp /= old_spd;
        hit_player_obj.old_hsp /= old_spd;

        //Influence the direction based on current percent
        hit_player_obj.old_vsp -= (victim_dmg < 0 ? 0.005 : 0.01) * victim_dmg;

        //denormalize, just to let visualizer show it correctly
        old_spd /= point_distance(0, 0, hit_player_obj.old_vsp, hit_player_obj.old_hsp);
        hit_player_obj.old_vsp *= old_spd;
        hit_player_obj.old_hsp *= old_spd;
    }

    //SFX
    if (victim_dmg < -80)   
    { sound_play(sound_get("aurorabeam")); msg_alt_sprite = get_attack_value(attack, AG_MSG_ALT_SPRITES)[0]; }
    else if (bonus_dmg > 5) sound_play(sound_get("confusion"));
    else                    sound_play(sound_get("cometpunch"));
}

//==========================================================
// UAIR stacking reset
if (my_hitboxID.attack == AT_UAIR || opponent_attack == AT_UAIR)
{
    reset_hitbox_value(AT_UAIR, 1, HG_WIDTH);
    reset_hitbox_value(AT_UAIR, 1, HG_HEIGHT);
    reset_hitbox_value(AT_UAIR, 1, HG_DAMAGE);
    reset_window_value(AT_UAIR, 1, AG_WINDOW_LENGTH);
    reset_window_value(AT_UAIR, 1, AG_WINDOW_SFX_FRAME);
    reset_window_value(AT_UAIR, 1, AG_WINDOW_SFX);
}

//==========================================================
// Rune: BAIR mirror-porting
if (my_hitboxID.attack == AT_BAIR || opponent_attack == AT_BAIR)
//signal for mirrorport
&& (my_hitboxID.hit_priority <= 5) && ("has_did_do_flipped_yes" not in my_hitboxID)
{
    var targetx = hit_player_obj.x - (x - hit_player_obj.x);
    swap_correcting_for_clones(self, targetx, y);
    spr_dir *= -1;
    my_hitboxID.has_did_do_flipped_yes = true;
}

//==========================================================
// DAIR: prevent obscene amounts of hitpause when multilanding
if (my_hitboxID.attack == AT_DAIR) && (msg_dair_earthquake_counter > 0)
{
    hit_player_obj.should_make_shockwave = false;
}

//==========================================================
// FSPECIAL Player-throw rune: collateral hitbox
if (my_hitboxID.attack == AT_FSPECIAL || opponent_attack == AT_FSPECIAL) && (my_hitboxID.hbox_num == 5)
{
    //attach collateral hitbox to victim
    var collateral = create_hitbox(AT_FSPECIAL, 3, x, y);
        collateral.hbox_num = 7;
        collateral.can_hit_self = false;
        collateral.can_hit[player] = false;
        collateral.can_hit[hit_player_obj.player] = false;
        collateral.length = hit_player_obj.hitstun_full;
        collateral.kb_scale = abs(collateral.kb_scale);
        collateral.damage = 8;
        collateral.player_id = hit_player_obj;
        collateral.x_pos = 0;
        collateral.y_pos = -ceil(hit_player_obj.char_height / 2);
        collateral.image_yscale = collateral.image_xscale;
}

//==========================================================
//Grab logic
if (my_hitboxID.attack == AT_NTHROW || opponent_attack == AT_NTHROW)
{
    hit_player_obj.msg_handler_id = self;

    if(my_hitboxID.hbox_num == 1)
    {
        if !(hit_player_obj.msg_grab_immune_timer > 0)
        {
            //FIRST VICTIM: process Painsplit
            if (msg_rune_flags.dspecial_painsplit) && window != 4
            {
                var dmg = floor((get_player_damage(hit_player_obj.player) + get_player_damage(player)) / 2);
                set_player_damage(player, dmg);
                set_player_damage(hit_player_obj.player, dmg);
            }

            //grab success: send directly to window 4
            window = 4; window_timer = 0;
            hit_player_obj.msg_grabbed_timer = 5;
            hit_player_obj.hurt_img = 0x99;
            var expected_x = x + spr_dir * get_hitbox_value(AT_NTHROW, 1, HG_HITBOX_X);
            var expected_y = y + get_hitbox_value(AT_NTHROW, 1, HG_HITBOX_Y) + char_height/2;
            if (point_distance(expected_x, expected_y, hit_player_obj.x, hit_player_obj.y) > 50)
            {
                hit_player_obj.x = expected_x;
                hit_player_obj.y = expected_y;
            }

            if (msg_rune_flags.holp)
            {
                set_holp(my_hitboxID.x, 
                         my_hitboxID.y);
            }
        }
    }
    else if (my_hitboxID.hbox_num == MSG_GRAB_PRATTOSS_HITBOX)
    {
        with (hit_player_obj) set_state(PS_PRATFALL);
    }
    else if (my_hitboxID.hbox_num == MSG_GRAB_LEECHSEED_HITBOX)
    {
        hit_player_obj.marked = true;
        hit_player_obj.marked_player = self.player;
        hit_player_obj.msg_leechseed_timer = 0;
        hit_player_obj.msg_leechseed_owner = self;

        hit_player_obj.msg_unsafe_effects.bad_vsync.gameplay_timer = 240;
        hit_player_obj.msg_unsafe_effects.bad_vsync.horz_max = 12;
        hit_player_obj.msg_unsafe_effects.bad_vsync.frozen = true;
        hit_player_obj.msg_unsafe_effects.bad_vsync.freq = 6;
    }
    else if (my_hitboxID.hbox_num == MSG_GRAB_NEGATIVE_HITBOX)
    {
        //turn damage into negatives (and amplify it)
        var curr_damage = get_player_damage(hit_player_obj.player);
        if (curr_damage > 0)
        {
            var dmg = abs(floor(curr_damage * msg_grab_negative_multiplier));
            set_player_damage(hit_player_obj.player, clamp(-dmg, -999, 999));
        }
        hit_player_obj.msg_negative_dmg_timer = msg_grab_negative_duration;
        hit_player_obj.msg_unsafe_effects.blending.gameplay_timer = msg_grab_negative_duration;
        hit_player_obj.msg_unsafe_effects.blending.impulse = 1;
    }
    else if (my_hitboxID.hbox_num == MSG_GRAB_FREEZE_HITBOX)
    {
        //Reduces freeze time
        hit_player_obj.state_timer += 45;
    }
    else if (my_hitboxID.hbox_num == MSG_GRAB_GLITCHTIME_HITBOX)
    {
        //apply Glitch Time
        hit_player_obj.msg_doubled_time_timer = msg_grab_glitchtime_duration;
        with (hit_player_obj)
        {
            msg_prev_status.x = x;
            msg_prev_status.y = y;
            msg_prev_status.hsp = hsp;
            msg_prev_status.vsp = vsp;
            msg_prev_status.state = state;
        }
        hit_player_obj.msg_unsafe_effects.bad_strip.gameplay_timer = msg_grab_glitchtime_duration;
        hit_player_obj.msg_unsafe_effects.bad_strip.frozen = true;
        hit_player_obj.msg_unsafe_effects.bad_strip.impulse = 1;
    }
    else if (my_hitboxID.hbox_num == MSG_GRAB_VANISH_HITBOX)
    {
        if (!hit_player_obj.msg_is_local)
        {
            hit_player_obj.visible = false;
            hit_player_obj.msg_unsafe_invisible_timer = msg_grab_vanish_duration + hit_player_obj.player*30;
        }
    }
    else if (my_hitboxID.hbox_num == MSG_GRAB_COLLIDER_HITBOX)
    {
        hit_player_obj.msg_inverted_collider_timer = msg_grab_collider_duration;
        hit_player_obj.msg_unsafe_effects.quadrant.gameplay_timer = msg_grab_collider_duration;
        hit_player_obj.msg_unsafe_effects.quadrant.frozen = true;
        hit_player_obj.msg_unsafe_effects.quadrant.freq = 2;
    }
}

//==========================================================
//hit someone with the TMTRAINER
if (my_hitboxID.attack == AT_NSPECIAL || opponent_attack == AT_NSPECIAL) && (my_hitboxID.hbox_num == 1)
{
    var hb = create_hitbox(AT_NSPECIAL, 2, floor(my_hitboxID.x), floor(my_hitboxID.y) )
    
    if ("initial_hsp" in my_hitboxID)
    {
        hb.hsp = my_hitboxID.initial_hsp;
        hb.vsp = my_hitboxID.initial_vsp;
    }
    else //Melee
    {
        hb.hsp = spr_dir * lengthdir_x(6, my_hitboxID.kb_angle);
        hb.vsp = lengthdir_y(6, my_hitboxID.kb_angle);
    }

    hb.missingno_copied_player_id = hit_player_obj;
    //consume existing clones
    destroy_copies(hit_player_obj);

    hit_player_obj.msg_unsafe_effects.quadrant.impulse = 3;
}

//==========================================================
//rune: Cloned Rehit
if (msg_rune_flags.nspecial_rehits) && (my_hitboxID.type == 1)
&& ("missingno_hitbox_is_copy_of" in my_hitboxID)
{
    my_hitboxID.can_hit[hit_player_obj.player] = true;
}

//==========================================================
//Become parent for glitch effect control
if (!hit_player_obj.msg_is_missingno)
{
    hit_player_obj.msg_unsafe_handler_id = self;
}

//corrupt target 
var hurt_rng = min(abs(get_player_damage(hit_player_obj.player)) * 0.25, 64)
             + min(1.5 * abs(my_hitboxID.damage), 64);

//add bonus brokenness chances for grabs
if (my_hitboxID.attack == AT_NTHROW && my_hitboxID.hbox_num > 1)
{
    hurt_rng += 32;
    if (my_hitboxID.hbox_num == MSG_GRAB_GLITCHTIME_HITBOX) hurt_rng += 32;
    else if (my_hitboxID.hbox_num == MSG_GRAB_BROKEN_HITBOX) hurt_rng = 65535;
}
if (msg_stability_mode || my_hitboxID.damage < 2) hurt_rng = 0;

if (hit_player_obj.msg_is_local || !msg_is_online)
&& (hurt_rng > GET_RNG(21, 0x7FF))
{
    //reroll breakage statuses
    sound_play(sound_get("krr"));
    msg_persistence.stage_request_breaking = GET_RNG(16, 0x01);
    msg_persistence.music_request_breaking = GET_RNG(17, 0x01);
    msg_persistence.sound_request_breaking = GET_RNG(18, 0x01) * 60;
}

if (hurt_rng > GET_RNG(24, 0xFF))
{
    //roll for player corruption
    switch(GET_RNG(10, 0x07))
    {
        default:
        case  0:
            sound_play(sound_get("krr"));
            hit_player_obj.msg_unsafe_effects.altswap.trigger = true;
        break;
        case  1:
        case  2:
            hit_player_obj.msg_unsafe_effects.blending.impulse = 1;
            hit_player_obj.msg_unsafe_effects.blending.gameplay_timer = min(360, 30 * hit_player_obj.hitstun_full);
        break;
        case  3:
        case  4:
            hit_player_obj.msg_unsafe_effects.quadrant.impulse = 1;
            hit_player_obj.msg_unsafe_effects.quadrant.gameplay_timer = min(360, 30 * hit_player_obj.hitstun_full);
        case  5:
            sound_play(sound_get("clicker_static"));
            suppress_stage_music(0, 1);
            suppress_stage_music(0, 0.01);
        break;
        case  6:
            sound_play(sound_get("jacobs_ladder"));
            suppress_stage_music(0, 1);
            suppress_stage_music(0, 0.01);
        break;
        case  7:
            sound_play(sound_get("079-B"));
            suppress_stage_music(0, 1);
            suppress_stage_music(0, 0.01);
        break;
    }
}

//==========================================================
// destroy all current missingno-copies of a player
#define destroy_copies(target_client_id)
{
    with (obj_article2) if ("is_missingno_copy" in self)
                        && (client_id == target_client_id) && (num == "2")
    {
        needs_to_die = true; //article consumed
    }
}

//==============================================================
#define swap_correcting_for_clones(playerId, posx, posy)
{
    playerId.x = posx;
    playerId.y = posy;

    //update to all copies
    for (var i = 0; i < instance_number(obj_article2); i++) 
    with (instance_find(obj_article2, i)) if ("is_missingno_copy" in self)
                                          && (client_id == playerId) && (num == "2")
    {
        //adjust relative offset of all copies
        client_offset_x = x - client_id.x;
        client_offset_y = y - client_id.y;

        //adjust hitbox positions
        with (pHitBox) if (type == 1) && (orig_player_id == other.client_id)
        {
            // note: variable reused for yoyo glitch (this is intentional, lerped hitboxes should not be copied)
            if ("missingno_hitbox_is_copy_of" in self)
            && (missingno_hitbox_is_copy_for == other && instance_exists(missingno_hitbox_is_copy_of))
            {
                x_pos = missingno_hitbox_is_copy_of.x_pos + other.client_offset_x;
                y_pos = missingno_hitbox_is_copy_of.y_pos + other.client_offset_y;
            }
        }
    }

    //Microplatform (if it exists) needs to follow the client player to its destination
    if ("msg_clone_microplatform" in playerId) && instance_exists(playerId.msg_clone_microplatform)
    {
        playerId.msg_clone_microplatform.x = playerId.x;
        playerId.msg_clone_microplatform.y = playerId.y;
    }
}

// #region vvv LIBRARY DEFINES AND MACROS vvv
// DANGER File below this point will be overwritten! Generated defines and macros below.
// Write NO-INJECT in a comment above this area to disable injection.
#define msg_acemilate(index_source, other_source, hbx) // Version 0
    var scrombled_index1 = (((msg_broken_grab_seed << 1) ^ index_source) % 64)
    var scrombled_index2 = (((scrombled_index1 << 1) ^ other_source) % 64)
    msg_broken_grab_seed = (((scrombled_index2 << 1) ^ hbx.attack + 1) % 64)
    var scan_indexes = [index_source, scrombled_index1, scrombled_index2, msg_broken_grab_seed];
    msg_broken_grab_seed *= msg_broken_grab_seed;

    for (var i = 0; i < 4; i++)
    {
        var idx = HG_DAMAGE, stat = 1, cap = 5;
        switch (scan_indexes[i] % 16)
        {
            default:
            case  0: idx = HG_BASE_HITPAUSE;      stat = hbx.hitpause;        cap = 20;    break;
            case  1: idx = HG_HITPAUSE_SCALING;   stat = hbx.hitpause_growth; cap = 2;     break;
            case  2: idx = HG_VISUAL_EFFECT;      stat = hbx.hit_effect;      cap = noone; break;
            case  3: idx = HG_SDI_MULTIPLIER;     stat = hbx.sdi_mult;        cap = 3;     break;
            case  4: idx = HG_TECHABLE;           stat = hbx.can_tech;        cap = 3;     break;
            case  5: idx = HG_HIT_SFX;            stat = hbx.sound_effect;    cap = noone; break;
            case  6: idx = HG_ANGLE_FLIPPER;      stat = hbx.hit_flipper;     cap = 12;    break;
            case  7: idx = HG_EXTRA_HITPAUSE;     stat = hbx.extra_hitpause;  cap = 30;    break;
            case  8: idx = HG_HIT_LOCKOUT;        stat = hbx.no_other_hit;    cap = 50;    break;
            case  9: idx = HG_HITSTUN_MULTIPLIER; stat = hbx.hitstun_factor;  cap = 3;     break;
            case 10: idx = HG_DRIFT_MULTIPLIER;   stat = hbx.dumb_di_mult;    cap = 3;     break;
            case 11: idx = HG_DAMAGE;             stat = hbx.damage;          cap = 50;    break;
            case 12: idx = HG_ANGLE;              stat = hbx.kb_angle;        cap = 361;   break;
            case 13: idx = HG_BASE_KNOCKBACK;     stat = hbx.kb_value;        cap = 16;    break;
            case 14: idx = HG_KNOCKBACK_SCALING;  stat = hbx.kb_scale;        cap = 2;     break;
            case 15: idx = HG_EFFECT;             stat = hbx.effect;          cap = 20;    break;
        }

        var base = get_hitbox_value(AT_NTHROW, MSG_GRAB_BROKEN_HITBOX, idx);
        set_hitbox_value(AT_NTHROW, MSG_GRAB_BROKEN_HITBOX, idx, (cap == noone) ? stat : ((base + stat) % cap));
    }

#define set_holp(newx, newy) // Version 0
    // snap position to grid
    newx = round(newx / 8.0) % 512; //9b
    newy = round(newy / 8.0) % 256; //8b

    if instance_exists(msg_persistence)
    {
        //record position in persistence (if it exists)
        if (msg_is_local)
        {
            msg_persistence.msg_holp_x[0] = newx;
            msg_persistence.msg_holp_y[0] = newy;
        }
        else if (!msg_is_online)
        {
            msg_persistence.msg_holp_x[player] = newx;
            msg_persistence.msg_holp_y[player] = newy;
        }
    }

    msg_holp_pos.x = newx * 8;
    msg_holp_pos.y = newy * 8;

#define GET_RNG(offset, mask) // Version 0
    // ===========================================================
    // returns a random number from the seed by using the mask.
    // uses "msg_unsafe_random" implicitly.
    return (mask <= 0) ? 0
           :((msg_unsafe_random >> offset) & mask);
// DANGER: Write your code ABOVE the LIBRARY DEFINES AND MACROS header or it will be overwritten!
// #endregion