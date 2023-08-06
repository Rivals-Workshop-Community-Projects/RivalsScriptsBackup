//hitbox_update

//arrow
if attack == AT_NSPECIAL && hbox_num == 1 {
    if was_parried {
        was_parried = false
        hsp *= -1
        owner_id.hsp *= -1
        owner_id.vsp *= -1
    }
    if instance_exists(owner_id) {
        hsp = owner_id.hsp
        vsp = owner_id.vsp
        x = owner_id.x + hsp
        y = owner_id.y + vsp
    } else {
        destroyed = true
    }
    
    if has_hit {
        if instance_exists(owner_id) {
            owner_id.hbox_has_hit = true
            owner_id.hbox_hit_id = hit_player_obj.id
        }
        with player_id var sfx = sound_get("arrow_crit")
        sound_play(sfx)
        
        destroyed = true
    }
}

if attack == AT_FSPECIAL && hbox_num == 4 { //bomb explosion
    player_id.has_hit = true
}

//rocket
if attack == AT_DSPECIAL && hbox_num == 2 {
    if has_hit {
        owner_id.destroy = true
        instance_destroy(self)
        exit;
    }
    if !instance_exists(owner_id) || owner_id.recall_active {
        instance_destroy(self)
        exit;
    }
    x = owner_id.x
    y = owner_id.y
    hsp = owner_id.hsp
    vsp = owner_id.vsp
}

//homingcart
if attack == AT_DSPECIAL && hbox_num == 3 {
    /*
    if has_hit {
        owner_id.destroy = true
        instance_destroy(self)
        exit;
    }
    */
    if !instance_exists(owner_id) || owner_id.recall_active {
        instance_destroy(self)
        exit;
    }
    x = owner_id.x
    y = owner_id.y + 20
    hsp = owner_id.hsp
    vsp = owner_id.vsp
}