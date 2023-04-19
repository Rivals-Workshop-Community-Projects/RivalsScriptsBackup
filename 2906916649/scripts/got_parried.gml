//got_parried

sound_play(sound_get("Surprised00"))


if (my_hitboxID.attack == AT_FTILT && my_hitboxID.hbox_num == 1) set_state(PS_PRATLAND);

//multihit projectile hit count resets on parry
if (my_hitboxID.type == 2 && my_hitboxID.multihit_amount > 0 && my_hitboxID.proj_hit_count < my_hitboxID.multihit_amount)
{
    my_hitboxID.proj_hit_count = 0;
    my_hitboxID.hitbox_timer = 0;
}

