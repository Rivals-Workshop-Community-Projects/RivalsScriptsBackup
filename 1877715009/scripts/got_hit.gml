//got_hit - called when you're hit by a hitbox

killarticles = true;
dspecsize = 0;
sound_stop(sound_get("meme"));
aurapt[5] = 0;

if (as_charging)
{
    as_charge = 0;
	as_frame = 0;
	as_charging = false;
}

if (get_gameplay_time() <= (b_infamous?90:68))
{
	godmode = true;
	counterid = hit_player_obj;
	transformplease = 3;
}

var damage_takenn = get_player_damage(player) - counter_dmg;
if ((!beast_deity && !thevoid && ((attack == AT_DSPECIAL_2 || attack == AT_DSPECIAL_AIR || attack == AT_DSPECIAL) && super_armor)) || godmode)
{
    //if (damage_takenn <= 99999)
    {
		transformplease = 1;
		killarticles2 = false;
		if (runeL)
			instance_create(hit_player_obj.x, hit_player_obj.y - 34, "obj_article2");
		if (attack != AT_DSPECIAL_2 && attack != AT_DSPECIAL_AIR)
		{
			set_attack( AT_DSPECIAL );
			window = 3;
			window_timer = 0;
			if (damage_takenn >= 38)
				set_hitbox_value(AT_DSPECIAL, 1, HG_DAMAGE, damage_takenn);
			else
				reset_hitbox_value(AT_DSPECIAL, 1, HG_DAMAGE);
			orig_knock = 0;
			transformplease = 2;
			should_make_shockwave = false;
		}
		if (attack == AT_DSPECIAL_AIR)
		{
			djumps = 0;
			has_airdodge = true;
			has_walljump = true;
			move_cooldown[AT_DSPECIAL_AIR] = 0;
		}
		if (attack == AT_DSPECIAL_2 || attack == AT_DSPECIAL_AIR)
		{
			invincible = true;
			invince_time = get_window_value(AT_DSPECIAL_2, 2, AG_WINDOW_LENGTH) - window_timer + get_window_value(AT_DSPECIAL_2, 3, AG_WINDOW_LENGTH);
			enemy_hitboxID.destroyed = 1;
		}
		if (attack == AT_DSPECIAL)
		{
			set_player_damage(player, counter_dmg);
		}
		if (hit_player_obj)
			counterid = hit_player_obj;
		if (counterid.url == "1976183668")
		{
			if ("gothit" in counterid)
				counterid.gothit -= 1;
			if ("style" in counterid)
				counterid.style += 8;
			if ("stylem" in counterid)
				counterid.stylem += 15;
			if ("styler" in counterid)
				counterid.styler += 20;
			if ("motivation" in counterid)
				counterid.motivation -= 25;
			if ("parry" in counterid)
				counterid.parry += 25;
			if ("parrytime" in counterid)
				counterid.parrytime += 1;
			//invince_time = 120;
			if (aura && !beast_deity)
				thevoid = true;
		}
	}
}

if (beast_deity)
{
	if (orig_knock > 10)
		orig_knock = 10;
	should_make_shockwave = false;
}
if (thevoid && !beast_deity)
{
	orig_knock = 621;
	should_make_shockwave = true;
}