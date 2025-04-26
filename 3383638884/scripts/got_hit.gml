attacking = state == PS_ATTACK_GROUND || state == PS_ATTACK_AIR;

if(!combo_got_hit)
{
	combo_got_hit = true;
	combo_timer -= 30;
	combo_timer = max(0, combo_timer);
}
tauntGotSpeedBack = true;
taunt_dash_interrupt = false;
pretaunthsp = 0;
pretauntvsp = 0;
if(!super_armor)
{
	dash_timer = 0;
	if(mach_sound_active)
	{
		mach_sound_active = false;
		sound_stop(mach_sound);
	}
}