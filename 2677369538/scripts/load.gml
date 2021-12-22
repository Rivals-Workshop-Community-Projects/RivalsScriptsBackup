sprite_change_offset("idle", 61, 95);
sprite_change_offset("crouch", 61, 95);
sprite_change_offset("walk", 61, 95);
sprite_change_offset("walkturn", 61, 95);
sprite_change_offset("dash", 61, 95);
sprite_change_offset("dashstart", 61, 95);
sprite_change_offset("dashstop", 61, 95);
sprite_change_offset("dashturn", 61, 95);

sprite_change_offset("jumpstart", 61, 95);
sprite_change_offset("jump", 61, 95);
sprite_change_offset("doublejump", 61, 95);
sprite_change_offset("walljump", 65, 95);
sprite_change_offset("pratfall", 61, 95);
sprite_change_offset("land", 61, 95);
sprite_change_offset("landinglag", 61, 95);

sprite_change_offset("parry", 61, 95);
sprite_change_offset("roll_forward", 65, 95);
sprite_change_offset("roll_backward", 65, 95);
sprite_change_offset("airdodge", 61, 95);
sprite_change_offset("waveland", 61, 95);
sprite_change_offset("tech", 61, 95);

sprite_change_offset("hurt", 61, 95);
sprite_change_offset("bighurt", 61, 95);
sprite_change_offset("hurtground", 61, 95);
sprite_change_offset("uphurt", 61, 95);
sprite_change_offset("downhurt", 61, 95);
sprite_change_offset("bouncehurt", 61, 95);
sprite_change_offset("spinhurt", 61, 95);

sprite_change_offset("jab", 61, 95, 1);
sprite_change_offset("dattack", 61, 95, 1);
sprite_change_offset("ftilt", 61, 95, 1);
sprite_change_offset("dtilt", 61, 95, 1);
sprite_change_offset("utilt", 61, 95, 1);
sprite_change_offset("nair", 61, 95, 1);
sprite_change_offset("fair", 61, 95, 1);
sprite_change_offset("bair", 61, 95, 1);
sprite_change_offset("uair", 61, 95, 1);
sprite_change_offset("dair", 61, 95, 1);
sprite_change_offset("fstrong", 61, 95, 1);
sprite_change_offset("ustrong", 61, 95, 1);
sprite_change_offset("ustrong_charge", 61, 95); sprite_change_offset("ustrong_charge_hurt", 122, 190);
sprite_change_offset("dstrong", 61, 95, 1);
sprite_change_offset("nspecial", 61, 95, 1);
sprite_change_offset("fspecial", 61, 95, 1);
sprite_change_offset("fspecial_air", 61, 95, 1);
sprite_change_offset("fspecial_spin", 61, 95); sprite_change_offset("fspecial_spin_hurt", 122, 190);
sprite_change_offset("uspecial", 61, 95, 1);
sprite_change_offset("uspecial_rats", 61*2, 95*2);
sprite_change_offset("dspecial", 64, 95, 1);
sprite_change_offset("taunt", 61, 95);

sprite_change_offset("plat", 64, 95+128);
sprite_change_offset("bg_plat", 64*2, (95+128)*2);

sprite_change_offset("airdodge_bubble_neutral_front", 61*2, 95*2);
sprite_change_offset("airdodge_bubble_neutral_back", 61*2, 95*2);
sprite_change_offset("bash_impact_fx", 64, 95);
sprite_change_offset("spin_impact_fx", 64, 95);
sprite_change_offset("big_bash_impact_fx", 64, 95);
sprite_change_offset("big_spin_impact_fx", 64, 95);
sprite_change_offset("bomb_explosion_hfx", 64*2, 61*2);
sprite_change_offset("bubble_frog", 64*2, 95*2);
sprite_change_offset("blitzsteed_destroy", 64*2, 95*2);
sprite_change_offset("blitzsteed_front_wheel", 64*2, 95*2);
sprite_change_offset("blitzsteed_back_wheel", 64*2, 95*2);
sprite_change_offset("blitzsteed_head", 64*2, 95*2);
sprite_change_offset("blitzsteed_lance", 64*2, 95*2);
sprite_change_offset("brigandine_afterimage_fx", 64*2, 95*2);
sprite_change_offset("brigandine_afterimage2_fx", 64*2, 95*2);
sprite_change_offset("brigandine_sparkles_fx", 64*2, 95*2);
sprite_change_offset("brigandine_sparkles2_fx", 64*2, 95*2);
sprite_change_offset("slash", 64*2, 128);
sprite_change_offset("confetti_slash", 60*2, 160);
sprite_change_offset("confetti_slash2", 60*2, 160);
sprite_change_offset("confetti", 16*2, 16*2);
sprite_change_offset("cards", 60*2, 128);
sprite_change_offset("cards_small", 60*2, 128);
sprite_change_offset("large_flame", 64, 95);

sprite_change_offset("rat_bombardier_mask", 64*2, 95*2);
sprite_change_offset("rat_bombardier", 64*2, 95*2);
sprite_change_offset("rat_bombardier_bomb", 64*2, 88*2);
sprite_change_offset("rat_bombardier_run", 131, 188);
sprite_change_offset("rat_bombardier_turn", 134, 194);
sprite_change_offset("rat_bombardier_nobomb", 131, 188);
sprite_change_offset("rat_bombardier_disappear", 131, 194);
sprite_change_offset("rat_bombardier_mask", 64*2, 95*2);
sprite_change_offset("nspecial_proj", 131, 188);

sprite_change_offset("propeller_rat", 128, 128);
sprite_change_offset("propeller_rat_move", 128, 128);
sprite_change_offset("rat", 128, 128);
sprite_change_offset("propeller", 128, 128);

sprite_change_offset("hurtbox", 61*2, 95*2);
sprite_change_offset("crouchbox", 61*2, 95*2);
sprite_change_offset("hitstun_hurtbox", 61*2, 95*2);

set_victory_bg( sprite_get( "pridemoor_keep_bg" )) ;
set_victory_theme( sound_get( "victory" ) );