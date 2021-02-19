//hit-player

if (my_hitboxID.attack == AT_DAIR) {
    if (my_hitboxID.hbox_num == 1 || my_hitboxID.hbox_num == 2) {
        old_vsp = -3.5;
        old_hsp *= 0.5;
    } else if (my_hitboxID.hbox_num == 3) {
       old_vsp = -7; 
    }
}

if (my_hitboxID.attack == AT_FSPECIAL) && (my_hitboxID.hbox_num == 1) {
    zoID.chainHit = true;
    zoID.chainPlayerID = hit_player_obj.id;
    hit_player_obj.x = my_hitboxID.x + (30*my_hitboxID.spr_dir);
    hit_player_obj.y = my_hitboxID.y + 30;
}

//charges strong attack multipliers;
if (my_hitboxID.attack == AT_FSTRONG) || (my_hitboxID.attack == AT_USTRONG) || (my_hitboxID.attack == AT_USTRONG_2) {
    var dmgMod = 0.6*zoID.strong_charge/60;
    var dmgExtra = get_hitbox_value(my_hitboxID.attack, my_hitboxID.hbox_num, HG_DAMAGE) * dmgMod;
    take_damage(hit_player_obj.player, player, floor(dmgExtra));
    
    var kbMod = 1 + 0.25*zoID.strong_charge/60;
    hit_player_obj.orig_knock *= kbMod;
}

//apply hitpause to Zo
var zoHit = false;
var zoHitAttack = undefined;
var zoHitHboxNum = undefined;
var zoAttacks = [AT_FSTRONG,AT_FSTRONG_2,AT_DSTRONG,AT_DSTRONG_2,AT_USTRONG,AT_USTRONG_2,AT_FSPECIAL,AT_USPECIAL,AT_DSPECIAL_2];
for (var i = 0; i < array_length(zoAttacks); i++) {
    if (my_hitboxID.attack == zoAttacks[i]) {
        zoHit = true;
        zoHitAttack = my_hitboxID.attack;
        zoHitHboxNum = my_hitboxID.hbox_num;
        //print_debug(string(zoHitAttack) + ", " + string(zoHitHboxNum))
    }
}

if (zoHit) {
    var baseHitpause = get_hitbox_value(zoHitAttack, zoHitHboxNum, HG_BASE_HITPAUSE);
    var hitpauseScaling = get_hitbox_value(zoHitAttack, zoHitHboxNum, HG_HITPAUSE_SCALING);
    
    var _hitpause = baseHitpause + (get_player_damage(hit_player+1) * hitpauseScaling * 0.05);
    //print_debug(string(_hitpause))
    with obj_article1 {
        if (player_id = other.id) {
            hitpause = true;
            hitstop_full = _hitpause;
            hitstop = _hitpause;
        }
    }
}