sprite_change_offset("idle", 64, 94);
sprite_change_offset("1", 64, 94);
sprite_change_offset("2", 64, 94);
sprite_change_offset("hurt", 64, 94);
sprite_change_offset("bighurt", 64, 94);
sprite_change_offset("crouch", 64, 94);
sprite_change_offset("walk", 64, 94);
sprite_change_offset("walkturn", 64, 94);
sprite_change_offset("dash", 64, 94);
sprite_change_offset("dashstart", 64, 94);
sprite_change_offset("dashstop", 64, 94);
sprite_change_offset("dashturn", 64, 94);

sprite_change_offset("jumpstart", 64, 94);
sprite_change_offset("jump", 64, 94);
sprite_change_offset("doublejump", 80, 110);
sprite_change_offset("walljump", 64, 94);
sprite_change_offset("pratfall", 64, 94);
sprite_change_offset("land", 64, 94);
sprite_change_offset("landinglag", 64, 94);

sprite_change_offset("parry", 64, 94);
sprite_change_offset("roll_forward", 64, 94);
sprite_change_offset("roll_backward", 64, 94);
sprite_change_offset("airdodge_forward", 64, 94);
sprite_change_offset("airdodge_back", 64, 94);
sprite_change_offset("airdodge_up", 64, 94);
sprite_change_offset("airdodge_down", 96, 126);
sprite_change_offset("airdodge_upforward", 64, 94);
sprite_change_offset("airdodge_upback", 64, 94);
sprite_change_offset("airdodge_downforward", 96, 126);
sprite_change_offset("airdodge_downback", 96, 126);
sprite_change_offset("airdodge", 64, 94);
sprite_change_offset("waveland", 64, 94);
sprite_change_offset("tech", 64, 94);

sprite_change_offset("jab", 64, 94);
sprite_change_offset("dattack", 64, 94);
sprite_change_offset("dattack2", 64, 94);
sprite_change_offset("ftilt", 96, 126);
sprite_change_offset("dtilt", 96, 94);
sprite_change_offset("utilt", 96, 126);
sprite_change_offset("nair", 112, 94);
sprite_change_offset("fair", 96, 126);
sprite_change_offset("bair", 200, 95);
sprite_change_offset("uair", 96, 126);
sprite_change_offset("dair", 64, 94);
sprite_change_offset("dair_grab", 64, 94);
sprite_change_offset("fstrong", 160, 190);
sprite_change_offset("ustrong", 160, 190);
sprite_change_offset("dstrong", 160, 190);
sprite_change_offset("nspecial", 64, 94);
sprite_change_offset("fspecial", 128, 158);
sprite_change_offset("fspec_boom", 60, 102);
sprite_change_offset("fspec_boom_mask", 60, 102);
sprite_change_offset("fspec_boom_visualizer", 60, 102);
sprite_change_offset("fspec_die", 60, 102);
sprite_change_offset("uspecial", 96, 126);
sprite_change_offset("dspecial", 64, 94);
sprite_change_offset("taunt", 64, 94);
sprite_change_offset("taunt_jay", 64, 94);

sprite_change_offset("dattack2_hurt", 64, 94);

sprite_change_offset("plat", 64, 94);
sprite_change_offset("platbehind", 64, 100);

sprite_change_offset("nspecial_proj", 64, 54);
sprite_change_offset("nspecial_proj_big", 64, 74);

sprite_change_offset("sick", -36, 72);

sprite_change_offset("smoke", 51, 25);
sprite_change_offset("smokeback", 51, 25);
sprite_change_offset("smokeshade", 51, 25);
sprite_change_offset("smokeStencilMask", 51, 25);
sprite_change_offset("smokeStencilOutline", 51, 25);
sprite_change_offset("smokesolo", 112/2, 106/2);

sprite_change_offset("smokeHitbox", 51, 25);
sprite_change_offset("smokeHurtbox", 51, 25);

sprite_change_offset("bairburst", 0, 94);
sprite_change_offset("nspec_star", 144/2, 144/2);
sprite_change_offset("nspec_star_mask", 144/2, 144/2);
sprite_change_offset("nspec_star_visualizer", 144/2, 144/2);
sprite_change_offset("particle_2",20,20);
nspecEffect = hit_fx_create( sprite_get("particle_2"), 10);

sprite_change_offset("chains_front", 84, 102);
sprite_change_offset("chains_back", 84, 102);

sprite_change_offset("idle_clown", 64, 94);

sprite_change_offset("hfx_sword", 40, 80);
sprite_change_offset("hfx_smokeball", 40, 0);
sprite_change_offset("hfx_midsmoke", 35, 40);
sprite_change_offset("hfx_bigsmoke", 85, 80);

sprite_change_offset("nothing", 55, 80);

sprite_change_offset("chain_link",0,11);

//hehe
set_victory_bg( sprite_get( "mal_victorybg" ));
set_victory_theme( sound_get( "mal_victory" ));

//genny glass
sprite_change_offset("fstrong_genesis", 160, 190);
sprite_change_offset("ustrong_genesis", 160, 190);
sprite_change_offset("dstrong_genesis", 160, 190);