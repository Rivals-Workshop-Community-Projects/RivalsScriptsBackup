sprite_change_offset("idle", 36, 44);
sprite_change_offset("bighurt", 36, 62);
sprite_change_offset("hurt", 36, 40);
sprite_change_offset("spinhurt", 36, 40);
sprite_change_offset("crouch", 32, 43);
sprite_change_offset("crouchdash", 36, 44);
sprite_change_offset("walk", 36, 44);
sprite_change_offset("walkback", 26, 44);
sprite_change_offset("walkturn", 36, 44);
sprite_change_offset("backdash", 26, 44);
sprite_change_offset("dash", 36, 44);
sprite_change_offset("dashstart", 36, 44);
sprite_change_offset("dashstop", 36, 44);
sprite_change_offset("dashturn", 36, 44);

sprite_change_offset("idlehurtback", 18, 49);

sprite_change_offset("jumpstart", 36, 44);
sprite_change_offset("jump", 36, 44);
sprite_change_offset("doublejump", 36, 44);
sprite_change_offset("walljump", 36, 44);
sprite_change_offset("pratfall", 36, 44);
sprite_change_offset("land", 36, 44);
sprite_change_offset("landinglag", 36, 44);

sprite_change_offset("parry", 36, 44);
sprite_change_offset("roll_forward", 28, 44);
sprite_change_offset("roll_backward", 28, 44);
sprite_change_offset("airdodge", 36, 44);
sprite_change_offset("waveland", 36, 44);
sprite_change_offset("tech", 28, 44);

sprite_change_offset("jab", 22, 44);
sprite_change_offset("jab_elec", 22, 44);
sprite_change_offset("jab_hurt", 22*2, 44*2);
sprite_change_offset("dattack", 36, 44);
sprite_change_offset("dattack_hurt", 36*2, 44*2);
sprite_change_offset("ftilt", 20, 44);
sprite_change_offset("ftilt_hurt", 20*2, 44*2);
sprite_change_offset("ftilt_elec", 20, 44);
sprite_change_offset("dtilt", 18, 42);
sprite_change_offset("dtilt_hurt", 18*2, 42*2);
sprite_change_offset("dtilt_elec", 18, 42);
sprite_change_offset("utilt", 36, 44);
sprite_change_offset("utilt_hurt", 36*2, 44*2);
sprite_change_offset("nair", 36, 44);
sprite_change_offset("nair_hurt", 36*2, 44*2);
sprite_change_offset("nair_elec", 36, 44);
sprite_change_offset("fair", 20, 44);
sprite_change_offset("fair_hurt", 20*2, 44*2);
sprite_change_offset("fair_elec", 20, 44);
sprite_change_offset("bair", 40, 46);
sprite_change_offset("bair_hurt", 40*2, 46*2);
sprite_change_offset("uair", 36, 44);
sprite_change_offset("uair_hurt", 36*2, 44*2);
sprite_change_offset("dair", 36, 44);
sprite_change_offset("dair_hurt", 36*2, 44*2);
sprite_change_offset("dair_elec", 36, 44);
sprite_change_offset("fstrong", 24, 44);
sprite_change_offset("fstrong_hurt", 24*2, 44*2);
sprite_change_offset("fstrong_elec", 24, 44);
sprite_change_offset("EWGF", 32, 46);
sprite_change_offset("wgf_vfx", 32*2, 46*2);
sprite_change_offset("ewgf_vfx", 32*2, 46*2);
sprite_change_offset("ustrong", 52, 62);
sprite_change_offset("ustrong_hurt", 52*2, 62*2);
sprite_change_offset("ustrong_elec", 52, 62);
sprite_change_offset("dgf", 32, 44);
sprite_change_offset("dgf_vfx", 32*2, 44*2);
sprite_change_offset("otgf_vfx", 32*2, 44*2);
sprite_change_offset("dstrong", 52, 62);
sprite_change_offset("dstrong_hurt", 52*2, 62*2);
sprite_change_offset("dstrong_elec", 52, 62);
sprite_change_offset("hellsweep", 34, 44);
sprite_change_offset("nspecial", 32, 42);
sprite_change_offset("nspecial_hurt", 32*2, 42*2);
sprite_change_offset("nspecial_beam_start", 64, 64);
sprite_change_offset("nspecial_beam_end", 64, 64);
sprite_change_offset("nspecial_beam_loop", 0, 64);
sprite_change_offset("nspecial_beam_fade", 0, 33);
sprite_change_offset("vfx_nspecial_fire", 100, 140);
sprite_change_offset("vfx_ftilt_destroy", 100, 140); // actually for nspecial, not ftilt
sprite_change_offset("fspecial", 32, 44);
sprite_change_offset("fspecial_hurt", 32*2, 44*2);
sprite_change_offset("uspecial", 36, 44);
sprite_change_offset("uspecial_hurt", 36*2, 44*2);
sprite_change_offset("dspecial", 76, 84);
sprite_change_offset("dspecial_hurt", 76*2, 84*2);

sprite_change_offset("fieldstart", 76*2, 84*2);
sprite_change_offset("field", 76*2, 84*2);
sprite_change_collision_mask( "field", false, 1, 0, 0, 0, 0, 0 );

sprite_change_offset("taunt", 36, 44);

sprite_change_offset("elec_meter", 20, 10);
sprite_change_offset("elec_meterfull", 20, 10);
sprite_change_offset("elec_mask", 20, 10);
sprite_change_offset("elec_bar", 18, 9);

sprite_change_offset("phone_open", 36, 44);

sprite_change_offset("plat", 64/2, 94/2);

sprite_change_offset("nspecial_proj", 64, 94);


set_victory_theme( sound_get("wintheme") );



if (get_player_color( player ) == 9) {
set_victory_portrait( sprite_get("gameboy_win")  );
}

if (get_player_color( player ) == 10) {
set_victory_portrait( sprite_get("gnw_win") );
}
