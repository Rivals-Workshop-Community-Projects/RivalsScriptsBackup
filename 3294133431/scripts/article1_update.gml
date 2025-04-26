//

if(targetPlayer == noone || !instance_exists(targetPlayer))
{
    Destroy(true);
    return;
}

visible = targetPlayer.visible;
    
if(targetPlayer.state == PS_DEAD || targetPlayer.state == PS_RESPAWN)
{
    Destroy(true);
    return;
}
	
// if(hitpause)
// {
// 	hitstop--;
// 	if(hitstop < 0)
// 		hitpause = false;
// 	return;
// }

Animate();

Attack();

if (hp <= 0)
{
    Destroy(false);// state = "dead"; //TODO: death animation instead
    return;
}

// if(targetPlayer.state == PS_DEAD || targetPlayer.state == PS_RESPAWN)
// 	Destroy(true);


#define Attack()
if (damageTimer % damageSpeed == 0)
{
	take_damage(targetPlayerId, player_id, damageAmount);
    if(visible)
    {
        var damageVfx = spawn_hit_fx(x, y, 14);
        damageVfx.draw_angle = random_func(0, 360, false);
        // create_hitbox(AT_DSPECIAL, 2, round(x), round(y));
    }
}
damageTimer++;


#define Animate()
// swayTimerX += swaySpeedXRandom;
// swayTimerY += swaySpeedYRandom;
swayTimerX += swaySpeed + random_func(0, swaySpeedXRandom, false)/swaySpeedRandScale;
swayTimerY += swaySpeed + random_func(1, swaySpeedYRandom, false)/swaySpeedRandScale;

x = targetPlayer.x + sin(swayTimerX) * swayMagnitude;
y = targetPlayer.y + cos(swayTimerY) * swayMagnitude - targetPlayer.char_height/2;

depth = targetPlayer.depth - 1;
spr_dir = targetPlayer.spr_dir;


if (animationTimer % idleAnimationSpeed == 0)
	image_index++;
animationTimer++;


#define hitPause(target, value)
with(target)
{
    hitpause = true;
    hitstop = value;
    hitstop_full = value;
    old_hsp = hsp;
    old_vsp = vsp;
}


#define Destroy(wasOffscreen)
with(player_id)
	ds_list_delete(sappers, ds_list_find_index(sappers, other));
if(!wasOffscreen)
{
	spawn_hit_fx(x, y, 115);
    // hitPause(self, 30);
    // hitPause(player_id, 60);
	// hittable_hitpause_mult = 10000;
}
sound_stop(sapper_timerSfx);
sound_play(sound_get("sapper_removed"), false, noone, 1, 1);
instance_destroy(self);
exit;