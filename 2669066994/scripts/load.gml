
sprite_change_offset("cradily_hurt_box", 48, 126);//
sprite_change_offset("cradily_crouch_box", 48, 126);//

sprite_change_offset("idle", 48, 126);//
sprite_change_offset("crouch", 48, 126);//
sprite_change_offset("walk", 48, 126);//
sprite_change_offset("walkturn", 48, 126);
sprite_change_offset("dash", 48, 126);//
sprite_change_offset("dashstart", 48, 126);//
sprite_change_offset("dashstop", 48, 126);
sprite_change_offset("dashturn", 48, 126);

sprite_change_offset("jumpstart", 48, 126);//
sprite_change_offset("jump", 48, 126);//
sprite_change_offset("doublejump", 48, 126);//
sprite_change_offset("walljump", 48, 126);
sprite_change_offset("pratfall", 54, 104);
sprite_change_offset("land", 48, 126);//
sprite_change_offset("landinglag", 48, 126);//

sprite_change_offset("parry", 48, 126);//
sprite_change_offset("roll_forward", 48, 126);
sprite_change_offset("roll_backward", 48, 126);
sprite_change_offset("airdodge", 48, 126);
sprite_change_offset("airdodge_forward", 48, 126);
sprite_change_offset("airdodge_back", 48, 126);
sprite_change_offset("airdodge_up", 48, 126);
sprite_change_offset("airdodge_down", 48, 126);
sprite_change_offset("airdodge_upforward", 48, 126);
sprite_change_offset("airdodge_downforward", 48, 126);
sprite_change_offset("airdodge_upback", 48, 126);
sprite_change_offset("airdodge_downback", 48, 126);
sprite_change_offset("waveland", 48, 126);
sprite_change_offset("tech", 48, 126);

sprite_change_offset("hurt", 48, 126);
sprite_change_offset("hurtground", 48, 126);
sprite_change_offset("bighurt", 48, 126);
sprite_change_offset("bouncehurt", 48, 126);
sprite_change_offset("uphurt", 48, 126);
sprite_change_offset("downhurt", 48, 126);
sprite_change_offset("spinhurt", 48, 126);

sprite_change_offset("jab", 48, 126);
sprite_change_offset("dattack", 82, 126);
sprite_change_offset("ftilt", 48, 126);
sprite_change_offset("dtilt", 48, 126);
sprite_change_offset("utilt", 58, 126);
sprite_change_offset("nair", 58, 126);
sprite_change_offset("fair", 28, 112);
sprite_change_offset("bair", 78, 112);
sprite_change_offset("uair", 58, 158);
sprite_change_offset("dair", 48, 90);
sprite_change_offset("fstrong", 48, 126);
sprite_change_offset("ustrong", 48, 126);

sprite_change_offset("dstrong", 48, 126);
sprite_change_offset("dstrong_earthquake", 64, 86);
sprite_change_offset("earthquake_small", 64, 86);

sprite_change_offset("fspecial", 48, 126);
sprite_change_offset("fspecial_air", 48, 126);
sprite_change_offset("fspecial_gigadrain", 30, 30);

sprite_change_offset("nspecial", 48, 126);
sprite_change_offset("nspecial_air", 48, 126);
sprite_change_offset("nspecial_sandstorm_twister", 48, 90);
sprite_change_offset("nspecial_sandstorm_twister_startup", 48, 90);
sprite_change_offset("nspecial_sandstorm_storm", 48, 90);
sprite_change_offset("nspecial_sandstorm_boost", 0, 0);

//sprite_change_offset("uspecial", 64, 94);

sprite_change_offset("taunt", 38, 126);

sprite_change_offset("plat", 70, 94);
sprite_change_offset("seed", -8, 32);
sprite_change_offset("ustrong_proj", 14, 30);
sprite_change_offset("ustrong_proj2", 14, 30);

sprite_change_offset("nspecial_proj", 64, 94);

sprite_change_offset("uspecial", 52, 106);
sprite_change_offset("uspecial_air", 52, 106);

sprite_change_offset("dspecial", 48, 126);
sprite_change_offset("dspecial_air", 48, 126);
sprite_change_offset("dspecial_sludgebomb", 24, 17);
sprite_change_offset("dspecial_poison_splat", 20, 34);
sprite_change_offset("dspecial_poison_area", 20, 34);
sprite_change_offset("dspecial_poison_vanish", 20, 34);

sprite_change_offset("uspecial_blastup", 52, 108);
sprite_change_offset("uspecial_blastfront", 52, 108);
sprite_change_offset("uspecial_blastup_air", 52, 106);
sprite_change_offset("uspecial_blastfront_air", 52, 106);
sprite_change_offset("uspecial_launchup", 54, 112);
sprite_change_offset("uspecial_launchfront", 54, 104);
sprite_change_offset("uspecial_floor", 4, 0);

sprite_change_offset("intro", 118, 158); //The chair breaking
sprite_change_offset("respawn", 48, 126);

sprite_change_offset("poison_hit1", 31, 41);
sprite_change_offset("poison_hit2", 31, 41);
sprite_change_offset("drain_heal", 31, 41);
sprite_change_offset("drain_break", 30, 30);
sprite_change_offset("seed_destroy", -8, 32);

poison_hit1 = hit_fx_create( sprite_get( "poison_hit1" ), 15); //Acid hit effect
poison_hit2 = hit_fx_create( sprite_get( "poison_hit2" ), 15); //Sludge hit effect
drain_heal = hit_fx_create( sprite_get( "drain_heal" ), 15); //Giga Drain healing
seed_destroy = hit_fx_create( sprite_get( "seed_destroy"), 15); //Seed breaking
rock_break = hit_fx_create( sprite_get( "rock_break"), 15); //Rock breaking
drain_break = hit_fx_create( sprite_get( "drain_break"), 15); //Drain breaking

set_victory_bg( sprite_get("victorybg"));
set_victory_theme( sound_get("victorytheme"));
