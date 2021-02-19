
if (floating && state != PS_ATTACK_AIR){
    
    
    if (floor(floatAnimTimer/10) > 11 ) {
        floatAnimTimer = 0;
    }
    sprite_index = sprite_get("float");
    image_index = floor(floatAnimTimer/10);
    floatAnimTimer++

}


if (get_player_color(player) == 13){
    
    set_attack_value(AT_NSPECIAL_2, AG_SPRITE, sprite_get("nspecial_2_beach"));
    
    if (spr_dir < 0){

    set_attack_value(AT_DATTACK, AG_SPRITE, sprite_get("dattacktwo_beach"));
    } else {
    set_attack_value(AT_DATTACK, AG_SPRITE, sprite_get("dattack_beach"));
    }
        
}else {
    
    set_attack_value(AT_NSPECIAL_2, AG_SPRITE, sprite_get("nspecial_2"));
    
    if (spr_dir < 0){

    set_attack_value(AT_DATTACK, AG_SPRITE, sprite_get("dattacktwo"));
    } else {
    set_attack_value(AT_DATTACK, AG_SPRITE, sprite_get("dattack"));
    }
        
}
    


if (spr_dir < 0){
    set_attack_value(AT_TAUNT_2, AG_SPRITE, sprite_get("taunt2reverse"));
} else {
    set_attack_value(AT_TAUNT_2, AG_SPRITE, sprite_get("taunt2"));
}

//Advanced Sprite Handler

if useskins{
    //Ground
    changeAnim(spr_idle, sprite_get("idle"));
    changeAnim(spr_crouch, sprite_get("crouch"));
    changeAnim(spr_walk, sprite_get("walk"));
    changeAnim(spr_walkturn, sprite_get("walkturn"));
    changeAnim(spr_dash, sprite_get("dash"));
    changeAnim(spr_dashstart, sprite_get("dashstart"));
    changeAnim(spr_dashstop, sprite_get("dashstop"));
    changeAnim(spr_dashturn, sprite_get("dashturn"));

    //Air
    changeAnim(spr_jumpstart, sprite_get("jumpstart"));
    changeAnim(spr_jump, sprite_get("jump"));
    changeAnim(spr_doublejump, sprite_get("doublejump"));
    changeAnim(spr_walljump, sprite_get("walljump"));
    changeAnim(spr_pratfall, sprite_get("pratfall"));
    changeAnim(spr_land, sprite_get("land"));
    changeAnim(spr_landinglag, sprite_get("landinglag"));
    changeAnim(spr_float, sprite_get("float"));

    //Dodge
    changeAnim(spr_parry, sprite_get("parry"));
    changeAnim(spr_roll_forward, sprite_get("roll_forward"));
    changeAnim(spr_roll_backward, sprite_get("roll_backward"));
    changeAnim(spr_airdodge, sprite_get("airdodge"));
    changeAnim(spr_airdodge_waveland, sprite_get("waveland"));
    changeAnim(spr_tech, sprite_get("tech"));

    //Hurt
    changeAnim(spr_hurt, sprite_get("hurt"));
    changeAnim(spr_bighurt, sprite_get("bighurt"));
    changeAnim(spr_hurtground, sprite_get("hurtground"));
    changeAnim(spr_uphurt, sprite_get("uphurt"));
    changeAnim(spr_downhurt, sprite_get("downhurt"));
    changeAnim(spr_bouncehurt, sprite_get("bouncehurt"));
    changeAnim(spr_spinhurt, sprite_get("spinhurt"));

    //Attack
    changeAnim(spr_jab, sprite_get("jab"));
    changeAnim(spr_dattack, sprite_get("dattack"));
    changeAnim(spr_ftilt, sprite_get("ftilt"));
    changeAnim(spr_dtilt, sprite_get("dtilt"));
    changeAnim(spr_utilt, sprite_get("utilt"));
    changeAnim(spr_nair, sprite_get("nair"));
    changeAnim(spr_fair, sprite_get("fair"));
    changeAnim(spr_bair, sprite_get("bair"));
    changeAnim(spr_uair, sprite_get("uair"));
    changeAnim(spr_dair, sprite_get("dair"));
    changeAnim(spr_fstrong, sprite_get("fstrong"));
    changeAnim(spr_ustrong, sprite_get("ustrong"));
    changeAnim(spr_dstrong, sprite_get("dstrong"));
    changeAnim(spr_nspecial, sprite_get("nspecial"));
    changeAnim(spr_fspecial, sprite_get("fspecial"));
    changeAnim(spr_uspecial, sprite_get("uspecial"));
    changeAnim(spr_dspecial, sprite_get("dspecial"));
    changeAnim(spr_taunt, sprite_get("taunt"));
}


//Beach props animation




if (state == PS_ATTACK_GROUND && attack == AT_EXTRA_1) {
    if (state_timer == 0){
        beachpropsAnimTimer = 0;
    }
    
    if (window < 3 ){
        
        if (beachpropsAnimTimer < 7){
            beachpropsAnimTimer += beachpropsAnimSpeed;
        } else {
            beachpropsAnimTimer = 7;
        }
        
    } 
    
    if (window == 3){
        if (window_timer == 0){
            beachpropsAnimTimer = 21;
        }
        
        if (beachpropsAnimTimer < 27){
            beachpropsAnimTimer += beachpropsAnimSpeed;
        } else {
            beachpropsAnimTimer = 27;
        }
    }

        
}
    


//Handle certain looping animations
if (sprite_index == spr_idle){
    var frames = 12;
    var frame_dur = 8;
    image_index = floor((state_timer mod (frames * frame_dur)) / frame_dur);
}
if (sprite_index == spr_walk){
    var frames = 8;
    var frame_dur = 7;
    image_index = floor((state_timer mod (frames * frame_dur)) / frame_dur);
}
if (sprite_index == spr_dash){
    var frames = 8;
    var frame_dur = 5;
    image_index = floor((state_timer mod (frames * frame_dur)) / frame_dur);
}



#define changeAnim

var old_spr = argument[1];
var new_spr = argument[0];

if (sprite_index == old_spr && old_spr != new_spr){
    sprite_index = new_spr;
}