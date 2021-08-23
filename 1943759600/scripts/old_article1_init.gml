state = 0;
state_timer = 0;

can_be_grounded = 0;

field_index = 0;
//field_size = 128;

field_size = 152;

sprite_index = sprite_get("nspecial_gem")

anim_speed = 0.26;

destroy_timer = 60;

floatsin = 0;

cooldown = -1;
cooldown_timer = 100;

act = 0;

vault_wobble_amount = 3; //Cosmetic. Adjusts how much it gets pushed down when vaulted off of.

vault_spin_amount = 180;

invincibility_time = 55;

sound_play(asset_get("sfx_ice_shieldup"))
sound_play(asset_get("sfx_ice_ftilt"))
