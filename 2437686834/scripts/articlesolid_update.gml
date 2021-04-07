//articlesolid_update
with player_id
move_cooldown[AT_DSPECIAL] = 50
can_be_hit -= 1;

if can_be_hit <= 0
can_be_hit = 0

if free {
    vsp += 0.5;
} else {
    vsp = 0;
}
if is_flying = false
{
if can_be_hit = 0
{
    var hitbox = instance_place(x, y, pHitBox);
    
    if hitbox != noone {
        var hitboxOwner = hitbox.player_id;
        with hitbox
            {
            if !has_hit
            {
            var hitting = instance_place(x, y, obj_article_solid);
            
            
            hitting.hp -= damage
            }
            }
        //if hitbox.kb_value > 0 {
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
            can_be_hit = 10;
            //hp = 1
            //hp -= hitbox.damage
            if hp <=0
            {
            //flyhydrant = create_hitbox( AT_NSPECIAL_2, 1, x, y)
            //var hit_angle = get_hitbox_angle(pHitBox);
        //hsp = hsp*dcos(pHitBox);
        //vsp = -vsp*dsin(pHitBox);
        
         
         var hitbox = instance_place(x, y, pHitBox);
            var temp_angle = get_hitbox_angle( hitbox );
var force = hitbox.kb_value + hitbox.kb_scale * .8;
hsp = lengthdir_x( force, temp_angle );
vsp = -lengthdir_y( force, temp_angle );

flyhydrant = create_hitbox( AT_NSPECIAL_2, 1, x, y)
flyhydrant.hsp = hsp
flyhydrant.vsp = vsp

            //if hitbox.kb_value > 0
            {
            //with flyhydrant
            {
            
            //var hitbox = instance_place(x, y, pHitBox);
            //var hit_angle = get_hitbox_angle(hitbox);
            //hsp = hsp*dcos(hitbox)*2;
            //vsp = -vsp*dsin(hitbox)*2;
            }
            }
            
            {
            //hsp = 0;
            //vsp = -5;
            }
            //vsp = -4
            
            instance_destroy(self);
            //flydir = hitboxOwner.spr_dir
            is_flying = true
            }
            
        //}
        
    }

    
}
}
if is_flying = true
{
//hsp = 6*flydir
if free {
    vsp += 0.3;
} else {
    vsp = -10;
}
//if !instance_exists(proj_hitbox)

if flydir = 1
image_angle -= 10

if flydir = -1
image_angle += 10

}

// destroys articles out of the lower view side:
if (y > view_get_yview() + view_get_hview()) {
instance_destroy();
}