//set_attack

if (attack == AT_FTILT) {
    attack = AT_JAB;
}

if (attack == AT_USPECIAL) {
    CannUSpcChargingTimer = 0;
    CannUSpcCharging = false;
    CannUSpcShootBallEndTimer = 0;
    CannUSpcChargePower = 0;
    CannUSpcShootHitboxTimer = 0;
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
    if (HeatLevel == 0) {
        state = PS_IDLE;
        //sound_play(asset_get("sfx_zetter_fireball_fire"));
        move_cooldown[AT_FSTRONG] = 6;
        move_cooldown[AT_USTRONG] = 6;
        move_cooldown[AT_DSTRONG] = 6;
        //move_cooldown[AT_DATTACK] = 6;
    } else {
        CannGrabbedId = 0;
        CannStrongTimer = 0;
        CannStrongPower = 0;
    }
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