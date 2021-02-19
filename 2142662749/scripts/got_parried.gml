//got-parried

var attackList = [AT_NSPECIAL,AT_FSPECIAL,AT_DSPECIAL_2,AT_USPECIAL,AT_FSTRONG,AT_USTRONG,AT_USTRONG_2,AT_DSTRONG];

var zoHitbox = false;
for (var i = 0; i < array_length(attackList); i++) {
    if (my_hitboxID.attack == attackList[i]) {
        zoHitbox = true;
        break;
    }
}

if (zoHitbox) {
    zoID.was_parried = true;
    
    if get_hitbox_value(my_hitboxID.attack, my_hitboxID.hbox_num, HG_EXTENDED_PARRY_STUN) == 1 {
        var playerDist = distance_to_object(hit_player_obj);
        var extraStun = 0;
        if playerDist > 150 && playerDist < 600 {
            extraStun = floor((playerDist - 150)*40/450);
        } else if playerDist > 600 {
            extraStun = 40;
        }
        if zoID.state != PS_ATTACK_AIR && zoID.state != PS_ATTACK_GROUND {
            extraStun += 10;
        }
        zoID.parry_stun = 60 + extraStun;
    } else {
        zoID.parry_stun = 40;
    }
    
}

print_debug(string(zoHitbox));  