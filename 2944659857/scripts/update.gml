if is_aether_stage() {
    if !instance_exists(mob_handler) {
        mob_handler = instance_create(0,0, "obj_stage_article", 9);
        print("hey stop deleting my articles! >:(");
    }
    
    // pseudo hitbox update
    with pHitBox if orig_player = 5 && "owner" in self {
        if !instance_exists(owner) {
            break;
        }
        else if "smb_is_mob" in owner {
            x = owner.x;
            y = owner.y;
            spr_dir = owner.spr_dir;
            draw_xscale = spr_dir;
            if hbox_num == 2 { hitbox_timer = 0; }
        }
    }
    
    // store previous vsp
    with oPlayer {
        smb_stage_prev_vsp = vsp;
    }
}
