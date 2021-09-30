sprite_change_offset("idle", 128, 160);
sprite_change_offset("crouch", 128, 160);
sprite_change_offset("phone_open", 128, 160);

sprite_change_offset("walk", 128, 160);
sprite_change_offset("walkturn", 128, 160);
sprite_change_offset("dash", 128, 160);
sprite_change_offset("dashstart", 128, 160);
sprite_change_offset("dashstop", 128, 160);
sprite_change_offset("dashturn", 128, 160);

sprite_change_offset("jumpstart", 128, 160);
sprite_change_offset("jump", 128, 160);
sprite_change_offset("doublejump", 128, 160);
sprite_change_offset("walljump", 128, 160);

sprite_change_offset("pratfall", 128, 160);

sprite_change_offset("land", 128, 160);
sprite_change_offset("landinglag", 128, 160);

sprite_change_offset("parry", 128, 160);
sprite_change_offset("roll_forward", 128, 160);
sprite_change_offset("roll_backward", 128, 160);
sprite_change_offset("airdodge", 128, 160);
sprite_change_offset("waveland", 128, 160);
sprite_change_offset("tech", 128, 160);

sprite_change_offset("hurt", 128, 160);
sprite_change_offset("hurtground", 128, 160);

sprite_change_offset("jab",   128, 160);
sprite_change_offset("ftilt", 128, 160);
sprite_change_offset("dtilt", 128, 160);
sprite_change_offset("utilt", 128, 160);

sprite_change_offset("dattack", 128, 160);

sprite_change_offset("fstrong", 128, 160);
sprite_change_offset("ustrong", 128, 160);
sprite_change_offset("dstrong", 128, 160);

sprite_change_offset("nair", 128, 160);
sprite_change_offset("fair", 129, 160);
sprite_change_offset("bair", 128, 160);
sprite_change_offset("uair", 128, 160);
sprite_change_offset("dair", 128, 160);

sprite_change_offset("nspecial", 128, 160);
sprite_change_offset("charge1", 128, 160);
sprite_change_offset("charge2", 128, 160);

sprite_change_offset("fspecial", 128, 160);

sprite_change_offset("uspecial", 128, 160);

sprite_change_offset("uspecial_arrow_inactive_up", 48, 96);
sprite_change_offset("uspecial_arrow_active_up", 48, 96);

sprite_change_offset("uspecial_arrow_inactive_down", 48, 96);
sprite_change_offset("uspecial_arrow_active_down", 48, 96);

sprite_change_offset("uspecial_arrow_inactive_left", 48, 96);
sprite_change_offset("uspecial_arrow_active_left", 48, 96);

sprite_change_offset("uspecial_arrow_inactive_right", 48, 96);
sprite_change_offset("uspecial_arrow_active_right", 48, 96);

sprite_change_offset("uspecial_arrow_hurtbox", 48, 96);

sprite_change_offset("dspecial", 128, 160);

sprite_change_offset("taunt", 128, 160);

sprite_change_offset("plat", 64, 94);

sprite_change_offset("ded", 128, 160);
sprite_change_offset("sick", 59, 48);
sprite_change_offset("bf_hurtbox", 128, 160);
sprite_change_offset("bf_crouch_hurtbox", 128, 160);
sprite_change_offset("gf_hurtbox", 128, 160);

set_victory_bg( sprite_get( "victorybg" ));

set_victory_theme( sound_get( "bf_victory" ));

//gf sprites
sprite_change_offset("idle_gf", 128, 160);
sprite_change_offset("gf_spawn", 128, 160);
sprite_change_offset("dspecial_gf", 128, 160);
sprite_change_offset("taunt_gf", 128, 160);
sprite_change_offset("gf_despawn", 128, 155);
sprite_change_offset("gf_bye", 128, 160);
sprite_change_offset("gf_blowup", 128, 160);
sprite_change_offset("gf_hurt", 128, 160);

sprite_change_offset("uncharged_note", 28, 48);
sprite_change_offset("tier1_note", 32, 53);
sprite_change_offset("tier2_note", 30, 59);
sprite_change_offset("fx_note_hit_up", 49, 76);
sprite_change_offset("fx_note_hit_left", 49, 76);
sprite_change_offset("fx_note_hit_down", 49, 76);

sprite_change_offset("mic", 12, 35);

sprite_change_offset("arrow_idle", 47, 89);
sprite_change_offset("arrow_on", 47, 89);
sprite_change_offset("activated_funkin_arrows", 12, 24);

if(!instance_exists(hotbabe)){
    hotbabe = instance_create(floor(x),floor(y),"obj_article1")
}
if(!instance_exists(hotbabe)){
    hotbabe = instance_create(floor(x),floor(y),"obj_article1")
}