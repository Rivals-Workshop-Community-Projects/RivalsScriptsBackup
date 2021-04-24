// a chainsaw parried during charge detonates
if (my_hitboxID.attack == AT_USTRONG) {
    if (cur_chainsaw != undefined) {
        cur_chainsaw.was_parried = true;
    }
}

// a chainsaw parried after being thrown detonates
if (my_hitboxID.attack == AT_EXTRA_2 && my_hitboxID.hbox_num == 1) {
    my_hitboxID.parent_chainsaw.destroyed = true;
    spawn_hit_fx(my_hitboxID.parent_chainsaw.x, my_hitboxID.parent_chainsaw.y, explosion_effect);
}

// having any hitbox parried comes with an MP penalty
mp = max(0, mp - mp_parry_penalty);

if (my_hitboxID.attack != AT_NSPECIAL) {
    was_parried = true;
}