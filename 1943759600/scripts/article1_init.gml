disable_movement = true;

state = 0;
state_timer = 0;

can_be_grounded = 0;

invincibility_time = 55;

//Field stuff

field_size = 152;

//Visuals
spr = sprite_get("nspecial_gem"); //the actual drawn sprite.
img_number = sprite_get_number(spr);
sprite_index = asset_get("empty_sprite");
mask_index = sprite_get("nspecial_gem");
image_speed = 0;
anim_speed = 0.26;

f_image_index = 0;

ang = 0; //the angle of the sprite, used for the vault.

x_offset = 0;//horizontal offset of the sprite
y_offset = 0;//vertical offset of the sprite

field_index = 0; //image index of the field.


destroy_timer = 60;

floatsin = 0;

cooldown = -1;
cooldown_timer = 100;

act = 0;

vault_wobble_amount = 3; //Cosmetic. Adjusts how much it gets pushed down when vaulted off of.

vault_spin_amount = 180;

//Play spawning sound
sound_play(asset_get("sfx_ice_shieldup"));
sound_play(asset_get("sfx_ice_ftilt"));
