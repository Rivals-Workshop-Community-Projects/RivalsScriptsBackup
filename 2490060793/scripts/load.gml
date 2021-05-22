sprite_change_offset("idle", 80, 158);
sprite_change_offset("hurt", 80, 118);
sprite_change_offset("hurtground", 80, 158);
sprite_change_offset("bighurt", 80, 118);
sprite_change_offset("spinhurt", 80, 108);
sprite_change_offset("uphurt", 80, 118);
sprite_change_offset("downhurt", 80, 118);
sprite_change_offset("bouncehurt", 80, 118);
sprite_change_offset("crouch", 80, 158);
sprite_change_offset("walk", 80, 158);
sprite_change_offset("walkturn", 80, 158);
sprite_change_offset("dash", 80, 158);
sprite_change_offset("dashstart", 80, 158);
sprite_change_offset("dashstop", 80, 158);
sprite_change_offset("dashturn", 80, 158);

sprite_change_offset("jumpstart", 80, 158);
sprite_change_offset("jump", 80, 118);
sprite_change_offset("doublejump", 80, 118);
sprite_change_offset("walljump", 80, 118);
sprite_change_offset("pratfall", 80, 118);
sprite_change_offset("land", 80, 158);
sprite_change_offset("landinglag", 80, 158);

sprite_change_offset("parry", 80, 158);
sprite_change_offset("roll_forward", 80, 158);
sprite_change_offset("roll_backward", 80, 158);
sprite_change_offset("airdodge", 80, 118);
sprite_change_offset("waveland", 80, 158);
sprite_change_offset("tech", 80, 158);

sprite_change_offset("jab", 80, 158);
sprite_change_offset("dattack", 80, 158);
sprite_change_offset("ftilt", 80, 158);
sprite_change_offset("dtilt", 80, 158);
sprite_change_offset("utilt", 80, 158);
sprite_change_offset("nair", 80, 118);
sprite_change_offset("fair", 80, 118);
sprite_change_offset("bair", 80, 118);
sprite_change_offset("uair", 80, 118);
sprite_change_offset("dair", 80, 118);
sprite_change_offset("fstrong", 80, 158);
sprite_change_offset("ustrong", 80, 158);
sprite_change_offset("dstrong", 80, 158);
sprite_change_offset("nspecial", 80, 158);
sprite_change_offset("fspecial", 80, 158);
sprite_change_offset("uspecial", 80, 158);
sprite_change_offset("dspecial", 80, 158);
sprite_change_offset("dspecial_air", 80, 118);
sprite_change_offset("taunt", 80, 158);

sprite_change_offset("fs", 160, 198);

sprite_change_offset("plat", 60, 0);

sprite_change_offset("nspecial_proj", 29, 10);
sprite_change_offset("nspecial_vfx", 18, 18);
sprite_change_offset("hud_meter", 0, 0);
sprite_change_offset("hud_meter_red", 0, 0);
sprite_change_offset("hud_meter_flash", 0, 0);
sprite_change_offset("orb", 32, 32);
sprite_change_offset("orb_pulse", 60, 60);
sprite_change_offset("uspec_indicator", 80, 158);
sprite_change_offset("fspecial_vfx", 80, 158);
sprite_change_offset("orb_explosion_vfx", 80, 80);

sprite_change_collision_mask("hitbox_circle", 0, 0, 0, 0, 0, 0, 0);
sprite_change_collision_mask("hitbox_rect", 0, 0, 0, 0, 0, 0, 0);
sprite_change_collision_mask("hitbox_roundrect", 0, 0, 0, 0, 0, 0, 0);

sprite_change_offset("hitbox_circle", 100, 100);
sprite_change_offset("hitbox_rect", 100, 100);
sprite_change_offset("hitbox_roundrect", 100, 100);

set_victory_theme(sound_get("victory_music"));
set_victory_bg(sprite_get("bg"));