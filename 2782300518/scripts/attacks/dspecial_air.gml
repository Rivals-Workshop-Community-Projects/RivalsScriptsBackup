#macro atk AT_DSPECIAL_AIR
#macro av set_attack_value
#macro win set_window_value
#macro hv set_hitbox_value

av(atk, AG_CATEGORY, 2);
av(atk, AG_SPRITE, sprite_get("dspecial_air"));
av(atk, AG_NUM_WINDOWS, 2);
av(atk, AG_HAS_LANDING_LAG, 4);
av(atk, AG_OFF_LEDGE, 1);
av(atk, AG_HURTBOX_SPRITE, sprite_get("dspecial_air_hurt"));
av(atk, AG_MUNO_ATTACK_NAME, "DSpecial_Air (Abandon Bike)");
av(atk, AG_MUNO_ATTACK_MISC, "Changes stance to off bike. Bike spins downwards as a result.");


win(atk, 1, AG_WINDOW_TYPE, 1);
win(atk, 1, AG_WINDOW_LENGTH, 6);
win(atk, 1, AG_WINDOW_ANIM_FRAMES, 2);
win(atk, 1, AG_WINDOW_HSPEED, 0);
win(atk, 1, AG_WINDOW_VSPEED, 0);
win(atk, 1, AG_WINDOW_HSPEED_TYPE, 1);
win(atk, 1, AG_WINDOW_VSPEED_TYPE, 1);

win(atk, 2, AG_WINDOW_TYPE, 1);
win(atk, 2, AG_WINDOW_LENGTH, 21);
win(atk, 2, AG_WINDOW_ANIM_FRAMES, 7);
win(atk, 2, AG_WINDOW_ANIM_FRAME_START, 2);
win(atk, 2, AG_WINDOW_HSPEED, 0);
win(atk, 2, AG_WINDOW_HSPEED_TYPE, 1);


set_num_hitboxes(atk, 1);

hv(atk, 1, HG_HITBOX_TYPE, 2);
hv(atk, 1, HG_WINDOW, 2);
hv(atk, 1, HG_SHAPE, 0);
hv(atk, 1, HG_LIFETIME, 400);
hv(atk, 1, HG_HITBOX_X, 0);
hv(atk, 1, HG_HITBOX_Y, 20);
hv(atk, 1, HG_PRIORITY, 9);
hv(atk, 1, HG_DAMAGE, 20 - fuel_remaining / 3);
hv(atk, 1, HG_TECHABLE, 2);
hv(atk, 1, HG_VISUAL_EFFECT, 270);
hv(atk, 1, HG_HIT_SFX, sound_get("xplode2"));

hv(atk, 1, HG_BASE_KNOCKBACK, 7);
hv(atk, 1, HG_KNOCKBACK_SCALING, 0.3);
hv(atk, 1, HG_BASE_HITPAUSE, 10);
hv(atk, 1, HG_HITPAUSE_SCALING, .5)
hv(atk, 1, HG_ANGLE, 90);
hv(atk, 1, HG_HITSTUN_MULTIPLIER, 0);
hv(atk, 1, HG_IGNORES_PROJECTILES, true);
hv(atk, 1, HG_PROJECTILE_SPRITE, sprite_get("dspecial_air_proj"));
hv(atk, 1, HG_PROJECTILE_MASK, sprite_get("dspecial_air_proj"));
hv(atk, 1, HG_PROJECTILE_ANIM_SPEED, 1);
hv(atk, 1, HG_PROJECTILE_HSPEED, 0);
hv(atk, 1, HG_PROJECTILE_WALL_BEHAVIOR, 2);
hv(atk, 1, HG_PROJECTILE_GROUND_BEHAVIOR, 0);
hv(atk, 1, HG_PROJECTILE_ENEMY_BEHAVIOR, 0);
hv(atk, 1, HG_PROJECTILE_VSPEED, 9);
hv(atk, 1, HG_PROJECTILE_IS_TRANSCENDENT, false);
//hv(atk, 1, HG_PROJECTILE_DESTROY_EFFECT, nitro_boost);
hv(atk, 1, HG_PROJECTILE_DESTROY_EFFECT, 270);
hv(atk, 1, HG_MUNO_HITBOX_MISC_ADD, "This move's power is variable. It is entirely dependant on how much fuel is left, with it being most potent when the fuel is nearly out. The exact formula is 20 damage minus fuel remaining divided by 3.");


if has_rune ("O")
{
    hv(atk, 1, HG_BASE_KNOCKBACK, 12);
    hv(atk, 1, HG_KNOCKBACK_SCALING, 1)
}
