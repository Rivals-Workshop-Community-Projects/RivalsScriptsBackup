//Set_Attack.gml

if (attack == AT_NSPECIAL && (instance_exists(bullet_obj) and bullet_obj.bullet_state == PS_IDLE)) { attack = AT_NSPECIAL_2; }

if (attack == AT_FSPECIAL && (instance_exists(bottle_obj))) { attack = AT_FSPECIAL_2; }

fspecial2_buffer = false;
can_fspecial2 = true;
nspecial2_fall_timer = 0;

if attack == AT_FAIR {
    fair_rekka = false;
}

if attack == AT_DSPECIAL and move_cooldown[AT_DSPECIAL] == 0 {
    used_dspecial = true;
}

if mj_enabled and (attack != AT_EXTRA_1) {
    mj_should_carry_over = false;
}