sprite_change_offset("idle", 65, 94);
sprite_change_offset("hurt", 65, 94);
sprite_change_offset("crouch", 65, 94);
sprite_change_offset("walk", 65, 94);
sprite_change_offset("walkturn", 63, 94);
sprite_change_offset("dash", 65, 94);
sprite_change_offset("dashstart", 65, 94);
sprite_change_offset("dashstop", 65, 94);
sprite_change_offset("dashturn", 65, 94);

sprite_change_offset("jumpstart", 65, 94);
sprite_change_offset("jump", 65, 94);
sprite_change_offset("doublejump", 65, 94);
sprite_change_offset("walljump", 65, 94);
sprite_change_offset("pratfall", 65, 94);
sprite_change_offset("land", 65, 94);
sprite_change_offset("landinglag", 65, 94);

sprite_change_offset("parry", 65, 94);
sprite_change_offset("roll_forward", 65, 94);
sprite_change_offset("roll_backward", 65, 94);
sprite_change_offset("airdodge", 65, 94);
sprite_change_offset("waveland", 65, 94);
sprite_change_offset("tech", 65, 94);

sprite_change_offset("jab", 65, 94);
sprite_change_offset("dattack", 65, 94);
sprite_change_offset("ftilt", 65, 94);
sprite_change_offset("dtilt", 65, 94);
sprite_change_offset("utilt", 65, 118);
sprite_change_offset("nair", 65, 94);
sprite_change_offset("fair", 65, 94);
sprite_change_offset("bair", 193, 94);
sprite_change_offset("uair", 65, 222);
sprite_change_offset("dair", 65, 94);
sprite_change_offset("fstrong", 109, 146);
sprite_change_offset("ustrong", 65, 94);
sprite_change_offset("dstrong", 65, 126);
sprite_change_offset("nspecial", 65, 94);
sprite_change_offset("fspecial", 109, 146);
sprite_change_offset("uspecial", 65, 94);
sprite_change_offset("dspecial", 65, 94);
sprite_change_offset("taunt", 65, 94);

sprite_change_offset("plat", 65, 94);

sprite_change_offset("emoji_splat", 31, 31);
sprite_change_offset("laugh_splat", 65, 63);
sprite_change_offset("reverse_laugh_splat", 64, 63);
sprite_change_offset("emoji_particle", 31, 31);
sprite_change_offset("nspecial_proj", 65, 94);
sprite_change_offset("fspecial_proj", 28, 8);
sprite_change_offset("fspecial_proj_mask", 28, 8);
sprite_change_offset("dair_proj", 0, 0);
sprite_change_offset("nspecial_charge", 32, 32);
sprite_change_offset("nspecial_aura", 65, 94);
sprite_change_offset("dspecial_border", 95, 95);
sprite_change_offset("dspecial_bg", 95, 95);
sprite_change_offset("kirby_copy_ability", 36, 70);
sprite_change_offset("kirby_copy_ability_hurt", 36, 70);
sprite_change_collision_mask("dspecial_border", false, 2, 32, 32, 159, 159, 1);

set_victory_theme( sound_get( "victory" ) );

// Get player color and assign to slot 6
var indicator_color = get_player_hud_color(player);
set_article_color_slot(6,
                       color_get_red(indicator_color),
                       color_get_green(indicator_color),
                       color_get_blue(indicator_color),
                       1);