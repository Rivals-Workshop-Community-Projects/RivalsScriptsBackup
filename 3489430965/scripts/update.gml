if(lethal_hit_timer >= 0)
{
	lethal_hit_timer++;

	var supress_amount = ease_linear(0, 1, lethal_hit_timer-90, 60);
	suppress_stage_music(supress_amount, 1);
}
if(lethal_hit_timer > 150)
{
	lethal_hit_timer = -1;
}

if(lava_attack_timer >= 0)
{
	lava_attack_timer++;
}
if(lava_attack_timer > 45)
{
	lava_attack_timer = -1;
}

if(tnt_cooldown > 0)
{
	tnt_cooldown--;
}

if(riding_chicken == true && ((state != PS_ATTACK_GROUND && state != PS_ATTACK_AIR) || attack != AT_USPECIAL))
{
	riding_chicken = false;
	instance_create(x+(4*spr_dir), y, "obj_article1");
	y -= 24;
}

if(attack == AT_TAUNT && (state == PS_ATTACK_GROUND || state == PS_ATTACK_AIR))
{
	playing_taunt = true;
}
else if(playing_taunt == true)
{
	sound_stop(sound_get("i_am_placing_blocks"));
	playing_taunt = false;
}