if (attack == AT_TAUNT && down_down && ("superTrue" not in self)) {
    attack = AT_TAUNT_2;
}


if (attack == AT_FTILT) {
    if (instance_exists(sword_id[0])) {
        if (sword_id[0].follow_type == 1 || sword_id[0].state == PS_DEAD || sword_id[0].state == PS_RESPAWN) {
            window = 4;
            window_timer = 0;
        }
    }
}

if (attack == AT_UTILT) {
    if (instance_exists(sword_id[0])) {
        if (sword_id[0].follow_type == 0 && sword_id[0].state != PS_DEAD && sword_id[0].state != PS_RESPAWN) {
            window = 4;
            window_timer = 0;
        }
    }
}


if (attack == AT_DTILT) {
    if (instance_exists(sword_id[0])) {
        if (sword_id[0].follow_type == 1 || sword_id[0].state == PS_DEAD || sword_id[0].state == PS_RESPAWN) {
            window = 4;
            window_timer = 0;
        }
    }
}

if (attack == AT_FAIR) {
    if (instance_exists(sword_id[0])) {
        if (sword_id[0].follow_type == 1 || sword_id[0].state == PS_DEAD || sword_id[0].state == PS_RESPAWN) {
            window = 4;
            window_timer = 0;
        }
    }
}


if (attack == AT_BAIR) {
    if (instance_exists(sword_id[0])) {
        if (sword_id[0].follow_type == 1 || sword_id[0].state == PS_DEAD || sword_id[0].state == PS_RESPAWN) {
            window = 4;
            window_timer = 0;
        }
    }
}

if (attack == AT_UAIR) {
    if (instance_exists(sword_id[0])) {
        if (sword_id[0].follow_type == 0 && sword_id[0].state != PS_DEAD && sword_id[0].state != PS_RESPAWN) {
            window = 2;
            window_timer = 0;
        }
    }
}

if (attack == AT_DAIR) {
    if (instance_exists(sword_id[0])) {
        if (sword_id[0].follow_type == 0 && sword_id[0].state != PS_DEAD && sword_id[0].state != PS_RESPAWN) {
            window = 4;
            window_timer = 0;
        }
    }
}

if (instance_exists(sword_id[0])) {
    if (sword_id[0].follow_type == 0) {
        sword_id[0].spr_dir = spr_dir 
        follower_attack_start(0, AT_FTILT, AT_FTILT, 1)
        follower_attack_start(0, AT_UTILT, AT_UTILT, 4)
        follower_attack_start(0, AT_DTILT, AT_DTILT, 1)

        follower_attack_start(0, AT_FAIR, AT_FAIR, 1)
        follower_attack_start(0, AT_FAIR, AT_FAIR, 1)
        follower_attack_start(0, AT_BAIR, AT_BAIR, 1)
        follower_attack_start(0, AT_UAIR, AT_UAIR, 1)
        follower_attack_start(0, AT_UAIR, AT_UAIR, 2)
        follower_attack_start(0, AT_DAIR, AT_DAIR, 1)
        follower_attack_start(0, AT_DAIR, AT_DAIR, 4)
    }
    else {         
        if (attack != AT_FSPECIAL && attack != AT_DSPECIAL) {
            if (left_down || (left_strong_down && sword_id[1].follow_type == 0))
                sword_id[0].spr_dir = -1;
            if (right_down || (right_strong_down && sword_id[1].follow_type == 0))
                sword_id[0].spr_dir = 1;
        }
        
        follower_attack_start(0, AT_FTILT, AT_FTILT, 1)
        follower_attack_start(0, AT_FTILT, AT_FTILT, 4)
        //follower_attack_start(0, AT_JAB, AT_FTILT, 1)
        follower_attack_start(0, AT_DATTACK, AT_FTILT, 1)
        follower_attack_start(0, AT_UTILT, AT_UAIR, 1)
        follower_attack_start(0, AT_DTILT, AT_DTILT, 4)
        
        if ((follower_tilting_attack(sword_id[0]) && !follower_charging_attack(sword_id[0])) || (sword_id[1].follow_type == 0 && follower_charging_attack(sword_id[0]))) {
            
            follower_attack_start(0, AT_FAIR, AT_FTILT, 4)
            follower_attack_start(0, AT_BAIR, AT_FTILT, 4)
            follower_attack_start(0, AT_UAIR, AT_UAIR, 1)
            follower_attack_start(0, AT_UAIR, AT_UAIR, 2)
            follower_attack_start(0, AT_DAIR, AT_DTILT, 1)
            follower_attack_start(0, AT_DAIR, AT_DTILT, 4)
            follower_attack_start(0, AT_NAIR, AT_FTILT, 1)
        }
    }
}

