hsprite_change_offset("idle", 92, 162, false);
hsprite_change_offset("crouch", 92, 162, false);
hsprite_change_offset("walk", 92, 162, false);
hsprite_change_offset("walkturn", 92, 162, false);
hsprite_change_offset("dash", 92, 160, false);
hsprite_change_offset("dashstart", 92, 162, false);
hsprite_change_offset("dashstop", 92, 162, false);
hsprite_change_offset("dashturn", 92, 162, false);

hsprite_change_offset("jumpstart", 92, 162, false);
hsprite_change_offset("jump", 92, 162, false);
hsprite_change_offset("doublejump", 92, 162, false);
hsprite_change_offset("walljump", 92, 162, false);
hsprite_change_offset("pratfall", 92, 162, false);
hsprite_change_offset("land", 92, 162, false);
hsprite_change_offset("landinglag", 92, 162, false);

hsprite_change_offset("parry", 92, 162, false);
hsprite_change_offset("roll_forward", 92, 162, false);
hsprite_change_offset("roll_backward", 92, 162, false);
hsprite_change_offset("airdodge", 92, 162, false);
hsprite_change_offset("waveland", 92, 162, false);
hsprite_change_offset("tech", 92, 162, false);

hsprite_change_offset("hurt", 92, 162, false);
hsprite_change_offset("hurtground", 92, 162, false);
hsprite_change_offset("uphurt", 92, 162, false);
hsprite_change_offset("downhurt", 92, 162, false);
hsprite_change_offset("bighurt", 92, 162, false);
hsprite_change_offset("bouncehurt", 92, 162, false);

hsprite_change_offset("jab", 92, 162, true);
hsprite_change_offset("dattack", 92, 162, true);
hsprite_change_offset("ftilt", 92, 162, true);
hsprite_change_offset("dtilt", 92, 162, true);
hsprite_change_offset("utilt", 92, 162, true);
hsprite_change_offset("nair", 92, 162, true);
hsprite_change_offset("fair", 92, 162, true);
hsprite_change_offset("bair", 92, 162, true);
hsprite_change_offset("uair", 92, 162, true);
hsprite_change_offset("dair", 92, 162, true);
hsprite_change_offset("fstrong", 82, 162, true);
hsprite_change_offset("ustrong", 92, 362, true);
hsprite_change_offset("dstrong", 98, 162, true);
hsprite_change_offset("nspecial", 92, 162, false);
hsprite_change_offset("fspecial", 92, 162, true);
hsprite_change_offset("uspecial", 92, 162, true);
hsprite_change_offset("dspecial", 92, 162, true);
hsprite_change_offset("taunt", 92, 162, false);
hsprite_change_offset("taunt2", 92, 162, false);

hsprite_change_offset("plat", 64, 94, false);


sprite_change_offset("aaa_hurtbox", 92, 162);
sprite_change_offset("aaa_crouchbox", 92, 162);
sprite_change_offset("barrier_mask", 92, 162);
sprite_change_offset("arrow", 3, 2);

sprite_change_offset("barrier_idle", 92, 162);
sprite_change_offset("barrier_spawn", 92, 162);
sprite_change_offset("barrier_hit", 92, 162);
sprite_change_offset("barrier_pulse", 92, 162);
sprite_change_offset("barrier_shatter", 92, 162);

sprite_change_offset("vfx_holyhitm", 94, 106);
sprite_change_offset("vfx_holyhitl", 122, 128);
sprite_change_offset("vfx_barrier_beam", 14, 22);
sprite_change_offset("vfx_fspec_blink", 98, 106);
sprite_change_offset("vfx_fspec_hits", 98, 106);
sprite_change_offset("vfx_fspec_final", 98, 106);
sprite_change_offset("vfx_fspec_no", 98, 106);
sprite_change_offset("vfx_blink", 92, 162);
sprite_change_offset("vfx_twinkle", 7, 7);
sprite_change_offset("vfx_warp_reappear", 92, 162);

sprite_change_offset("miiversepost", 60, 30);
set_victory_theme( sound_get( "win_music" ));

//Intellectual, Xenoblade Enjoyer, Third Synonym
#define hsprite_change_offset(sprite, set_x, set_y, hurtbox_sync){
    
    sprite_change_offset(sprite, set_x/2, set_y/2, hurtbox_sync);
    
}