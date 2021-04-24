set_attack_value(AT_TAUNT, AG_SPRITE, sprite_get("taunt"));
set_attack_value(AT_TAUNT, AG_HURTBOX_SPRITE, asset_get("ex_guy_hurt_box"));

set_num_hitboxes(AT_TAUNT,1);

set_hitbox_value(AT_TAUNT,1,HG_PRIORITY,1);
set_hitbox_value(AT_TAUNT,1,HG_DAMAGE,0);
set_hitbox_value(AT_TAUNT,1,HG_HIT_SFX,sound_get("taunt_hit"));
set_hitbox_value(AT_TAUNT,1,HG_HITBOX_X,8);
set_hitbox_value(AT_TAUNT,1,HG_HITBOX_Y,-66);
set_hitbox_value(AT_TAUNT,1,HG_WIDTH,156);
set_hitbox_value(AT_TAUNT,1,HG_HEIGHT,120);
set_hitbox_value(AT_TAUNT,1,HG_LIFETIME,1);
set_hitbox_value(AT_TAUNT,1,HG_BASE_HITPAUSE,0);
set_hitbox_value(AT_TAUNT,1,HG_EXTRA_HITPAUSE,-50);
set_hitbox_value(AT_TAUNT,1,HG_BASE_KNOCKBACK,.001);
set_hitbox_value(AT_TAUNT,1,HG_ANGLE,90);
set_hitbox_value(AT_TAUNT,1,HG_HITBOX_GROUP,-1);
set_hitbox_value(AT_TAUNT,1,HG_IGNORES_PROJECTILES,1);
if has_rune("O") {
    set_hitbox_value(AT_TAUNT,1,HG_BASE_HITPAUSE,4);
    set_hitbox_value(AT_TAUNT,1,HG_HITPAUSE_SCALING,0.000001);
    set_hitbox_value(AT_TAUNT,1,HG_EXTRA_HITPAUSE,-4);
    set_hitbox_value(AT_TAUNT,1,HG_BASE_KNOCKBACK,17);
    set_hitbox_value(AT_TAUNT,1,HG_KNOCKBACK_SCALING,0.3);
    set_hitbox_value(AT_TAUNT,1,HG_ANGLE,45);
    set_hitbox_value(AT_TAUNT,1,HG_HIT_SFX,asset_get("taunt_hit"));
    set_hitbox_value(AT_TAUNT,1,HG_DAMAGE,8);
}