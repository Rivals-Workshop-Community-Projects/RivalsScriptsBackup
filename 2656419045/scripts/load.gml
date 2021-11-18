//masks need their offsets to be set manually
//because there aren't enough of them to justify doing it automatically

//Mask sizes: small_ / super_
//Mask stances: stand_ / duck_
//Mask disjoints: 0 / 1 / 2 (0 is always used for collision mask)

//#mark Mario masks
center_sprites("mask_", [
	"small_stand_disjoint0",
	"small_stand_disjoint1",
	"small_stand_disjoint2",
	
	"small_duck_disjoint0",
	"small_duck_disjoint1",
	"small_duck_disjoint2",
	
	"super_stand_disjoint0",
	"super_stand_disjoint1",
	"super_stand_disjoint2",
	
	"super_duck_disjoint0",
	"super_duck_disjoint1",
	"super_duck_disjoint2",
	
	"shell",
	
	"frozen_player"
], 1.0);

sprite_change_offset("mask_dead", 60000, 60000);

//#mark HUD Elements
center_sprites("hud_", [
	"reserve_box",
	"peril",
	"quickswap_col",
	"quickswap_nocol",
	"level_start",
	"escape_tip",
	"mario_escape_tip",
	"level_start_pride"
]);

//#mark Items
center_sprites("item_", [
	"mushroom",
	"fire_flower",
	"ice_flower",
	"shell_blue",
	"starman",
	"bowser",
	"shell_red",
	"shell_green",
	"coin",
	"tanooki_leaf",
	"1up"
]);


//#mark Decals
center_sprites("decal_", [
	"spin_lines",
	"twirl_lines",
	"twirl_blur",
	"dust",
	"burst",
	"points",
	"1up",
	"droplet",
	"star",
	"sparkle",
	"snowflake",
	"crosshair",
	"ice_chunk",
	"smoke",
	"taunt_explode",
	"letter",
	"fireball_glow",
	"dust_dirt",
	"dust_dark",
	"dust_snowflakes",
	"droplet_sand",
]);
// center_sprite("decal_letter", sprite_get(""), 1);

//#mark Projectile Sprites
center_sprites("proj_", [
	"fireball",
	"iceball"
]);
//#mark Projectile Masks
center_sprites("pmask_", [
	"fireball",
	"block",
	"pixel",
	"fireball_big",
	"ice"
]);

sprite_change_offset("pmask_holp", 60000, 60000);

//#mark Miscellaneous
center_sprites("misc_", [
	"roulette_plat",
	"error_warning"
]);

//#mark Rewards & Reward Captions
center_rewards("reward_", [
	"super_mushroom",
	"fire_flower",
]);
center_sprites("rewcap_", [
	"next",
	"ko",
	//SMB
	"super_mario_bros",
	"super_mushroom",
	"fire_flower",
	"red_shell",
	"green_shell",
	
	//SMB2
	"super_mario_bros_2",
	"cursed_key",
	"subcon_potion",
	"bob-omb",
	
	//Super Mario 3D World
	"super_mario_3d_world",
	"hop-chops",
	
	//Super Mario Maker
	"super_mario_maker",
	"key",
	"30_coin",
	
	//Super Mario Maker 2
	"super_mario_maker_2",
	"heavy_stone"
], 0.0);

#define center_rewards
/// center_rewards(prefix, sprites)
var prefix = argument0, sprites = argument1;
	for(var counteroo = 0, num_sprites = array_length_1d(sprites), invalid = sprite_get(""); counteroo < num_sprites; counteroo++) {
		var name = prefix + sprites[@counteroo], index = sprite_get(name);
		if(index == invalid) print_debug("BIG PROBLEM: Sprite " + name + " doesn't exist, idiot!!");
		sprite_change_offset(name, 1, 1);
	}

#define center_sprites
/// center_sprites(prefix, sprites, height_ratio = 0.5;)
var prefix = argument[0], sprites = argument[1];
var height_ratio = argument_count > 2 ? argument[2] : 0.5;;
	for(var counteroo = 0, num_sprites = array_length_1d(sprites), invalid = sprite_get(""); counteroo < num_sprites; counteroo++) {
		center_sprite(prefix + sprites[@counteroo], invalid, height_ratio);
	}

#define center_sprite
/// center_sprite(name, invalid, height_ratio = 0.5;)
var name = argument[0], invalid = argument[1];
var height_ratio = argument_count > 2 ? argument[2] : 0.5;;
	var index = sprite_get(name);
	if(index == invalid) print_debug("BIG PROBLEM: Sprite " + name + " doesn't exist, idiot!!");
	sprite_change_offset(name, round(sprite_get_width(index) / 2), round(sprite_get_height(index) * height_ratio));