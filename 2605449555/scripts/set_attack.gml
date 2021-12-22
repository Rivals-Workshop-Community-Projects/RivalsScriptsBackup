//set_attack

if (attack == AT_FTILT) {
    attack = AT_JAB;
}

// Teleport to Cannonball
if (special_down == true && CannTpUsed == false && joy_pad_idle == true && CannTeleportable == true && CannCannonBallActive == true && CannBallOppHit == false && CannTpUsed == false && (CannBoomY < get_stage_data(SD_BOTTOM_BLASTZONE) + get_stage_data(SD_Y_POS) - 200 && CannBoomX > get_stage_data(SD_X_POS) - get_stage_data(SD_SIDE_BLASTZONE) + 100 && CannBoomX < room_width + get_stage_data(SD_X_POS) + get_stage_data(SD_SIDE_BLASTZONE) - 100)) {
	attack = AT_FTILT; // Teleport to Cannonball
}

RaiseHeat = false;

if (attack == AT_FSPECIAL) {
    CannFSpcDashTimer = 0;
    CannFSpcDashTimer = 0;
}

if (attack == AT_DSPECIAL) {
    CannCounterStunHit = false;
    CannDSpcKB = 0;
    CannDSpcDmg = 0;
    CannCounter = false;
}

/*if (HeatLevel == 10 && attack != AT_USPECIAL && attack != AT_NSPECIAL && attack != AT_FSPECIAL && attack != AT_DSPECIAL) {
    HeatOutline = true;
    outline_color = [143, 24, 11];
    var DamageLol = get_player_damage( player );
    set_player_damage( player, DamageLol + 2);
    sound_play(asset_get("sfx_zetter_fireball_fire"));
}*/

if (attack == AT_FSTRONG || attack == AT_USTRONG || attack == AT_DSTRONG) {
	CannGrabbedId = 0;
	CannStrongTimer = 0;
	CannStrongPower = 0;
}

if (attack == AT_DATTACK) {
    if (hsp = 0) {
        if (up_down == true) {
            attack = AT_UTILT;
        } else if (down_down == true) {
            attack = AT_DTILT;
        } else {
            attack = AT_JAB;
        }
        
    }
    if (left_down == false && right_down == false) {
        attack = AT_JAB;
    }
}

if (attack == AT_NAIR) {
    CannNairDidReduce = false;
    CannNairVspReduce = false;
}