if (instance_exists(sword_id[1])) {
    if (sword_id[1].follow_type == 0) {
        sword_id[1].spr_dir = spr_dir 
        follower_attack_start(1, AT_FSTRONG, AT_FSTRONG, 1)
        follower_attack_start(1, AT_USTRONG, AT_USTRONG, 1)
        follower_attack_start(1, AT_DSTRONG, AT_DSTRONG, 1)
    }
    else {
        if (attack != AT_FSPECIAL && attack != AT_DSPECIAL) {
            if (left_strong_down || (strong_down && left_down))
                sword_id[1].spr_dir = -1;
            if (right_strong_down || (strong_down && right_down))
                sword_id[1].spr_dir = 1;
        }
            
        follower_attack_start(1, AT_FSTRONG, AT_FSTRONG, 1)
        follower_attack_start(1, AT_USTRONG, AT_USTRONG, 1)
        follower_attack_start(1, AT_DSTRONG, AT_DSTRONG, 1)
        
        if (follower_charging_attack(sword_id[1])) {
            follower_attack_start(1, AT_FAIR, AT_FSTRONG, 1)
            follower_attack_start(1, AT_FAIR, AT_FSTRONG, 4)
            follower_attack_start(1, AT_BAIR, AT_FSTRONG, 4)
            follower_attack_start(1, AT_BAIR, AT_FSTRONG, 1)
            follower_attack_start(1, AT_UAIR, AT_USTRONG, 1)
            follower_attack_start(1, AT_UAIR, AT_USTRONG, 2)
            follower_attack_start(1, AT_DAIR, AT_DSTRONG, 1)
            follower_attack_start(1, AT_DAIR, AT_DSTRONG, 4)
        }
    }
}


//NSPECIAL image variance
set_window_value(AT_NSPECIAL, 1, AG_WINDOW_ANIM_FRAME_START, nspecial_sword == 0 ? 0 : 13);
set_window_value(AT_NSPECIAL, 2, AG_WINDOW_ANIM_FRAME_START, nspecial_sword == 0 ? 3 : 16);
set_window_value(AT_NSPECIAL, 3, AG_WINDOW_ANIM_FRAME_START, nspecial_sword == 0 ? 5 : 18);
set_window_value(AT_NSPECIAL, 4, AG_WINDOW_ANIM_FRAME_START, nspecial_sword == 0 ? 8 : 21);

//NSPECIAL checks
if (attack == AT_NSPECIAL) {
    var both = 0;
    var alive_swords = 2;
    for (var i = 0; i <= 1; i++) {
        if (instance_exists(sword_id[i])) {
            if (sword_id[i].state == PS_DEAD || sword_id[i].state == PS_RESPAWN) {
               alive_swords --;
            }
            else {
                if (sword_id[i].follow_type == 1) {
                    both ++;
                }
            }
        }
    }
    
    if (both >= alive_swords) {
        window = 5;
        window_timer = 0;
    }
    else {
        follower_attack_start(nspecial_sword, AT_NSPECIAL, AT_NSPECIAL, 1)
    }
}

//FSPECIAL checks
if (attack == AT_FSPECIAL) {
    var alive_swords = 2;
    for (var i = 0; i <= 1; i++) {
        if (instance_exists(sword_id[i])) {
            if (sword_id[i].state == PS_DEAD || sword_id[i].state == PS_RESPAWN || sword_id[i].follow_type == 1) {
               alive_swords --;
            }
        }
    }
    
    if (alive_swords >= 2) {
        window = 7;
        window_timer = 0;
    }
    else if (alive_swords == 1) {
        window = 4;
        window_timer = 0;
    }
    for (var i = 0; i <= 1; i++) {
        if (sword_id[i].follow_type == 0) {
            follower_attack_start(i, AT_FSPECIAL, AT_FSPECIAL, 4)
            follower_attack_start(i, AT_FSPECIAL, AT_FSPECIAL, 7)
        }
    }
}


//Final Smash

//USPECIAL checks
/*
if (attack == AT_USPECIAL) {
    for (var i = 0; i <= 1; i++) {
        if (instance_exists(sword_id[i])) {
            if (sword_id[i].follow_type == 1 && sword_id[i].state != PS_DEAD && sword_id[i].state != PS_RESPAWN) {
                sword_id[i].go_back = true;
            }
        }
    }
}
*/
#define follower_attack_start(_sword_type, _attack, _follower_attack, _window) 

if (attack == _attack && move_cooldown[_attack] <= 0 ){
    if (window == _window){
        if (instance_exists(sword_id[_sword_type]) && !sword_id[_sword_type].committed) {
            sword_id[_sword_type].next_attack = _follower_attack
        }
    }
}

#define follower_tilting_attack(_follower_id)
var result = false;
if (up_down)
        result = true;
else if (down_down)
        result = true;
else if (right_down && _follower_id.spr_dir == 1) || (left_down && _follower_id.spr_dir == -1)
        result = true;

if (attack_down)
    result = true;
return result;

#define follower_charging_attack(_follower_id)
var result = false;
if (up_strong_down)
        result = true;
else if (down_strong_down)
        result = true;
else if (right_strong_down && _follower_id.spr_dir == 1) || (left_strong_down && _follower_id.spr_dir == -1)
        result = true;

if (strong_down)
    result = true;
return result;