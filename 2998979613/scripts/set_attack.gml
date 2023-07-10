///#args fun

used_legs = [];
with obj_article1 if player_id == other && state == 4 state = 1;

if !move_cooldown[attack] switch attack{
    case AT_NAIR:
    case AT_DSTRONG:
    case AT_USTRONG:
    case AT_UAIR:
    case AT_DATTACK:
    with obj_article1 if player_id == other state = 4;
    break;
    case AT_FSTRONG:
    case AT_FTILT:
    case AT_UTILT:
    case AT_DTILT:
    case AT_FAIR:
    fgrabp = noone;
    grabp = noone;
    var farthest = noone;
    with obj_article1 if player_id == other{
        if farthest == noone farthest = self;
        else if dcos(other.body_angles[0] + 60*leg_id)*other.spr_dir > dcos(other.body_angles[0] + 60*farthest.leg_id)*other.spr_dir farthest = self;
    }
    array_push(used_legs, farthest);
    used_legs[0].state = 4;
    break;
    case AT_BAIR:
    fgrabp = noone;
    grabp = noone;
    var farthest = noone;
    with obj_article1 if player_id == other{
        if farthest == noone farthest = self;
        else if dcos(other.body_angles[0] + 60*leg_id)*other.spr_dir < dcos(other.body_angles[0] + 60*farthest.leg_id)*other.spr_dir farthest = self;
    }
    array_push(used_legs, farthest);
    used_legs[0].state = 4;
    break;
}