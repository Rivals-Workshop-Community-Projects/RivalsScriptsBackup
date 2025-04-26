//death.gml
uspecial_used = false;
fspecial_used = false;
fspecial_jumps = 2;

//Destroy every NSpecial belonging to this Vanda
var nspecial_entity = find_nspecial(self);
while(nspecial_entity != noone)
{
	nspecial_entity.microstate = 90; //PS_CLEANUP
	nspecial_entity.macrostate = 9;  //MS_CLEANUP
	nspecial_entity.state_timer = 0;
	var nspecial_entity = find_nspecial(self);
}

nspecial_storage_level = 0;

sound_stop(dspecial_sfx);


//FSpecial failsafe
max_fall = vanda_max_fall;
sound_stop(a_sfx_owl0);
fspecial_playing_swoosh = false;


djumps_restored = 0;

//Remove all DSpecial FX in the event of death
//if((state == PS_DEAD || state == PS_RESPAWN || state == PS_SPAWN) && state_timer == 1)
{
	ds_list_clear(dspecial_fx_list);
	ds_list_clear(dspecial_fx_list_add);
}

with(oPlayer)
{
	if(vanda_rune_o_player == other)
	{
		vanda_rune_o_player = -1;
		vanda_rune_o_mark = 0;
		with(other)
		{
			sound_play(a_sfx_holy_tablet, false, 0);
		}
	}
}

#define find_nspecial(this_player_id)
	with(obj_article1)
	{
		if(player_id == this_player_id)
		{
			if(variable_instance_exists(self, "vanda_variable"))
			{
				if(macrostate != 9) //MS_CLEANUP
				{
					return self;
				}
			}
		}
	}
	return noone;