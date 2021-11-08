changed = 0;
with player_id {
    other.hits_tag = get_hitbox_value(other.attack,other.hbox_num,HG_PROJECTILE_HIT_TAG);
}
tagged = 0;

if attack == AT_FAIR && hbox_num == 3 {
    proj_angle = 305*spr_dir;
}

if attack == AT_UTILT && hbox_num == 2 {
    proj_angle = 45*spr_dir;
}

if attack == AT_NSPECIAL && hbox_num == 1 {
    var starting_damage;
    var prog = ease_linear(0, 1, player_id.roke_nspecial_charge, player_id.roke_nspecial_max_charge);
    with player_id starting_damage = get_hitbox_value(other.attack, other.hbox_num, HG_DAMAGE);
    extra_hitpause = clamp(player_id.roke_nspecial_charge, 20, 60);
    damage = floor(starting_damage+7*prog);
    if player_id.roke_nspecial_charge > 30 sprite_index = sprite_get("nspecialproj_strong");
    big = player_id.roke_nspecial_charge > 30;
}
