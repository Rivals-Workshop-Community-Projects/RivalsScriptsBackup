//article1_init.gml

article_id = 0;
/* --- available objects for article1 --- 
	1 - ice meteor (nspecial)
	2 - ice lance ground check (back dtilt)
	3 - ice lance (back dtilt)
	4 - aura
	5 - MENACING
*/

//ice meteor
sprite_index = sprite_get("ice_meteor_mask");
image_index = 0;
depth = -1;
ignores_walls = false;

meteor_charge_anim = 0;
meteor_size = 0; 
meteor_state = 0;
meteor_has_hit = 0;
meteor_dir = player_id.spr_dir;
spr_dir = meteor_dir;

meteor_sparkle_timer = 5;
meteor_charge_timer = 5;
meteor_falling_timer = 0;
meteor_splash_timer = 4;
shake_the_cam = 0;

//ice lance_ledge
sprite_index = sprite_get("empty");
ice_lance_spr_dir = player.spr_dir;

//ice lance
sprite_index = sprite_get("empty");
lance_anim_timer = 0;
lance_spr_dir = player.spr_dir;

//aura
aura_anim_timer = 0;

//MENACING
menacing_lifetime = 0;
spr_dir = 1;
menacing_hsp_dir = player_id.spr_dir;