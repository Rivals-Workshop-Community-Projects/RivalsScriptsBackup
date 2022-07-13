//set_attack

if attack == AT_FSPECIAL {
    grabbedID = undefined;
    grabbedTimer = 0;
    wall_grab = false
    seed_grab = false
    seed_grab_id = undefined
    reset_window_value(AT_FSPECIAL, 2, AG_WINDOW_GOTO);
    reset_attack_value(AT_FSPECIAL, AG_NUM_WINDOWS);
}

if attack == AT_DSPECIAL {
    with pHitBox if ("arb_seeker" in self) {
        die = true
    }
}

remote_strong = false

strong_draw_x = x
strong_draw_y = y

if attack == AT_FSTRONG {
    reset_hitbox_value(AT_FSTRONG, 1, HG_HITBOX_X);
    reset_hitbox_value(AT_FSTRONG, 1, HG_HITBOX_Y);
}
if attack == AT_DSTRONG {
    reset_hitbox_value(AT_DSTRONG, 1, HG_HITBOX_X);
    reset_hitbox_value(AT_DSTRONG, 1, HG_HITBOX_Y);
    reset_hitbox_value(AT_DSTRONG, 2, HG_HITBOX_X);
    reset_hitbox_value(AT_DSTRONG, 2, HG_HITBOX_Y);
}
if attack == AT_USTRONG {
    reset_hitbox_value(AT_USTRONG, 1, HG_HITBOX_X);
    reset_hitbox_value(AT_USTRONG, 1, HG_HITBOX_Y);
    reset_hitbox_value(AT_USTRONG, 2, HG_HITBOX_X);
    reset_hitbox_value(AT_USTRONG, 2, HG_HITBOX_Y);
    reset_hitbox_value(AT_USTRONG, 3, HG_HITBOX_X);
    reset_hitbox_value(AT_USTRONG, 3, HG_HITBOX_Y);
}



if attack == AT_FSTRONG || attack == AT_DSTRONG || attack == AT_USTRONG {
    seed_attack(attack);
}

#define seed_attack(atk)
//remote_strong = false
with obj_article1 if player_id == other.id && state == PS_IDLE {
    state = PS_ATTACK_GROUND
    state_timer = 0
    attack = atk
    window = 1
    window_timer = 0
    other.strong_draw_x = x
    other.strong_draw_y = y+4
    other.remote_strong = true
}