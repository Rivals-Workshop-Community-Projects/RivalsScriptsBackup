sprite_change_offset("idle", 13, 42);
sprite_change_offset("idle_y", 18, 42);
sprite_change_offset("hurt", 21, 39);
sprite_change_offset("crouch", 19, 38);
sprite_change_offset("crawl", 20, 29);
sprite_change_offset("dashstart", 22, 42);
sprite_change_offset("dash", 39, 45);
sprite_change_offset("dashturn", 21, 45);
sprite_change_offset("dashstop", 21, 42);

sprite_change_offset("jumpstart", 23, 32);
sprite_change_offset("jump", 16, 45);
sprite_change_offset("doublejump", 45, 62);
sprite_change_offset("walljump", 32, 47);
sprite_change_offset("pratfall", 11, 33);
sprite_change_offset("pratland", 22, 38);
sprite_change_offset("land", 33, 35);
sprite_change_offset("landinglag", 33, 35);

sprite_change_offset("parry", 20, 39);
sprite_change_offset("substitute_hit", 30, 48);
sprite_change_offset("substitute_fall", 28, 50);
sprite_change_offset("airdodge", 20, 39);
sprite_change_offset("roll_backward", 20, 39);
sprite_change_offset("roll_forward", 20, 39);

sprite_change_offset("dattack", 48, 47, true);
sprite_change_offset("ntilt", 20, 42, true);
sprite_change_offset("dtilt", 26, 18, true);
sprite_change_offset("utilt", 14, 79, true);
sprite_change_offset("nair", 34, 45, true);
sprite_change_offset("nair_alt", 32, 44);
sprite_change_offset("fair", 23, 39, true);
sprite_change_offset("fair_alt", 24, 42);
sprite_change_offset("bair", 42, 52, true);
sprite_change_offset("uair", 42, 72, true);
sprite_change_offset("dair", 29, 52, true);
sprite_change_offset("fstrong", 24, 35, true);
sprite_change_offset("ustrong", 45, 48, true);
sprite_change_offset("dstrong", 48, 58, true);
sprite_change_offset("nspecial", 17, 45, true);
sprite_change_offset("nspecial_alt1", 14, 43);
sprite_change_offset("nspecial_alt2", 14, 43);
sprite_change_offset("nspecial_alt3", 15, 46);
sprite_change_offset("fspecial", 29, 42, true);
sprite_change_offset("fspecial_air", 29, 37);
sprite_change_offset("uspecial", 41, 61, true);
sprite_change_offset("grab", 27, 45, true);
sprite_change_offset("taunt", 23, 49);
sprite_change_offset("taunt_alt1", 25, 48);
sprite_change_offset("taunt_alt2", 28, 48);

 sprite_change_offset("plat", 32, 47);
sprite_change_offset("microplatform", 1, 0);

sprite_change_offset("proj_pokeball", 12, 12);
sprite_change_offset("proj_pokeball_broken", 12, 12);
sprite_change_offset("vfx_ball_open", 48, 48);
sprite_change_offset("vfx_yoyo_drop", 36, 20);
sprite_change_offset("vfx_yoyo_snap", 4, 11); //length: 128

sprite_change_offset("proj_statue", 25, 44); 
//IMPORTANT: must match asset_get("rock_down_spr") perfectly, or expect desyncs
var rock_spr = asset_get("rock_down_spr");
var statue_spr = sprite_get("proj_statue");
sprite_change_collision_mask("proj_statue", false, 2, 
                             (sprite_get_bbox_left(rock_spr)- sprite_get_xoffset(rock_spr) + sprite_get_xoffset(statue_spr)),
                             (sprite_get_bbox_top(rock_spr)  - sprite_get_yoffset(rock_spr) + sprite_get_yoffset(statue_spr)),
                             (sprite_get_bbox_right(rock_spr) - sprite_get_xoffset(rock_spr) + sprite_get_xoffset(statue_spr)),
                             (sprite_get_bbox_bottom(rock_spr) - sprite_get_yoffset(rock_spr) + sprite_get_yoffset(statue_spr)),
                             1);

sprite_change_offset("proj_payday", 16, 16);
sprite_change_offset("proj_payday_broken", 16, 16);
sprite_change_collision_mask("proj_payday", false, 2, 12, 12, 20, 20, 2);
sprite_change_collision_mask("proj_payday_broken", false, 2, 12, 12, 20, 20, 1);

sprite_change_offset("orca_fsmash_puddle", 20, 20);
sprite_change_offset("orca_fsmash_puddle_hurt", 20, 20);

set_victory_theme(sound_get("victory"));

sprite_change_offset("glitch_bg", 17, 37);

//non-defined have implicit zero (what Pokemon Stadium expects)
sprite_change_offset("cmp_stadium_front_alt3", 87, -1);
sprite_change_offset("cmp_stadium_front_alt4", 87, -1);

msg_effective_alt = get_fake_alt();

// #region vvv LIBRARY DEFINES AND MACROS vvv
// DANGER File below this point will be overwritten! Generated defines and macros below.
// Write NO-INJECT in a comment above this area to disable injection.
#define get_fake_alt // Version 0
    // 1-555-THX-NART
    var fake_alt = get_player_color(player);

    var curr_color = [round(colorO[2*4] * 255),
                      round(colorO[2*4 +1] * 255),
                      round(colorO[2*4 +2] * 255) ];
    for (var i = 0; i < 4; i++ )
    {
        //OS DEPENDENT ALT CAUSES ISSUES HERE
        var checked_alt = (fake_alt == 14) ? (get_synced_var(player) & 0xF00) >> 8 : fake_alt;
        var checked_slot = (fake_alt == 14) ? 1 : 2;
        if get_color_profile_slot_r(checked_alt, checked_slot) == curr_color[0]
        && get_color_profile_slot_g(checked_alt, checked_slot) == curr_color[1]
        && get_color_profile_slot_b(checked_alt, checked_slot) == curr_color[2]
        {
            //alt identified
            break;
        }
        // ditto alts get "pushed" +1 across the color array
        // wraps back to 0 at alt 6
        fake_alt += 1;
        if (fake_alt >= 6) fake_alt = 0;
    }
    return fake_alt;
// DANGER: Write your code ABOVE the LIBRARY DEFINES AND MACROS header or it will be overwritten!
// #endregion