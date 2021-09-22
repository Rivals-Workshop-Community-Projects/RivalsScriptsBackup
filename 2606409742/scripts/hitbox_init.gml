orig_player_id = player_id;

is_spear = (sprite_index == sprite_get("spears"));
hitpause_timer = 0;
has_hit_player = false;

if is_spear{
	grounds = 1;
	walls = 1;
	enemies = 1;
	transcendent = true;
	plasma_safe = true;
	
	collision_sprite = sprite_get("spears_mask");
	
	hbox_group2 = array_create(4,array_create(50,array_create(10,0))); //ew
	
	orig_player = player;
	orig_player_id = player_id;
	
	spear_durability = player_id.spear_durability;
	
	player_id.flying_spear = self;
	player_id.flying_spear_sound = sound_play(player_id.sfx_botw_weapon_thrown, true);
}