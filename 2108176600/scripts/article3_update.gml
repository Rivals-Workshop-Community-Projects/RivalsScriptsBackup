//article2_update

if _init == 0 {
    _init = 1;
    spr_dir = playa_id.spr_dir;
    hsp = _hsp*spr_dir;
    vsp = _vsp;
    
}
state_timer++;
if state == 2 {
    instance_destroy();
    exit;
}

if state == 0 { //hitboxes
    image_index = image_number*(state_timer/anim_timer);
    if !instance_exists(hitb) hitb = create_hitbox(AT_USTRONG,4,x,y);
    with hitb {
        x = other.x;
        y = other.y;
    }
    
    
    with asset_get("pHitBox") if player_id != other.player_id && place_meeting(x,y,other.id) other.state = 2;
    
    vsp += grav;
    if y > y_max state = 2;
}


