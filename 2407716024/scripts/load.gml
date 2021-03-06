sprite_change_offset("idle", 54, 94);
sprite_change_offset("peacock_hurtbox", 28, 66);
sprite_change_offset("peacock_crouch_hurtbox", 28, 66);
sprite_change_offset("hurt", 32, 62);
sprite_change_offset("spinhurt", 76, 128);
sprite_change_offset("hurtground", 46, 94);
sprite_change_offset("bighurt", 76, 128);
sprite_change_offset("uphurt", 76, 128);
sprite_change_offset("downhurt", 76, 128);
sprite_change_offset("bouncehurt", 76, 128);
sprite_change_offset("bouncehurt", 76, 128);
sprite_change_offset("crouch", 46, 94);
sprite_change_offset("walk", 44, 90);
sprite_change_offset("walkturn", 44, 94);
sprite_change_offset("dash", 44, 94);
sprite_change_offset("dashstart", 42, 94);
sprite_change_offset("dashstop", 50, 94);
sprite_change_offset("dashturn", 42, 94);

sprite_change_offset("jumpstart", 60, 126);
sprite_change_offset("jump", 60, 126);
sprite_change_offset("doublejump", 60, 114);
sprite_change_offset("walljump", 56, 120);
sprite_change_offset("pratfall", 60, 126);
sprite_change_offset("land", 60, 126);
sprite_change_offset("landinglag", 60, 126);

sprite_change_offset("airdash", 60, 126);
sprite_change_offset("airdash_back", 60, 126);
sprite_change_offset("airdash_puff", 48, 96);


sprite_change_offset("parry", 60, 94);
sprite_change_offset("roll_forward", 58, 94);
sprite_change_offset("roll_backward", 44, 94);
sprite_change_offset("airdodge", 60, 128);
sprite_change_offset("waveland", 42, 94);
sprite_change_offset("tech", 60, 126);

sprite_change_offset("jab", 54, 94);
sprite_change_offset("dattack", 54, 94);
sprite_change_offset("ftilt", 58, 94);
sprite_change_offset("dtilt", 50, 94);
sprite_change_offset("utilt", 46, 88);
sprite_change_offset("nair", 54, 110);
sprite_change_offset("fair", 54, 110);
sprite_change_offset("bair", 104, 128);
sprite_change_offset("uair", 76, 128);
sprite_change_offset("dair", 76, 128);
sprite_change_offset("fstrong", 74, 94);
sprite_change_offset("ustrong", 78, 158);
sprite_change_offset("dstrong", 46, 94);
sprite_change_offset("nspecial", 60, 94);
sprite_change_offset("fspecial", 52, 92);
sprite_change_offset("uspecial", 78, 128);
sprite_change_offset("dspecial", 48, 94);
sprite_change_offset("taunt", 46, 158);
sprite_change_offset("phone_open", 46, 158);

sprite_change_offset("plat", 64, 94);

sprite_change_offset("ftilt_proj", 14, 32);
sprite_change_offset("mallet", 14, 32);
sprite_change_offset("dair_proj", 14, 32);
sprite_change_offset("dair_proj_mask", 14, 32);
sprite_change_collision_mask( "dair_proj_mask", true, 1, 0, 0, 0, 0, 0);
sprite_change_offset("fair_shot", 14, 32);
sprite_change_offset("fair_shot_mask", 14, 32);
sprite_change_offset("uair_proj", 48, 48);
sprite_change_offset("bomb_walk", 52, 32);
sprite_change_offset("bullet1", 52, 32);
sprite_change_offset("bullet2", 52, 32);
sprite_change_offset("bullet3", 52, 32);
sprite_change_offset("fspecial_blast", 14, 32);
sprite_change_offset("bullet_mask", 52, 32);
sprite_change_offset("dspecial_roadroller", 42, 70);
sprite_change_offset("dspecial_avery", 10, 74);


sprite_change_offset("mallet", 48, 48);
sprite_change_offset("spring", 48, 60);

sprite_change_offset("nspecial_proj", 64, 94);
sprite_change_offset("gfz_pea", 19, 47);

sprite_change_offset("kirb_throw", 48, 64);

sprite_change_offset("fsmash_proj", 52, 32);
sprite_change_offset("fsmash_proj_shot", 32, 12);





sprite_change_offset("dspecial_shadow", 96, 8);
sprite_change_offset("dspecial_exclamation1",20,52);
sprite_change_offset("dspecial_block_mask_lv1",19,34);
// sprite_change_collision_mask( "dspecial_block_mask_lv1", false, 1, 0, 0, 0, 0, 1 );
sprite_change_offset("dspecial_block_mask_lv2",30,58);
// sprite_change_collision_mask( "dspecial_block_mask_lv2", false, 1, 0, 0, 0, 0, 1 );
sprite_change_offset("dspecial_block_mask_lv3",48,97);

sprite_change_offset("dspecial_block_lv2_0_falling",26,64);
sprite_change_offset("dspecial_block_lv2_0_ground",26,64);
sprite_change_offset("dspecial_block_lv2_0_die",26,64);

sprite_change_offset("dspecial_block_lv3_0_falling",24,64);
sprite_change_offset("dspecial_block_lv3_0_ground",24,64);
sprite_change_offset("dspecial_block_lv3_0_die",24,64);

sprite_change_offset("dspecial_block_lv2_8_falling",20,30);
sprite_change_offset("dspecial_block_lv2_8_ground",0,60);
sprite_change_offset("dspecial_block_lv2_8_die",0,60);

sprite_change_offset("dspecial_block_lv1_0_falling",12,16);
sprite_change_offset("dspecial_block_lv1_0_ground",12,16);
sprite_change_offset("dspecial_block_lv1_0_die",12,16);

sprite_change_offset("fsmash", 68, 128);



/*
var i;
var n;
var xx;
var yy;
var get_spr;
var prefix = "";
var full_spr_name = "";
for (i = 1; i <= 3; i++) {
    prefix = "dspecial_block_lv" + string(i);
    for (n = 1; n <= 6; n++) {
        full_spr_name = prefix + "_" + string(n);
        get_spr = sprite_get(full_spr_name);
        xx = round( sprite_get_width(get_spr) / 2);
        yy = sprite_get_height(get_spr) - 1;
        
        sprite_change_offset(full_spr_name, xx, yy);
        sprite_change_offset(full_spr_name + "_ground", xx, yy);
        sprite_change_offset(full_spr_name + "_die", xx, yy);
        
        full_spr_name += "_falling";
        get_spr = sprite_get(full_spr_name);
        xx = round( sprite_get_width(get_spr) / 2);
        yy = sprite_get_height(get_spr) - 1;
        
        sprite_change_offset(full_spr_name, xx, yy);
        
        
    }
}
*/

var suffix_array = ["", "_ground", "_die", "_falling"]
var i;
var j;
var k;
var xx;
var yy;
var get_spr;
var prefix = "";
var suffix = "";
var spr_name = "";
var full_spr_name = "";
for (i = 1; i <= 3; i++) {
    prefix = "dspecial_block_lv" + string(i);
    
    for (j = 1; j <= 8; j++) {
        spr_name = prefix + "_" + string(j);
        
        for (k = 0; k < 4; k++) {
            full_spr_name = spr_name + suffix_array[k];
            get_spr = sprite_get(full_spr_name);
            xx = round( sprite_get_width(get_spr) / 2);
            yy = sprite_get_height(get_spr) - 1;
            
            sprite_change_offset(full_spr_name, xx, yy);
        }
        
        
        
    }
}




set_victory_theme( sound_get("peacock_victory"));
set_victory_bg(sprite_get("victory"));










