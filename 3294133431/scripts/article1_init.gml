//
sprite_index = sprite_get("sapper");
mask_index = sprite_get("sapperMask");
image_index = 0;
uses_shader = true;

can_be_grounded = false;
ignores_walls = true;
disable_movement = true;
is_hittable = true;
hittable_hitpause_mult = 1;


hpMax = 24;
hp = hpMax;
lastHitbox = 0;


damageTimer = 0;
damageSpeed = 30;
damageAmount = 1;


animationTimer = 0;
idleAnimationSpeed = 3;

swayTimerX = 0;
swayTimerY = 0;
swayMagnitude = 4;
swaySpeed = 0;
swaySpeedXRandom = 3;
swaySpeedYRandom = 2;
swaySpeedRandScale = 10;

state = "spawn";

sapper_timerSfx = sound_play(sound_get("sapper_timer"), true, noone, 0.2, 1);