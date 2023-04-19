sprite_change_offset("idle", 128, 190);
sprite_change_offset("idle_2", 128, 190);
sprite_change_offset("crouch", 128, 190);
sprite_change_offset("crouch_idle", 128, 190);
sprite_change_offset("walk", 128, 190);
sprite_change_offset("walkturn", 128, 190);
sprite_change_offset("dash", 128, 190);
sprite_change_offset("dashstart", 128, 190);
sprite_change_offset("dashstop", 128, 190);
sprite_change_offset("dashturn", 128, 190);

sprite_change_offset("jumpstart", 128, 190);
sprite_change_offset("jump", 128, 190);
sprite_change_offset("doublejump", 128, 190);
sprite_change_offset("doublejump_backward", 128, 190);
sprite_change_offset("walljump", 128, 190);
sprite_change_offset("pratfall", 128, 190);
sprite_change_offset("land", 128, 190);
sprite_change_offset("landinglag", 128, 190);

sprite_change_offset("parry", 128, 190);
sprite_change_offset("roll_forward", 128, 190);
sprite_change_offset("roll_backward", 128, 190);
sprite_change_offset("airdodge", 128, 190);
sprite_change_offset("waveland", 128, 190);
sprite_change_offset("tech", 128, 190);

sprite_change_offset("jab", 128, 190);
sprite_change_offset("dattack", 128, 190);
sprite_change_offset("ftilt", 128, 190);
sprite_change_offset("dtilt", 128, 190);
sprite_change_offset("utilt", 128, 190);
sprite_change_offset("nair", 128, 190);
sprite_change_offset("fair", 128, 190);
sprite_change_offset("bair", 128, 190);
sprite_change_offset("uair", 128, 190);
sprite_change_offset("dair", 128, 190);
sprite_change_offset("fstrong", 128, 190);
sprite_change_offset("ustrong", 128, 190);
sprite_change_offset("dstrong", 128, 190);
sprite_change_offset("nspecial", 128, 200); // Adjusted up 10px
sprite_change_offset("dspecial_up", 128, 190); // AT_EXTRA 2 Custom version of Nspecial
sprite_change_offset("dspecial_down", 128, 190); // AT_EXTRA 2 Custom version of dspecial for clone
sprite_change_offset("dthrow", 128, 190);
sprite_change_offset("dthrow_behind", 128, 190);
sprite_change_offset("fspecial", 128, 190);
sprite_change_offset("fspecial_2", 128, 190);
sprite_change_offset("fspecial_air", 128, 190);
sprite_change_offset("uspecial", 128, 190);
sprite_change_offset("uspecial_2", 128, 190);
sprite_change_offset("uspecial_ground", 128, 190);
sprite_change_offset("dspecial", 128, 190);
sprite_change_offset("taunt", 128, 190);

sprite_change_offset("extra_1_beckon", 128, 190);
sprite_change_offset("extra_1_advance", 128, 190);
sprite_change_offset("clone_spawn", 128, 200); // Adjusted up 10px
sprite_change_offset("clone_icon", 7, 15);
sprite_change_offset("clone_airdash_forward", 128, 190);
sprite_change_offset("clone_airdash_backward", 128, 190);
sprite_change_offset("extra_3", 128, 190);
sprite_change_offset("clone_extra_3", 128, 190);
sprite_change_offset("clone_fast_fall_shine", 15, 15);

//Added for WISP
sprite_change_offset("wisp_start", 128, 128);
sprite_change_offset("wisp_idle", 128, 128);
sprite_change_offset("wisp_travel", 128, 128);
sprite_change_offset("wisp_disperse", 128, 128);

sprite_change_offset("intro", 128, 190);
sprite_change_offset("plat", 128, 128);
sprite_change_offset("plat_bg", 128, 128);
sprite_change_offset("plat_idle", 128, 190);
sprite_change_offset("plat_clone_assist", 118, 137);

sprite_change_offset("indicator", 7, 10);
sprite_change_offset("offscreen_indicator", 33, 33);
sprite_change_offset("offscreen_clone", 17, 17);

sprite_change_offset("vfx_smoke", 128, 128);
sprite_change_offset("vfx_fire_paw", 128, 128);
sprite_change_offset("vfx_fire_large", 128, 128);
sprite_change_offset("vfx_fire_medium", 128, 128);
sprite_change_offset("vfx_fire_directional", 128, 128);
sprite_change_offset("vfx_fire_smoke", 128, 128);
sprite_change_offset("vfx_fire_dash", 128, 128);
sprite_change_offset("vfx_fire_dash_upwards", 128, 128);
sprite_change_offset("vfx_dthrow_fire", 128, 128);

sprite_change_offset("hit_particle1",0,16);
sprite_change_offset("hit_particle2",0,16);
sprite_change_offset("hit_particle3",0,16);

sprite_change_offset("final_smash_start", 128, 190);
sprite_change_offset("final_smash_projectile", 128, 190);
sprite_change_offset("final_smash_grab", 128, 190);
sprite_change_offset("final_smash_success", 128, 190);


//sprite_change_offset("nspecial_proj", 128, 190);
sprite_change_offset("hurt", 128, 190);
sprite_change_offset("bighurt", 128, 190);
sprite_change_offset("bouncehurt", 128, 190);
sprite_change_offset("hurtground", 128, 190);
sprite_change_offset("downhurt", 128, 190);
sprite_change_offset("uphurt", 128, 190);
sprite_change_offset("spinhurt", 128, 190);

sprite_change_offset("compat_mamizou", 64, 94);

set_victory_theme(CH_FORSBURN);
set_victory_bg(sprite_get("victory_bg"));

//Supersonic's Skin Handler
user_event(15);