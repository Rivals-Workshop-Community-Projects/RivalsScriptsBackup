switch (state){
    case PS_IDLE:
        //code here can change the sprite_index and image_index while in the idle state
    break;
    
    default: break;
}

if (trolled){
    //Ground
    changeAnim(spr_idle_troll, sprite_get("idle"));
    changeAnim(spr_crouch_troll, sprite_get("crouch"));
    changeAnim(spr_walk_troll, sprite_get("walk"));
    changeAnim(spr_walkturn_troll, sprite_get("walkturn"));
    changeAnim(spr_dash_troll, sprite_get("dash"));
    changeAnim(spr_dashstart_troll, sprite_get("dashstart"));
    changeAnim(spr_dashstop_troll, sprite_get("dashstop"));
    changeAnim(spr_dashturn_troll, sprite_get("dashturn"));
    
    //Air
    changeAnim(spr_jumpstart_troll, sprite_get("jumpstart"));
    changeAnim(spr_jump_troll, sprite_get("jump"));
    changeAnim(spr_doublejump_troll, sprite_get("doublejump"));
    changeAnim(spr_walljump_troll, sprite_get("walljump"));
    
    changeAnim(spr_pratfall_troll, sprite_get("pratfall"));
    changeAnim(spr_land_troll, sprite_get("land"));
    changeAnim(spr_landinglag_troll, sprite_get("landinglag"));
    
    //Dodge
    changeAnim(spr_parry_troll, sprite_get("parry"));
    changeAnim(spr_roll_forward_troll, sprite_get("roll_forward"));
    changeAnim(spr_roll_backward_troll, sprite_get("roll_backward"));
    changeAnim(spr_airdodge_troll, sprite_get("airdodge"));
    changeAnim(spr_airdodge_waveland_troll, sprite_get("waveland"));
    changeAnim(spr_tech_troll, sprite_get("tech"));
    
    //Hurt
    changeAnim(spr_hurt_troll, sprite_get("hurt"));
    changeAnim(spr_bighurt_troll, sprite_get("bighurt"));
    changeAnim(spr_hurtground_troll, sprite_get("hurtground"));
    changeAnim(spr_downhurt_troll, sprite_get("downhurt"));
    //Attack
    changeAnim(spr_jab_troll, sprite_get("jab"));
    changeAnim(spr_dattack_troll, sprite_get("dattack"));
    changeAnim(spr_ftilt_troll, sprite_get("ftilt"));
    changeAnim(spr_dtilt_troll, sprite_get("dtilt"));
    changeAnim(spr_utilt_troll, sprite_get("utilt"));
    changeAnim(spr_nair_troll, sprite_get("nair"));
    changeAnim(spr_fair_troll, sprite_get("fair"));
    changeAnim(spr_bair_troll, sprite_get("bair"));
    changeAnim(spr_uair_troll, sprite_get("uair"));
    changeAnim(spr_dair_troll, sprite_get("dair"));
    changeAnim(spr_fstrong_troll, sprite_get("fstrong"));
    changeAnim(spr_ustrong_troll, sprite_get("ustrong"));
    changeAnim(spr_dstrong_troll, sprite_get("dstrong"));
    
    changeAnim(spr_nspecial_troll, sprite_get("nspecial"));
    changeAnim(spr_nspecial_air_troll, sprite_get("nspecial_air"));
    changeAnim(spr_fspecial_troll, sprite_get("fspecial"));
    changeAnim(spr_fspecial_air_troll, sprite_get("fspecial_air"));
    changeAnim(spr_uspecial_troll, sprite_get("uspecial"));
    changeAnim(spr_uspecial_air_troll, sprite_get("uspecial_air"));
    changeAnim(spr_dspecial_troll, sprite_get("dspecial"));
    changeAnim(spr_dspecial_air_troll, sprite_get("dspecial_air"));
    
    changeAnim(spr_taunt_troll, sprite_get("taunt"));
}

//Handle certain looping animations
if (sprite_index == spr_idle_troll){
    var frames = 10;
    var frame_dur = 8;
    image_index = floor((state_timer mod (frames * frame_dur)) / frame_dur);
}
if (sprite_index == spr_walk_troll){
    var frames = 12;
    var frame_dur = 4;
    image_index = floor((state_timer mod (frames * frame_dur)) / frame_dur);
}
if (sprite_index == spr_dash_troll){
    var frames = 6;
    var frame_dur = 4;
    image_index = floor((state_timer mod (frames * frame_dur)) / frame_dur);
}

#define changeAnim

var old_spr = argument[1];
var new_spr = argument[0];

if (sprite_index == old_spr && old_spr != new_spr){
    sprite_index = new_spr;
}