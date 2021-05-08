//Landing from fair.
if (!free && fair_wall_times > 0) {
    fair_wall_times = 0;
}

if ((!free || state == PS_WALL_JUMP || state == PS_WALL_TECH || state == PS_HITSTUN || state == PS_HITSTUN_LAND) && uspecial_used) {
    uspecial_used = false;
}

//NSPECIAL cooldown

if (instance_exists(nspecial_article)) {
	if (nspecial_article.window == 3 || nspecial_article.window == 5 || nspecial_article.window == 7) {
    	move_cooldown[AT_NSPECIAL] = 30;
	}
}

if (uspecial_used && free)
{
	move_cooldown[AT_USPECIAL] = 2;
	move_cooldown[AT_USPECIAL_GROUND] = 2;
}

if (state != PS_ATTACK_AIR && state != PS_ATTACK_GROUND) {
	spr_angle = 0;
}

if (instance_exists(nspecial_article)) {
    if (nspecial_article.window == 1  && (state == PS_HITSTUN || state == PS_HITSTUN_LAND)) {
        nspecial_article.window = 8;
        nspecial_article.window_timer = 0;
    }
}