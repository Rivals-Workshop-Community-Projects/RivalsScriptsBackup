//when the you get hit

vial_vim -= enemy_hitboxID.damage * 0.5 / (intox_level + 1)
vial_imagination -= enemy_hitboxID.damage * 0.6 / (intox_level + 1)
vial_pulchritude -= enemy_hitboxID.damage * 0.4 / (intox_level + 1)

if (shades_wearing > 0){
    if (shades_wearing - enemy_hitboxID.kb_value <= 0){
        generic_effect = spawn_hit_fx(x + 1 * spr_dir, y - 38, vfx_shades);
        generic_effect.hsp = -6 * spr_dir;
        generic_effect.vsp = -10;
        generic_effect.grav = 0.8;
    }
    shades_wearing -= enemy_hitboxID.kb_value;
}
