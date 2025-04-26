//hit_player.gml

if (my_hitboxID.orig_player_id != self) exit; //this line makes sure that the hitboxes belong to us and not someone like kragg

true_dmg = my_hitboxID.damage * lerp(1, 1.6, strong_charge/60);

var attack = my_hitboxID.attack;
var hbox = my_hitboxID.hbox_num;

//functional
if (my_hitboxID.attack == AT_NSPECIAL && instance_exists(my_hitboxID.ptooie_obj)) {
    var pt = my_hitboxID.ptooie_obj;
    pt.hitstop = my_hitboxID.hitpause;
    if (pt.state == 0) {
        pt.state = 1;
        pt.state_timer = 0;
        window = 8;
        window_timer = 0;
    }
    else if (pt.state == 2) {
        // do nothing
    }
    else if (pt.vsp > 0 && pt.y < hit_player_obj.y-(hit_player_obj.char_height*0.8)) {
        pt.hsp *= 0.8;
        pt.vsp = max(-5, pt.vsp*-0.9);
    }
    else {
        pt.hsp *= -0.8;
        pt.vsp *= 0.9;
    }
    pt.can_hit = my_hitboxID.can_hit;
}

if (my_hitboxID.attack == AT_FSPECIAL) {
    var i = clamp(hbox-1, 0, 2);
    hit_player_obj.spider_plant_poison_damage = poison_status_damage[i];
    hit_player_obj.spider_plant_poison_owner = self;
}

//sfx
switch attack {
    
    case AT_JAB:
        if (hbox == 2) sound_play(asset_get("sfx_leafy_hit3"));
        else if (hbox == 3) sound_play(asset_get("sfx_blow_medium2"));
        else if (hbox == 4) sound_play(sound_get("sfx_hit_slash_medium_02"));//hyu fix, addition
        break;
    
    case AT_FTILT:
        if (hbox == 1) sound_play(asset_get("sfx_icehit_weak1"));
        else if (hbox == 2) sound_play(asset_get("sfx_icehit_medium2"));
        break;
    
    case AT_DTILT:
        if (hbox == 1) sound_play(asset_get("sfx_blow_weak1"));
        else if (hbox == 2) sound_play(asset_get("sfx_blow_medium1"));
        break;
    
    case AT_BAIR:
        if (hbox == 1) sound_play(asset_get("sfx_ell_strong_attack_explosion"), false, noone, .7, .8);
        break;
        
    case AT_NSPECIAL:
        if (hbox == 1) sound_play(sound_get("sfx_BTL_SPEAR1"), false, noone, .4, 1.05);
        break;
        
    case AT_FSTRONG:
        if (hbox == 1) sound_play(sound_get("sfx_hit_slash_medium_02"), false, noone, 1, .9);//hyu tweak
        else if (hbox == 2) sound_play(sound_get("sfx_smash_ult_sword_hit_heavy"), false, noone, .5, 1.3);//hyu tweak
        else if (hbox == 3) sound_play(sound_get("sfx_smash_ult_sword_hit_heavy"), false, noone, .5, 1.3);//hyu tweak
        else if (hbox == 4) sound_play(sound_get("sfx_hit_slash_medium_02"), false, noone, 1, .9);//hyu tweak
        break;  
        
    case AT_USTRONG:
        if (hbox == 1) sound_play(sound_get("sfx_hit_slash_heavy_01"), false, noone, 1, 1);
        else if (hbox == 2) sound_play(sound_get("sfx_hit_slash_heavy_02"), false, noone, 1.2, .9);
        else if (hbox == 2) sound_play(asset_get("sfx_blow_heavy1"), false, noone, 0.9, .9);
        break;
        
    case AT_DSPECIAL:
        if (hbox == 2) sound_play(sound_get("sfx_hit_slash_heavy_01"), false, noone, 1, 1);
        else if (hbox == 3) {
            sound_play(sound_get("sfx_hit_slash_heavy_03"), false, noone, 1.2, .9);
            sound_play(asset_get("sfx_blow_heavy1"), false, noone, 0.9, 1.2);
        }
        break;
    
    case AT_EXTRA_1: // footstool
        if (hbox == 2) {
            sound_play(sound_get("sfx_hit_bite_03"), false, noone, 1.2, .9);
        }
        break;

}

if (my_hitboxID.attack != AT_NSPECIAL){
    hit_player_obj.hitstun_mult = 1;
}


#define set_grab_id
{
    if (my_grab_id == noone && (hit_player_obj.object_index != oPlayer || (hit_player_obj.state == PS_HITSTUN || hit_player_obj.state == PS_HITSTUN_LAND)))
    {
        my_grab_id = hit_player_obj;
    }
}

