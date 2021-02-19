if my_hitboxID.attack == AT_NSPECIAL && my_hitboxID.hbox_num == 1 {
//sound_play(asset_get("mfx_player_found"))
//my_hitboxID.hsp = get_hitbox_value(AT_NSPECIAL, 2, HG_PROJECTILE_HSPEED) * my_hitboxID.spr_dir;
my_hitboxID.hitbox_timer = 1;
my_hitboxID.damage = get_hitbox_value(AT_NSPECIAL, 2, HG_DAMAGE);
my_hitboxID.kb_value = get_hitbox_value(AT_NSPECIAL, 2, HG_BASE_KNOCKBACK);
my_hitboxID.kb_scale = get_hitbox_value(AT_NSPECIAL, 2, HG_KNOCKBACK_SCALING);
//my_hitboxID.sound_effect = get_hitbox_value(AT_NSPECIAL, 2, HG_HIT_SFX);
}

//==============================================================================
//                          Abyss Rune Code
//==============================================================================
//Rune K
if rune_revengebuff > 0 rune_revengebuff = 0;