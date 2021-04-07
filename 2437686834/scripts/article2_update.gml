//articlesolid_update

if free {
    vsp += 0.5;
} else {
    vsp = 0;
}
if is_flying = false
{
    var hitbox = instance_place(x, y, pHitBox);
    
    if hitbox != noone {
        var hitboxOwner = hitbox.player_id;
        if hitbox.kb_value > 0 {
            with hitboxOwner {
                if !has_hit {
                    if hitbox.type == 1 {
                        hitpause = true;
                        hitstop = 10;
                        hitstop_full = 10;
                    }
                    has_hit = true;
                    old_hsp = hsp;
                    old_vsp = vsp;
                    other.was_hit = true;
                    sound_play(get_hitbox_value(hitbox.attack, hitbox.hbox_num, HG_HIT_SFX));
                    spawn_hit_fx(other.x, other.y, get_hitbox_value(hitbox.attack, hitbox.hbox_num, HG_VISUAL_EFFECT));
                    
                    //fruit = instance_create(x + 58*hitboxOwner.spr_dir, y - 30, "obj_article1");
                    //create_hitbox(AT_FSPECIAL_AIR, 8, x+80*hitboxOwner.spr_dir, y-15);
                    
                   
                }
            }
            vsp = -4
            flydir = hitboxOwner.spr_dir
            is_flying = true
            
        }
        
    }
}
if is_flying = true
{
hsp = 6*flydir
if free {
    vsp += 0.3;
} else {
    vsp = -8;
}
//if !instance_exists(proj_hitbox)
create_hitbox( AT_NSPECIAL_2, 1, x, y)
if flydir = 1
image_angle -= 10

if flydir = -1
image_angle += 10

}