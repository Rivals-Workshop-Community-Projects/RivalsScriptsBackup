//got_parried - called when an opponent parries your attack

if letterID != 0 {
    if letterID != hit_player_obj.id {
        letterID.hsp = 15 * letterID.spr_dir;
        letterID.hitbox_timer = 0;
    } 
}

if airletter1ID != 0 {
    if airletter1ID != hit_player_obj.id {
        airletter1ID.hsp = 10 * letterID.spr_dir;
        airletter1ID.vsp = 14;
        airletter1ID.hitbox_timer = 0;
    } 
} else if airletter2ID != 0 {
    if airletter2ID != hit_player_obj.id {
        airletter2ID.hsp = 10 * letterID.spr_dir;
        airletter2ID.vsp = 14;
        airletter2ID.hitbox_timer = 0;
    } 
} else if airletter3ID != 0 {
    if airletter3ID != hit_player_obj.id {
        airletter3ID.hsp = 10 * letterID.spr_dir;
        airletter3ID.vsp = 14;
        airletter3ID.hitbox_timer = 0;
    } 
}

if packageID != 0 {
    if packageID != hit_player_obj.id {
        explo_owner = hit_player;
    } else {
        explo_owner = 0;
    }
}

if mailboxID != 0 {
    if mailboxID.state == 0 {
        if mailboxID.letters > 0 {    
            mailboxID.state = 8;
            mailboxID.state_timer = 0;
            mailboxID.letters -= 1;
        } else {
            mailboxID.state = 1;
            mailboxID.state_timer = 0;
        }
    } 
}