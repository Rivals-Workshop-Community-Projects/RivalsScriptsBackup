kirb_chonk_spr_map = ds_map_create();
sprite_change_offset_chonk("idle", 96, 114);

sprite_change_offset_chonk("bighurt", 96, 114);
sprite_change_offset_chonk("hurt", 96, 114);
sprite_change_offset_chonk("hurtground", 96, 114);
sprite_change_offset("uphurt", 96, 114);
sprite_change_offset("downhurt", 96, 114);
sprite_change_offset("bouncehurt", 96, 114);
sprite_change_offset("spinhurt", 96, 114);

sprite_change_offset("crouch", 96, 114);
sprite_change_offset_chonk("walk", 96, 114);
sprite_change_offset_chonk("walkturn", 96, 114);
sprite_change_offset_chonk("dash", 96, 114);
sprite_change_offset("dashstart", 96, 114);
sprite_change_offset("dashstop", 96, 114);
sprite_change_offset("dashturn", 96, 114);

sprite_change_offset_chonk("jumpstart", 96, 114);
sprite_change_offset_chonk("jump", 96, 114);
sprite_change_offset("doublejump", 96, 114);
sprite_change_offset("walljump", 96, 114);

sprite_change_offset("pratfall", 96, 114);

sprite_change_offset_chonk("land", 96, 114);
sprite_change_offset("landinglag", 96, 114);

sprite_change_offset("parry", 96, 114);
sprite_change_offset("roll_forward", 96, 114);
sprite_change_offset("roll_backward", 96, 114);
sprite_change_offset("airdodge",  96, 114);
sprite_change_offset("waveland", 96, 114);
sprite_change_offset("tech", 96, 114);

sprite_change_offset("jab", 40, 62);
sprite_change_offset("dattack", 40, 62);
sprite_change_offset("ftilt", 55, 62);
sprite_change_offset("dtilt", 38, 62);
sprite_change_offset("utilt", 42, 82);
sprite_change_offset("nair", 40, 62);
sprite_change_offset("fair", 32, 54);
sprite_change_offset("bair", 68, 42);
sprite_change_offset("uair", 42, 76);
sprite_change_offset("dair", 32, 50);
sprite_change_offset("fstrong", 74, 94);
sprite_change_offset("ustrong", 62, 142);
sprite_change_offset("dstrong", 96, 70);
sprite_change_offset("nspecial", 96, 114);
sprite_change_offset("nspecial_beam_start", 64, 64);
sprite_change_offset("nspecial_beam_end", 64, 64);
sprite_change_offset("nspecial_beam_loop", 0, 64);
sprite_change_offset("nspecial_beam_fade", 0, 33);
sprite_change_offset("vfx_nspecial_fire", 100, 140);
sprite_change_offset("vfx_ftilt_destroy", 100, 140); // actually for nspecial, not ftilt
sprite_change_offset("fspecial", 40, 62);
sprite_change_offset("wheelspark", 37, 38);
sprite_change_offset("uspecial", 88, 84);
sprite_change_offset("uspecial_charge", 50, 48);
sprite_change_offset("dspecial", 64, 106);
sprite_change_offset("dspecial_air", 54, 80);
sprite_change_offset("stone", 34, 100);

sprite_change_offset("fx_ability_get", 96, 90);
sprite_change_offset("fx_nspecial_fire", 68, 140);
sprite_change_offset("fx_star_hit", 64, 64);
sprite_change_offset("fx_star_trail", 11, 10);
sprite_change_offset("ability_fire", 96, 118);
sprite_change_offset("ability_beam", 101, 198);
sprite_change_offset("ability_ranger", 101, 118);
sprite_change_offset("ability_fighter", 95, 118);
sprite_change_offset("ability_sword", 104, 118);
sprite_change_offset("ability_water", 103, 120);
sprite_change_offset("ability_leaf", 100, 118);
sprite_change_offset("ability_ice", 96, 118);
sprite_change_offset("ability_tornado", 104, 118);
sprite_change_offset("ability_bomb", 101, 118);
sprite_change_offset("ability_mike1", 72, 116);
sprite_change_offset("ability_mike2", 72, 116);
sprite_change_offset("ability_mike3", 96, 168);
sprite_change_offset("ability_abyss", 101, 118);
sprite_change_offset("ability_esp", 100, 118);
sprite_change_offset("ability_drill", 100, 118);
sprite_change_offset("ability_spark", 100, 118);

sprite_change_offset("ability_beam_proj", 108, 94);
sprite_change_offset("ability_beam_hitFX", 100, 118);
sprite_change_offset("ability_beam_proj_trail", 102, 118);

sprite_change_offset("ability_ranger_full", 101, 118);
sprite_change_offset("ability_ranger_rotate", 110, 112);
sprite_change_offset("ability_ranger_proj_default", 100, 100);
sprite_change_offset("ability_ranger_proj_small", 101, 100);
sprite_change_offset("ability_ranger_proj_medium", 101, 100);
sprite_change_offset("ability_ranger_proj_large", 101, 100);

sprite_change_offset("ability_leaf_fallVFX", 100, 118);

sprite_change_offset("ability_ice_blow_stopVFX", 160, 118);
sprite_change_offset("ability_ice_puff_blowVFX", 100, 123);

sprite_change_offset("ability_bomb_proj", 101, 120);
sprite_change_offset("ability_bomb_explodeVFX", 101, 118);

sprite_change_offset("ability_esp_proj", 100, 118);
sprite_change_offset("ability_esp_proj_elec", 100, 118);

sprite_change_offset("ability_drill_dirt_emerge", 100, 118);

sprite_change_offset("taunt", 96, 114);

sprite_change_offset("phone_open", 96, 114);

sprite_change_offset("plat_behind", 68, 108);

sprite_change_offset("nspecial_proj", 64, 94);
sprite_change_offset("wind", 10, 10);
sprite_change_offset("wind2", 10, 10);
sprite_change_offset("star_big", 30, 30);
sprite_change_offset("planet", 15, 15);
sprite_change_offset("fx_dust_cloud", 100, 120);
sprite_change_offset("fspecial_trail", 40, 62);

sprite_change_offset("chunky_hurtbox", 96, 114);

user_event(1);
ds_map_set(kirb_chonk_spr_map, sprite_get("dash"), sprite_get("walk_chonky"));
ds_map_set(kirb_chonk_spr_map, sprite_get("dashstart"), sprite_get("walk_chonky"));
ds_map_set(kirb_chonk_spr_map, sprite_get("dashstop"), sprite_get("walk_chonky"));
ds_map_set(kirb_chonk_spr_map, sprite_get("dashturn"), sprite_get("walkturn_chonky"));
#define sprite_change_offset_chonk(_spr_name, _offset_x, _offset_y)
var _chonk_name = _spr_name + "_chonky";
sprite_change_offset(_spr_name, _offset_x, _offset_y);
if ("kirb_chonk_spr_map" in self)
{
   ds_map_set(kirb_chonk_spr_map, sprite_get(_spr_name), sprite_get(_chonk_name));
   sprite_change_offset(_chonk_name, _offset_x, _offset_y);
}

sprite_change_offset("trialgrounds_kirby", 31, 0);

set_victory_theme(sound_get("victory"));