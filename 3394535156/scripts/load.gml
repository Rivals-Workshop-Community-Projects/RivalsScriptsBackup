// load.gml

// Main Offset is 100, 130
var mainX = 100;
var mainY = 130;

// Grounded Basic
sprite_change_offset("idle", mainX, mainY);
sprite_change_offset("idle_wait", mainX, mainY);
sprite_change_offset("intro", mainX, mainY);
sprite_change_offset("crouch", mainX, mainY);
sprite_change_offset("walk", mainX, mainY);
sprite_change_offset("walkturn", mainX, mainY);
sprite_change_offset("dash", mainX, mainY);
sprite_change_offset("dashstart", mainX, mainY);
sprite_change_offset("dashstop", mainX, mainY);
sprite_change_offset("dashturn", mainX, mainY);

// Hurts
sprite_change_offset("hurt", mainX, mainY);
sprite_change_offset("bighurt", mainX, mainY);
sprite_change_offset("hurtground", mainX, mainY);
sprite_change_offset("bouncehurt", mainX, mainY);
sprite_change_offset("spinhurt", mainX, mainY);
sprite_change_offset("uphurt", mainX, mainY);
sprite_change_offset("downhurt", mainX, mainY);

// Air Basic
sprite_change_offset("jumpstart", mainX, mainY);
sprite_change_offset("jump", mainX, mainY);
sprite_change_offset("doublejump", mainX, mainY);
sprite_change_offset("walljump", mainX, mainY);
sprite_change_offset("pratfall", mainX, mainY);
sprite_change_offset("land", mainX, mainY);
sprite_change_offset("landinglag", mainX, mainY);

// Defense
sprite_change_offset("parry", mainX, mainY);
sprite_change_offset("roll_forward", mainX, mainY);
sprite_change_offset("roll_backward", mainX, mainY);
sprite_change_offset("airdodge", mainX, mainY);
sprite_change_offset("waveland", mainX, mainY);
sprite_change_offset("tech", mainX, mainY);

// Dandy Duds Animations
sprite_change_offset("walk_gold", mainX, mainY);
sprite_change_offset("dash_gold", mainX, mainY);
sprite_change_offset("dashturn_gold", mainX, mainY);
sprite_change_offset("jump_gold_L", mainX, mainY);
sprite_change_offset("jump_gold_R", mainX, mainY);
sprite_change_offset("doublejump_gold", mainX, mainY);
sprite_change_offset("waveland_gold", mainX, mainY);
sprite_change_offset("taunt_gold", mainX, mainY);

// Grounded Normals
sprite_change_offset("jab", mainX, mainY);
sprite_change_offset("dattack", mainX, mainY);
sprite_change_offset("ftilt", mainX, mainY);
sprite_change_offset("dtilt", mainX, mainY);
sprite_change_offset("utilt", mainX, mainY);

// Aerials
sprite_change_offset("nair", mainX, mainY);
sprite_change_offset("fair", mainX, mainY);
sprite_change_offset("bair", mainX, mainY);
sprite_change_offset("uair", mainX, mainY);
sprite_change_offset("dair", mainX, mainY);

// Strongs
sprite_change_offset("fstrong", mainX, mainY);
sprite_change_offset("ustrong", mainX, mainY);
sprite_change_offset("ustrong_fade_vfx", mainX, mainY);
sprite_change_offset("dstrong", mainX, mainY);
sprite_change_offset("dstrong_smoke_vfx", 106, 86);

// Specials
sprite_change_offset("nspecial", mainX, mainY);
sprite_change_offset("fspecial", mainX, mainY);
sprite_change_offset("uspecial", mainX, mainY);
sprite_change_offset("dspecial", mainX, mainY);

sprite_change_offset("bombburst", mainX, mainY);

// Taunt(s)
sprite_change_offset("taunt", mainX, mainY);

// Respawn Plat
sprite_change_offset("plat", mainX, mainY+2);
sprite_change_offset("plat_vat", mainX, mainY+2);

// Bombs
sprite_change_offset("fspecial_cancel_vfx", 38, 40);
sprite_change_offset("bomb_bounce", mainX, mainY);
sprite_change_offset("bomb_destroy", 28, 24);
sprite_change_offset("bomb_bounce_fx", 44, 54);
sprite_change_offset("bomb_bounce_large_cut_fx", mainX, mainY);
sprite_change_offset("bomb_lob", mainX, mainY);
sprite_change_offset("bomb_float", mainX, mainY);
sprite_change_offset("bomb_lob", mainX, mainY);
sprite_change_offset("bolt", 32,32);
sprite_change_offset("bolt_strong", 68,68);
sprite_change_offset("bolt_vfx", 10, 8);
sprite_change_offset("bomb_cluster_fx", 38, 38);
sprite_change_offset("fstrong_dissipation_vfx", 76, 82);
sprite_change_offset("fspecial_teleport_vfx", 62, 100);
sprite_change_offset("cascade_ember", 18, 6);
sprite_change_offset("cascade_flame", 30, 74);
sprite_change_offset("cascade_flame_mask", 30, 74);
sprite_change_offset("cascade_ember_trail", 4, 4);
sprite_change_offset("cascade_ember_explode", 40, 34);
sprite_change_offset("bomb_warning_circle", 45, 45);
sprite_change_offset("powder_hud_custom",24,24);
sprite_change_offset("powder_hud_custom_small",14, 12);
sprite_change_offset("powder_hud_custom_outline",24,24);
sprite_change_offset("hud_bomb_names",0, 12);
//Vat
sprite_change_offset("fspecial_vat", 98, 76);
sprite_change_offset("fspecial_vat_mask", 98, 76);

// VFX
sprite_change_offset("uspecial_afterfxback", mainX, mainY);
sprite_change_offset("uspecial_afterfxfront", mainX, mainY);
sprite_change_offset("goldalt_sparkle_effect_med", 19, 19);
sprite_change_offset("goldalt_sparkle_effect_sml", 19, 19);
sprite_change_offset("explode_medium_fx", 100, 100);
sprite_change_offset("explode_large_fx", 126, 126);
sprite_change_offset("ustrong_hit_fx", 126, 126);
sprite_change_offset("cascade_tiny_flame_hfx", 14, 70)
sprite_change_offset("cascade_flame_hfx", 100,100);
sprite_change_offset("sparkler_hit_fx", 120,120);
sprite_change_offset("sparkler_hit_sml_fx", 90,90);
sprite_change_offset("hud_arrow", 8, 24);
sprite_change_offset("hud_box", 34, 34);
sprite_change_offset("hud_box_cut", 34, 54);

sprite_change_offset("hit_particle1", 32, 4);
sprite_change_offset("hit_particle2", 32, 4);

// Misc. Stuff
sprite_change_offset("_arrow", 7, 0);
sprite_change_offset("nspecial_proj", mainX, mainY);

//any compat Stuff
sprite_change_offset("miiverse", 60, 30);
sprite_change_offset("gfz_signpost", 16, 45);

// victory bg (placeholder until we make his stage)
set_victory_bg(CH_SHOVEL_KNIGHT);
sprite_change_offset("uspecial_trail", 12, 14);
