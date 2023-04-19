//article1_init

if(player_id.xp_mod == 1){
	sprite_index = sprite_get("xpshards2");
	image_index = random_func(0, 3, true);
} else if(player_id.goldenIntro == true){
	sprite_index = sprite_get("xpshards1");
	image_index = random_func(0, 3, true);
} else if(player_id.geneIntro == true){
	sprite_index = sprite_get("xpshards3");
	image_index = random_func(0, 3, true);
} else {
	sprite_index = sprite_get("xpshards");
	image_index = random_func(0, 3, true);
}
mask_index = sprite_get("xpshards");
image_speed = 0.0;

ignores_walls = true;

timer = 0;

rng_speed = random_func(player_id.xp_test,1,false);

//normal attack
hsp = player_id.spr_dir*-1*rng_speed + 3*player_id.spr_dir;
vsp = rng_speed*-1 - 2;