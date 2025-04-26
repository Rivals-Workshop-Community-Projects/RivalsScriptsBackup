if !active {
    visible = false;
    disable_movement = true;
    exit;
}
else {
    visible = true
    disable_movement = false;
}

image_index = image_number * (state_timer / duration);

if state_timer == 4 {
    var hb = create_hitbox(AT_NSPECIAL,7,x,y-30)
    hb.owner = self;
    hb.can_hit_self = can_hit_self
    hb.can_hit = can_hit
}

if state_timer == 10 and inner_flame {
    var arr = alt ? player_id.cascade_flames_2 : player_id.cascade_flames;
    with arr[ array_position + 2 ] {
        x = other.x - (46 * other.spr_dir)
        y = other.y
        if !(instance_position(x,y+1,asset_get("par_jumpthrough")) or instance_position(x,y+1,asset_get("par_block"))) {
            active = false; //No off-ledge shenanigans for you.
            break;
        }
        
        active = true;
        spr_dir = other.spr_dir
        inner_flame = false;
        state_timer = 0;
        image_index = 0;
        can_hit_self = other.can_hit_self;
        can_hit = other.can_hit
    }
}

if state_timer >= duration {
    active = false;
}

state_timer++;

if !active visible = false;