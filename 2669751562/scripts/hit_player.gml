//hit_player - called when one of your hitboxes hits a player
if(my_hitboxID.attack == AT_NSPECIAL && my_hitboxID.hbox_num == 1 && stealth_rock.state == 2) {
    stealth_rock.state = 4;
    stealth_rock.state_timer = 0;
}

if((hit_player_obj.skl_poisoned && hit_player_obj.skl_poisoner == player) ||    //If hit player poisoned by me
   (skl_poisoned && skl_poisoner == hit_player) &&   //If I was poisoned by other player
   my_hitboxID.type == 1) { //If a melee attack.
        skl_poisoned = false;
        skl_poisoner = 0;
        hit_player_obj.skl_poisoned = false;
        hit_player_obj.skl_poisoner = 0;    
}

if(my_hitboxID.attack == AT_USPECIAL && web_cooldown_current == 0) {
    web_cooldown_current = web_cooldown;
    hit_player_obj.skl_poisoned = true;
    hit_player_obj.skl_poisoner = my_hitboxID.player;
    sound_play(sfx_poisoned);
}