sprite_change_halfoffset("idle", 76, 122, false);
sprite_change_halfoffset("crouch", 76, 122, false);
sprite_change_halfoffset("walk", 76, 122, false);
sprite_change_halfoffset("walkturn", 76, 122, false);
sprite_change_halfoffset("dash", 76, 122, false);
sprite_change_halfoffset("dashstart", 76, 122, false);
sprite_change_halfoffset("dashstop", 76, 122, false);
sprite_change_halfoffset("dashturn", 76, 122, false);

sprite_change_halfoffset("jumpstart", 76, 122, false);
sprite_change_halfoffset("jump", 76, 122, false);;
sprite_change_halfoffset("doublejump", 76, 122, false);    //maybe make another djump tho
sprite_change_halfoffset("walljump", 76, 122, false);
sprite_change_halfoffset("pratfall", 76, 122, false);
sprite_change_halfoffset("land", 76, 122, false);
sprite_change_halfoffset("landinglag", 76, 122, false);

sprite_change_halfoffset("parry", 76, 122, false);
sprite_change_halfoffset("roll_forward", 76, 122, false);
sprite_change_halfoffset("roll_backward", 76, 122, false);
sprite_change_halfoffset("airdodge", 76, 122, false);
sprite_change_halfoffset("waveland", 76, 122, false);;      //maybe make another waveland tho
sprite_change_halfoffset("tech", 76, 122, false);

sprite_change_halfoffset("hurt", 76, 122, false);
sprite_change_halfoffset("hurtground", 76, 122, false);
sprite_change_halfoffset("uphurt", 76, 122, false);
sprite_change_halfoffset("downhurt", 76, 122, false);
sprite_change_halfoffset("bouncehurt", 76, 122, false);

sprite_change_halfoffset("jab", 78, 122, true);
sprite_change_halfoffset("dattack", 76, 122, true);
sprite_change_halfoffset("ftilt", 76, 122, true);
sprite_change_halfoffset("dtilt", 102, 122, true);
sprite_change_halfoffset("utilt", 76, 122, true);
sprite_change_halfoffset("nair", 76, 122, true);
sprite_change_halfoffset("fair", 76, 122, true);
sprite_change_halfoffset("bair", 92, 122, true);
sprite_change_halfoffset("uair", 76, 122, true);
sprite_change_halfoffset("dair", 76, 122, true);
sprite_change_halfoffset("fstrong", 52, 122, true);
sprite_change_halfoffset("ustrong", 76, 122, true);
sprite_change_halfoffset("dstrong", 76, 122, true);
sprite_change_halfoffset("nspecial", 76, 120, true);
sprite_change_halfoffset("nspecial_air", 76, 120, true);
sprite_change_halfoffset("fspecial", 98, 122, true);
sprite_change_halfoffset("fspecial_air", 76, 122, true);
sprite_change_halfoffset("uspecial", 76, 122, true);
sprite_change_halfoffset("dspecial", 76, 122, true);
sprite_change_halfoffset("taunt", 76, 122, false);
sprite_change_halfoffset("tauntreal", 76, 122, false);

sprite_change_halfoffset("plat", 64, 94, false);

sprite_change_offset("ustrong_smear", 76, 122);
sprite_change_offset("nspec_holdknives", 76, 120);
sprite_change_offset("nspec_proj", 40, 15);
sprite_change_offset("iceclock_back", 34, 34);
sprite_change_offset("iceclock_hand", 6, 42);
sprite_change_offset("iceclock_sm_back", 26, 26);
sprite_change_offset("iceclock_sm_hand", 5, 31);
sprite_change_offset("iceclock_hour_hand", 5, 29);
sprite_change_offset("vfx_knifebreak", 59, 59);
sprite_change_offset("vfx_ring_flash", 59, 59);
sprite_change_offset("vfx_star_flash", 59, 59);

//Intellectual, Xenoblade Enjoyer, Third Synonym
#define sprite_change_halfoffset(sprite, set_x, set_y, hurtbox_sync){
    
    sprite_change_offset(sprite, set_x/2, set_y/2, hurtbox_sync);
    
}