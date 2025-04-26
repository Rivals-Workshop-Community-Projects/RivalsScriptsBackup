//got_hit - called when you're hit by a hitbox
uspecial_used = false;

if(enemy_hitboxID.attack == AT_DSPECIAL && enemy_hitboxID.hbox_num == 2 && enemy_hitboxID.player == self.player)
{
	shadowburn_owner = self;
	shadowburn_timer = 120;
}

if((prev_state == PS_ATTACK_GROUND || prev_state == PS_ATTACK_AIR) && attack == AT_NSPECIAL)
{
	nspecial_storage_level = 0;
}

if((prev_state == PS_ATTACK_AIR) && attack == AT_DAIR)
{
	if(vanda_landed_dair != noone && instance_exists(vanda_landed_dair) && vanda_landed_dair.object_index == a_obj_article1)
	{
		vanda_landed_dair.who_hit_dair = noone;
	}
	vanda_landed_dair = noone;
}

sound_stop(dspecial_sfx);

//FSpecial failsafe
max_fall = vanda_max_fall;
sound_stop(a_sfx_owl0);
fspecial_playing_swoosh = false;
