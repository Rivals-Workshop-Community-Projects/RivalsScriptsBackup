//got_hit.gml

// Called when one of our hitboxes hits a player.
//
// hit_player  = Which player was hit.
// my_hitboxID = The hitbox we hit them with.
// orig_knock  = Knockback given.


//if the partner is being attacked, add the damage onto the partner.
var unaltered_orig_knock = 0;

var damage_multiplier = (1 + (enemy_hitboxID.player_id.strong_charge / 100));
var damage_dealt = floor(enemy_hitboxID.damage * damage_multiplier);
if (custom_clone) {
    take_damage( player, -1, -round(damage_dealt) );
    
    damage_percent_as_teammate += damage_dealt; 
    teammate_player_id.damage_percent_as_teammate -= damage_dealt; //if this goes into the negatives, it will be corrected in animation.gml
    
    unaltered_orig_knock = orig_knock;
    
    //recalculate knockback/stun effects.
    recalculate_hitbox_effects_for_teammate();
    
    
    
}
else {
    //still update the 'damage_percent_as_teammate' variable if the leader gets hit.
    damage_percent_as_teammate = clamp(damage_percent_as_teammate + damage_dealt, 0, 999);
}
/*
else if (is_teammate_using_helping_hand()) {
    with (master_player_id) {
        hh_charge_percent -= damage_dealt;
        
    }
}
*/

//hud
if (orig_knock >= 8) visual_hud_icon_hurt = true;


//special effect when hit by a parried fspecial2
var hit_by_own_fspecial = false;
with (enemy_hitboxID) {
    if (orig_player == other.player && attack == AT_FSPECIAL_2 && hbox_num == 1) {
        length = hitbox_timer + hitpause;
        spawned_by_article_id.hitpause_timer = hitpause;
        hit_by_own_fspecial = true;
    }
}

//if stunned as Minun, destroy its projectile
if (species_id == 1 && state_cat == SC_HITSTUN && !hit_by_own_fspecial) {
    with (obj_article2) {
        if (player_id != other.id) continue;
        destroy = true;
        should_create_hitbox_upon_destroy = false;
    }
}

//if using helping hand, add faux crouch armor
if (attack == AT_DSPECIAL && (state == PS_ATTACK_GROUND || state == PS_ATTACK_AIR || prev_state == PS_ATTACK_GROUND || prev_state == PS_ATTACK_AIR)) {
    
    orig_knock /= 1.5; //reduce by 33%
    
    if (!free && (orig_knock <= 4 || state == PS_HITSTUN_LAND || (enemy_hitboxID.type == 2 && enemy_hitboxID.damage <= 8))) {
        if (state != PS_ATTACK_GROUND && state != PS_ATTACK_AIR) { set_state(prev_state); }
    	window = dspecial_record_window;
        window_timer = dspecial_record_window_timer;
        dspecial_fake_hitstun = 6;
        orig_knock = 0;
        if (hitpause) {
            if (unaltered_orig_knock > 0 && old_hsp != 0) {
                spr_dir = -sign(old_hsp); //flip facing direction as if really taking a hit
            }
            old_hsp = 0;
            old_vsp = 0;
        }
        else {
            hsp = 0;
        }
        
    }
    
    if (orig_knock < unaltered_orig_knock) should_make_shockwave = false;
}


#define recalculate_hitbox_effects_for_teammate


//recalculate knockback
if (orig_knock != 0) {
    //BKB + (KBS * Knockback Adjustment * Percentage * 0.12)
    var new_knock = enemy_hitboxID.kb_value + (enemy_hitboxID.kb_scale * knockback_adj * damage_percent_as_teammate * 0.12);
    
    //don't make a galaxy effect if this move's knockback has been reduced as a result of the different percent
    if (new_knock < orig_knock) should_make_shockwave = false;
    
    orig_knock = new_knock;
}

//recalculate hitstun
if (state_cat == PS_HITSTUN) {
    hitstun = enemy_hitboxID.kb_value * 4 * ((knockback_adj - 1) * 0.6 + 1) + damage_percent_as_teammate * 0.12 * enemy_hitboxID.kb_scale * 4 * 0.65 * knockback_adj;
}

//recalculate hitpause
if (hitpause) {
    var new_hitstop = enemy_hitboxID.hitpause + damage_percent_as_teammate * enemy_hitboxID.hitpause_growth * .05;
    var extra_hitstop = enemy_hitboxID.extra_hitpause;
    
    //if the attacking player's hitstop matches the teammate's hitstop, adjust the attacking player's hitstop too.
    with (hit_player_obj) {
        if (hitpause && hitstop == other.hitstop - extra_hitstop) {
            hitstop = new_hitstop + max(0, -extra_hitstop);
            hitstop_full = hitstop;
        }
    }
    
    hitstop = new_hitstop + max(0, extra_hitstop);
}

//override camera shake
var cam_shake = enemy_hitboxID.camera_shake
if (cam_shake >= 0 && (cam_shake >= 1 || orig_knock >= 1)) {
    var shake_amount = max(orig_knock, (cam_shake >= 1))
    shake_camera(round(orig_knock), round(orig_knock * 0.5)); //estimated, don't know exact values.
}




#define is_teammate_using_helping_hand
if (!instance_exists(teammate_player_id)) return false;
with (teammate_player_id) return attack == AT_DSPECIAL && (state == PS_ATTACK_GROUND || state == PS_ATTACK_AIR);
