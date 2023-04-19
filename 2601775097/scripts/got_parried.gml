//got_parried

window_loops = 0;
bar_grabbed_id = noone;

if (my_hitboxID.attack == AT_NTHROW) my_hitboxID.hitbox_timer = 0;

if (get_hitbox_value(my_hitboxID.attack, my_hitboxID.hbox_num, HG_HITBOX_COLOR) == hb_color[3] ||
    attack == skill[2].skill_attack || attack == skill[4].skill_attack || attack == skill[5].skill_attack)
{
    burnbuff_active = false;
}

if (instance_exists(hook_chain_artc))
{
    with (obj_article1) if (player_id == other.id && state == "hook_chain")
    {
        window = 3;
        window_timer = 0;
    }
}


if (lightstun_active)
{
    if (my_hitboxID.attack != 48 && get_hitbox_value(my_hitboxID.attack, my_hitboxID.hbox_num, HG_HITBOX_COLOR) == hb_color[2] &&
    get_hitbox_value(my_hitboxID.attack, my_hitboxID.hbox_num, HG_HITBOX_TYPE) != 2)
    {
        if (lightstun_type == 0) lightstun_timer = lightstun_pre_set;
        else if (lightstun_type == 1) lightstun_timer = lightstun_active_set;

        if (lightstun_type < 2) lightstun_type ++;
    }

    if (my_hitboxID.orig_player == player && my_hitboxID.attack == 48) invince_time = 0;
}

//AI STUFF
if ("cpu_fight_time" in self && cpu_fight_time > 0)
{
    //if (my_hitboxID.attack == skill[0].skill_attack || my_hitboxID.attack == skill[0].skill_attack_air) daggers_used = 3;
}