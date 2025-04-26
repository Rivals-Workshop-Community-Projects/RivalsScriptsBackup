sprite_change_offset("idle", 64, 79)
sprite_change_offset("idle_fire", 64, 79);
sprite_change_offset("hurt", 64, 79);
sprite_change_offset("hurtground", 64, 79);
sprite_change_offset("uphurt", 64, 79);
sprite_change_offset("downhurt", 64, 79);
sprite_change_offset("bighurt", 64, 79);
sprite_change_offset("bouncehurt", 64, 79);
sprite_change_offset("spinhurt", 64, 79);
sprite_change_offset("crouch", 64, 79);
sprite_change_offset("crouch_fire", 64, 79);
sprite_change_offset("walk", 64, 79);
sprite_change_offset("walk_fire", 64, 79);
sprite_change_offset("walkturn", 64, 79);
sprite_change_offset("walkturn_fire", 64, 79);
sprite_change_offset("dash", 64, 79);
sprite_change_offset("dash_fire", 64, 79);
sprite_change_offset("dashstart", 64, 79);
sprite_change_offset("dashstart_fire", 64, 79);
sprite_change_offset("dashstop", 64, 79);
sprite_change_offset("dashstop_fire", 64, 79);
sprite_change_offset("dashturn", 64, 79);
sprite_change_offset("dashturn_fire", 64, 79);

sprite_change_offset("jumpstart", 64, 79);
sprite_change_offset("jumpstart_fire", 64, 79);
sprite_change_offset("jump", 64, 79);
sprite_change_offset("jump_fire", 64, 79);
sprite_change_offset("doublejump", 64, 79);
sprite_change_offset("doublejump_fire", 64, 79);
sprite_change_offset("walljump", 64, 79);
sprite_change_offset("walljump_fire", 64, 79);
sprite_change_offset("pratfall", 64, 79);
sprite_change_offset("land", 64, 79);
sprite_change_offset("land_fire", 64, 79);
sprite_change_offset("landinglag", 64, 79);
sprite_change_offset("landinglag_fire", 64, 79);

sprite_change_offset("parry", 64, 79);
sprite_change_offset("roll_forward", 64, 79);
sprite_change_offset("roll_forward_fire", 64, 79);
sprite_change_offset("roll_backward", 64, 79);
sprite_change_offset("roll_backward_fire", 64, 79);
sprite_change_offset("airdodge", 64, 79);
sprite_change_offset("airdodge_fire", 64, 79);
sprite_change_offset("waveland", 64, 79);
sprite_change_offset("waveland_fire", 64, 79);
sprite_change_offset("tech", 64, 79);

sprite_change_offset("jab", 64, 79, true);
sprite_change_offset("jab_fire", 64, 79, true);
sprite_change_offset("dattack", 64, 79, true);
sprite_change_offset("ftilt", 64, 79, true);
sprite_change_offset("ftilt_fire", 64, 79, true);
sprite_change_offset("dtilt", 64, 79, true);
sprite_change_offset("dtilt_fire", 64, 79);
sprite_change_offset("utilt", 64, 79, true);
sprite_change_offset("utilt_fire", 64, 79, true);
sprite_change_offset("nair", 64, 79, true);
sprite_change_offset("fair", 64, 79, true);
sprite_change_offset("fair_fire", 64, 79, true);
sprite_change_offset("bair", 64, 79, true);
sprite_change_offset("uair", 64, 79, true);
sprite_change_offset("dair", 64, 79, true);
sprite_change_offset("dair_fire", 64, 79, true);
sprite_change_offset("fstrong", 64, 79, true);
sprite_change_offset("ustrong", 64, 79, true);
sprite_change_offset("dstrong", 64, 79, true);
sprite_change_offset("nspecial", 64, 79, true);
sprite_change_offset("fspecial", 64, 79, true);
sprite_change_offset("fspecial_air", 64, 79, true);
sprite_change_offset("uspecial", 64, 79, true);
sprite_change_offset("uspecial_forward", 64, 79, true);
sprite_change_offset("uspecial_diagonal", 64, 79, true);
sprite_change_offset("dspecial", 64, 79, true);
sprite_change_offset("taunt", 64, 79);
sprite_change_offset("dtaunt", 64, 79);
sprite_change_offset("intro", 64, 79);

for (var i = 0; i < array_length(tco_draw_sprites); i++) {
    var spr_name = tco_draw_sprites[i] + "_draw"
    sprite_change_offset(spr_name, 64, 79);
}

for (var i = 0; i < array_length(fire_draw_sprites); i++) {
    var spr_name = fire_draw_sprites[i] + "_fire_draw"
    sprite_change_offset(spr_name, 64, 79);
}

sprite_change_offset("plat", 64, 79);

sprite_change_offset("ftilt_fire_proj", 48, 16);
sprite_change_offset("laser_emitter", 0, 16);
sprite_change_offset("laser_head", 16, 16);
sprite_change_offset("laser_tile", 0, 16);
sprite_change_offset("laser_beam", 0, 16);

sprite_change_offset("fireblast_beam", 0, 15);
sprite_change_offset("fireblast_dissipate", 0, 15);
sprite_change_offset("fireblast_head", 10, 15);

sprite_change_offset("cloud_spawn", 64, 143);
sprite_change_offset("cloud_idle", 64, 143);
sprite_change_offset("cloud_idle_mask", 64, 143);
sprite_change_offset("cloud_idle_flashed", 64, 143);
sprite_change_offset("cloud_lightning_front", 64, 143);
sprite_change_offset("cloud_lightning_back", 64, 143);
sprite_change_offset("cloud_static", 64, 143);
sprite_change_offset("cloud_dissipate", 64, 143);

sprite_change_offset("electric_ground_vfx", 60, 118);

sprite_change_offset("laser_hfx_big", 64, 64);
sprite_change_offset("laser_hfx_small", 64, 64);

sprite_change_offset("offscreen_indicator", 16, 16);
sprite_change_offset("article_offscreen", 8, 8);

set_victory_bg(sprite_get("victory_bg"));
set_victory_theme(sound_get("victory"));