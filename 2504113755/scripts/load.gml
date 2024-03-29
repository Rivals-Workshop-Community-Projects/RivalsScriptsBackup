sprite_change_offset("idle", 68, 65);
sprite_change_offset("mcfly_idle", 37, 33);
sprite_change_offset("hurt", 68, 65);
sprite_change_offset("crouch", 68, 65);
sprite_change_offset("walk", 68, 65);
sprite_change_offset("walkturn", 68, 65);
sprite_change_offset("dash", 68, 65);
sprite_change_offset("dashstart", 68, 65);
sprite_change_offset("dashstop", 68, 65);
sprite_change_offset("dashturn", 68, 65);


sprite_change_offset("hurt", 68, 65);
sprite_change_offset("hurtground", 68, 65);
sprite_change_offset("downhurt", 68, 65);
sprite_change_offset("uphurt", 68, 65);
sprite_change_offset("bighurt", 68, 65);
sprite_change_offset("bouncehurt", 68, 65);
sprite_change_offset("spinhurt", 68, 65);

sprite_change_offset("brian_taunt", 112, 178);


sprite_change_offset("mcfly_remove", 68*2, 65*2);



sprite_change_offset("jumpstart", 68, 65);
sprite_change_offset("jump", 68, 65);
sprite_change_offset("doublejump", 68, 65);
sprite_change_offset("walljump", 68, 65);
sprite_change_offset("pratfall", 68, 65);
sprite_change_offset("land", 68, 65);;
sprite_change_offset("landinglag", 68, 65);

sprite_change_offset("parry", 68, 65);
sprite_change_offset("roll_forward", 68, 65);
sprite_change_offset("roll_backward", 68, 65);
sprite_change_offset("airdodge", 68, 65);
sprite_change_offset("waveland", 68, 65);
sprite_change_offset("tech", 68, 65);

sprite_change_offset("jab", 68, 65);
sprite_change_offset("dattack", 68, 65);
sprite_change_offset("ftilt", 68, 65);
sprite_change_offset("dtilt", 68, 65);

sprite_change_offset("utilt", 68, 65);
sprite_change_offset("nair", 68, 65);
sprite_change_offset("fair", 68, 65);
sprite_change_offset("bair", 68, 65);
sprite_change_offset("uair", 68, 65);
sprite_change_offset("dair", 68, 65);
sprite_change_offset("fstrong", 68, 65);
sprite_change_offset("ustrong", 68, 65);
sprite_change_offset("dstrong", 68, 65);
sprite_change_offset("nspecial", 64, 94);
sprite_change_offset("fspecial", 68, 65);
sprite_change_offset("fspecial_afterimage", 68, 65);
sprite_change_offset("uspecial",68, 65);
sprite_change_offset("dspecial", 68, 65);
sprite_change_offset("dspecial_proj", 68, 65);

sprite_change_offset("dspec_hold", 68, 65);
sprite_change_offset("dspec_hold_small", 68, 65);

sprite_change_offset("dspec_ball", 68, 65);
sprite_change_offset("dspec_ball_die", 68, 65);

sprite_change_offset("dspec_die", 68, 65);

sprite_change_offset("taunt", 68, 65);
sprite_change_offset("phone_open", 68, 65);

sprite_change_offset("plat",68, 66);

sprite_change_offset("nspecial_proj", 68*2, 65*2);


sprite_change_offset( "jab_hurt", 68*2, 65*2);
sprite_change_offset( "ftilt_hurt", 68*2, 65*2);
sprite_change_offset( "dtilt_hurt", 68*2, 65*2);
sprite_change_offset( "utilt_hurt", 68*2, 65*2);
sprite_change_offset( "dattack_hurt", 68*2, 65*2);

sprite_change_offset( "fstrong_hurt", 68*2, 65*2);
sprite_change_offset( "ustrong_hurt", 68*2, 65*2);
sprite_change_offset( "dstrong_hurt", 68*2, 65*2);

sprite_change_offset( "nair_hurt", 68*2, 65*2);
sprite_change_offset( "fair_hurt", 68*2, 65*2);
sprite_change_offset( "dair_hurt", 68*2, 65*2);
sprite_change_offset( "uair_hurt", 68*2, 65*2);
sprite_change_offset( "bair_hurt", 68*2, 65*2);


sprite_change_offset( "fspecial_hurt", 68*2, 65*2);
sprite_change_offset( "dspecial_hurt", 68*2, 65*2);
sprite_change_offset( "uspecial_hurt", 68*2, 65*2);

sprite_change_offset( "idle_hurtbox", 64/2, 64);
sprite_change_offset( "wraith_hurtbox", 32/2, 32);



sprite_change_offset("hfx_part_plasma", 28, 31);


sprite_change_offset("plasma_x", 37, 36);
sprite_change_offset("plasma_x_circle_small", 50, 50);
sprite_change_offset("plasma_x_circle_big", 51, 38);
sprite_change_offset("plasma_t_small", 39, 43);
sprite_change_offset("plasma_t_big", 68, 101);
sprite_change_offset("plasma_line", 37, 36);
sprite_change_offset("plasma_x_big", 62, 66);
sprite_change_offset("plasma_circle", 102, 108);







user_event(5);

// ==================== MUlTI-ALTS ====================
true_alt = get_player_color(player);
get_fake_alt();
init_shader();

// portrait switcheroo
switch fake_alt {
    case 14: // gb
        set_victory_portrait(sprite_get("portrait_gb"));
		set_victory_sidebar(sprite_get("sidebar_gb"));
		set_ui_element(UI_HUD_ICON, get_char_info(player, INFO_HUD));
        set_ui_element(UI_HUDHURT_ICON, get_char_info(player, INFO_HUDHURT));
        break;
    case 24: // prism
        set_victory_portrait(sprite_get("portrait_prism"));
		set_victory_sidebar(sprite_get("sidebar_prism"));
		set_ui_element(UI_HUD_ICON, get_char_info(player, INFO_HUD));
        set_ui_element(UI_HUDHURT_ICON, get_char_info(player, INFO_HUDHURT));
        break;
    case 25: // event
        if get_synced_var(player) == 0 {
            set_victory_portrait(get_char_info(player, INFO_PORTRAIT));
            set_victory_sidebar(sprite_get("sidebar_default"));
            set_ui_element(UI_HUD_ICON, sprite_get("hud_genesis"));
            set_ui_element(UI_HUDHURT_ICON, sprite_get("hurt_genesis"));
            break; // break inside if statement intentionally
        }
    default:
        set_victory_portrait(get_char_info(player, INFO_PORTRAIT));
        set_victory_sidebar(sprite_get("sidebar_default"));
        set_ui_element(UI_HUD_ICON, get_char_info(player, INFO_HUD));
        set_ui_element(UI_HUDHURT_ICON, get_char_info(player, INFO_HUDHURT));
        break;
}

#define get_fake_alt
true_alt = get_player_color(player);
fake_alt = true_alt;
var test_alt = get_player_color(player);
for (var i = 0; i < 4; i += 1) {
    if get_color_profile_slot_r(test_alt, 0) == round(colorO[0] * 255)
    && get_color_profile_slot_g(test_alt, 0) == round(colorO[1] * 255)
    && get_color_profile_slot_b(test_alt, 0) == round(colorO[2] * 255)
    {
        fake_alt = test_alt;
        break;
    }
    test_alt += 1;
    if test_alt >= 6 { test_alt = 0; }
}
//print(get_player_name(player) + " " + string(true_alt) + " " + string(fake_alt))
