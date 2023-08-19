changed = 0;
force_fspec_fall = false;
with player_id {
    other.hits_tag = get_hitbox_value(other.attack,other.hbox_num,HG_PROJECTILE_HIT_TAG);
}
tagged = 0;

if attack == AT_FAIR && hbox_num == 3 {
    proj_angle = 305*spr_dir;
}

if attack == AT_UTILT && hbox_num == 3 {
    proj_angle = 45*spr_dir;
}

if attack == AT_NSPECIAL && hbox_num == 1 {
    var starting_damage;
    var prog = ease_linear(0, 1, player_id.roke_nspecial_charge, player_id.roke_nspecial_max_charge);
    with player_id starting_damage = get_hitbox_value(other.attack, other.hbox_num, HG_DAMAGE);
    extra_hitpause = clamp(player_id.roke_nspecial_charge, 10, 60);
    damage = floor(starting_damage+7*prog);
    if player_id.roke_nspecial_charge > 30 {
        sprite_index = sprite_get("nspecial_proj_strong");
        with player_id {
            other.image_xscale = 1/200*get_hitbox_value(other.attack, 3, HG_WIDTH)
            other.image_yscale = 1/200*get_hitbox_value(other.attack, 3, HG_HEIGHT)
        }
    }
    big = player_id.roke_nspecial_charge > 30;
    dissipation = big ? player_id.hfx_large_shot_dissipate : player_id.hfx_small_shot_dissipate
}

if attack == AT_FSPECIAL transp_spr = sprite_get("drone_launch_trans");