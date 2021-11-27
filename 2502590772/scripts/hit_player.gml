//hit_player.gml

//ignore everything if the attack hit was a reflected attack.
if (my_hitboxID.player != my_hitboxID.orig_player) exit;


//attack_specific

    switch (my_hitboxID.attack) {
        
        case AT_JAB:
        case 0: //minun jab
            if (hit_player_obj.state == PS_HITSTUN && !(hit_player_obj.free) && !custom_clone) {
                hit_player_obj.state = PS_HITSTUN_LAND;
            }
        break;
        
        case AT_FSPECIAL_2:
            //handle the multi-hitting projectile logic. we also do this in got_hit.gml for when this projectile is parried back at plusle/minun.
            //this only affects projectile #1 (the multi-hit part)
            if (my_hitboxID.hbox_num != 1) break;
            
            with (my_hitboxID) {
                //make this hitbox destroy itself after hitpause ends.
                length = hitbox_timer + hitpause;
                //tell the projectile's article how much hitpause it should be in.
                spawned_by_article_id.hitpause_timer = hitpause;
            }
            //if hitstun was dealt, flip the opponent around to face towards the projectile.
            with (hit_player_obj) {
                if (state == PS_HITSTUN) { spr_dir *= -1; }
            }
        break;
        
        case AT_DSPECIAL_2:
            //make minun's level 2 and level 3 pull the opponent through platforms. check to make sure the opponent is stunned and minun isn't.
            if (my_hitboxID.hbox_num >= 5 && !hit_player_obj.free)
            && (hit_player_obj.state == PS_HITSTUN || hit_player_obj.state == PS_HITSTUN_LAND)
            && (hit_player_obj.y - (hit_player_obj.char_height / 2) < my_hitboxID.y )
            && (state == PS_ATTACK_GROUND || state == PS_ATTACK_AIR)  {
                with (hit_player_obj) {
                    if (!place_meeting(x, y + 4, asset_get("par_solid"))) y += 4;
                }
            }
        break;
        
        case AT_USPECIAL:
        case AT_USPECIAL_2:
            if (  !instance_exists(teammate_player_id) ) break;
            with (teammate_player_id) {
                if ( attack == AT_USPECIAL_GROUND
                 && (teammate_player_id.state == PS_ATTACK_AIR || teammate_player_id.state == PS_ATTACK_GROUND)) {
                    teammate_player_id.hitstop = max(hitstop, other.hitstop);
                    if (!hitpause) {
                        teammate_player_id.hitpause = true;
                        old_hsp = hsp;
                        old_vsp = vsp;
                    }
                    //register this as a hit for the teammate as well
                    has_hit = true;
                 }
            }
        break;
        
        case AT_USTRONG_2:
            if (state == PS_ATTACK_GROUND && hitpause) { old_hsp = 0; }
            if (my_hitboxID.hbox_num != 5) hit_player_obj.should_make_shockwave = false; //don't galaxy except on the last hit
            else sound_play(sound_get("bair2"));
        break;
    }


//if the teammate isn't around, our work is done here
if (!instance_exists(teammate_player_id) || !(teammate_player_id.state == PS_ATTACK_GROUND || teammate_player_id.state == PS_ATTACK_AIR)) exit;

//if the teammate is nearby and using the same attack, give them hitpause too.
if (my_hitboxID.type == 1 && hitpause && point_distance(x, y, teammate_player_id.x, teammate_player_id.y) <= 100 
    && teammate_player_id.attack == attack ) {
    with (teammate_player_id) {
        if (!hitpause) {
            hitpause = true;
            old_hsp = hsp;
            old_vsp = vsp;
            hsp = 0;
            vsp = 0;
        }
    }
}


//if the teammate is using helping hand add the damage dealt to the charge level
if (is_teammate_using_helping_hand() && has_been_buffed_by_helping_hand && hit_player_obj != teammate_player_id && hit_player_obj.player != player) {
    var teammate_id = teammate_player_id;
    var damage_dealt = my_hitboxID.damage;
    
    //don't gain charge for hitting with dspecial itself
    if (my_hitboxID.attack != AT_DSPECIAL_2 && damage_dealt > 0 ) {
        var charge_target;
        //for solo player quirks, the charge goes straight to the other teammate character
        if (is_solo_player) charge_target = teammate_player_id;
        //normally, the charge goes to the master player instance
        else charge_target = master_player_id;
        with (charge_target) {
            hh_charge_percent += damage_dealt;
            
            if (hh_charge_level < hh_maximum_charge_level && hh_charge_percent > hh_charge_percent_array[hh_charge_level]) {
                hh_charge_level += 1;
            }
        }
    }
    
    if (has_been_buffed_by_helping_hand) {
        spawn_hit_fx(round((my_hitboxID.x + my_hitboxID.hit_effect_x + hit_player_obj.x) / 2), round((my_hitboxID.y + my_hitboxID.hit_effect_y + hit_player_obj.y) / 2), teammate_player_id.vfx_hh_buff_hit_effect);
        spawn_hit_fx(teammate_player_id.x, teammate_player_id.y - 30, vfx_hh_buff_static);
        sound_play(sfx_hh_buff_attack_hit, 0, noone, 0.5, 1);
        with (hit_player_obj) {
            if (state == PS_HITSTUN) orig_knock *= other.master_player_id.hh_knockback_multiplier; 
        }
    }
}








#define is_teammate_using_helping_hand
if (!instance_exists(teammate_player_id)) return false;
with (teammate_player_id) return attack == AT_DSPECIAL && (state == PS_ATTACK_GROUND || state == PS_ATTACK_AIR);