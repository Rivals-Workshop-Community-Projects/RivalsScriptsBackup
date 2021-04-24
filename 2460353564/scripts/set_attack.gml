// jab takes the place of ftilt and dattack
if (attack == AT_DATTACK || (attack == AT_FTILT && move_cooldown[AT_FTILT] <= 0)) {
    attack = AT_JAB;
}

// nair takes the place of fair and bair
if (attack == AT_FAIR) {
    attack = AT_NAIR;
}

if (attack == AT_BAIR) {
    attack = AT_NAIR;
    spr_dir *= -1;
}

// use diagonal inputs during uair/dair to turn
if (attack == AT_DAIR || attack == AT_UAIR) {
    if (spr_dir == 1 && (left_down || left_stick_down)) {
        spr_dir = -1;
    } else if (spr_dir == -1 && (right_down || right_stick_down)) {
        spr_dir = 1;
    }
}

if (attack == AT_JAB || attack == AT_UTILT) {
    // track horizontal speed at the start of a jab/utilt to cancel out attacks making you stop in your tracks
    throw_start_hsp = hsp;
}

// disable nspecial since holding B in neutral means something else for us
if (attack == AT_NSPECIAL) {
    move_cooldown[AT_NSPECIAL] = 1;    
}

if (attack == AT_FSTRONG) {
    fstrong_cancelled = false;
    // this may have been modified by a cancel, so reset it
    reset_window_value(AT_FSTRONG, 4, AG_WINDOW_LENGTH);
}


// mp costs
var mp_cost = 0;
switch (attack) {
    case AT_JAB:
        // jab is handled specially in attack_update since it's a multi-hit and each optional hit applies cost
        break;
    case AT_NAIR:
    case AT_DAIR:
    case AT_UTILT:
    case AT_UAIR:
        mp_cost = mp_cost_basic;
        break;
    case AT_USTRONG:
        mp_cost = mp_cost_ustrong
        break;
    case AT_FSTRONG:
        mp_cost = mp_cost_fstrong;
        break;
    case AT_DSTRONG:
        mp_cost = mp_cost_dstrong;
        break;
    case AT_NSPECIAL:
        // also a special case, handled in update
        break;
    case AT_FSPECIAL:
        mp_cost = mp_cost_fspecial;
        break;
    case AT_DSPECIAL:
        // only turning timestop on has a cost
        if (!timestop_active && move_cooldown[AT_DSPECIAL] <= 0) {
            mp_cost = mp_cost_dspecial;
        }
        break;
}

if (mp_cost > 0) {
    if (move_cooldown[attack] <= 0 && mp_cost <= mp) {
        mp -= mp_cost;
        time_since_last_mp_spend = 0;
    } else {
        if (time_since_last_no_mp_fx >= 24) {
            var no_mp_fx = no_mp_effect;
            if (spr_dir == -1) {
                no_mp_fx = no_mp_l_effect;
            }
            spawn_hit_fx(x, y - char_height - 12, no_mp_fx);
            time_since_last_no_mp_fx = 0;
        }
    }
}

if (attack == AT_DSPECIAL || attack == AT_DAIR) {
    can_fast_fall = false;
}

if (attack == AT_DSPECIAL) {
    can_move = false;
}

if (attack == AT_DSPECIAL && timestop_active) {
    window = 3;
}

// training mode infinite MP
if (training_mode && attack == AT_TAUNT && down_down) {
    timestop_drain = 0;
    mp_cost_basic = 0;
    mp_cost_ustrong = 0;
    mp_cost_fstrong = 0;
    mp_cost_dstrong = 0;
    mp_cost_nspecial = 0;
    mp_cost_fspecial = 0;
    mp_cost_dspecial = 0;
}