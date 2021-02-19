if !init{
    sprite_index = sprite_get("bomb0");
    mask_index = sprite_get("bombmask");   
    weight = 0.6;
    init = 1;
}
 
with (asset_get("pHitBox")) {
    if player_id == other.player_id && place_meeting(x,y,other) && player != 0 {
       
        if attack != AT_NSPECIAL_MOLL other.hsp = lengthdir_x(kb_value/other.weight, get_hitbox_angle(id));
        if attack != AT_NSPECIAL_MOLL other.vsp = lengthdir_y(kb_value/other.weight, get_hitbox_angle(id));
        other.free = true;
        if !other.hitboxed {
            sound_play(sound_get("mollo_pap"));
            if attack != AT_DSPECIAL other.fuse -= 30;
            other.hitboxed = true;
        }
        break;
    }
}
if hitboxed && fuse mod 10 == 5 {
    spawn_hit_fx(x,y,hit_fx_create(sprite_get("bombpop"),10));
}
 
if projectile {
    var hitted = instance_place(x,y,oPlayer);
    if hitted != noone && hitted != player_id && !hitted.invincible {
 
 
        if !hitted.hitpause create_hitbox(AT_NSPECIAL_MOLL,3,x,y);
       
 
            if hitted.state == PS_PARRY && hitted.state_timer <= hitted.dodge_active_frames+hitted.dodge_startup_frames {
                hsp *= -1
                vsp *= -1
                fuse += 30
            } else { //Bonk
                    sound_play(asset_get("sfx_blow_weak1"));
                    vsp = -2;
                    hsp = sign(hsp)*-1
                    projectile = 0;                
            }
 
    }
 
}
 
if !stasis {
    vsp += 0.25
    can_be_grounded = (vsp > 0 && free == false);
    if free == false {
    //sound_play(asset_get("sfx_birdflap"));
        if type == 2 fuse = 1;
        if vsp_prev <= 1.5 && vsp_prev >= 0 {
           
            //vsp = 0;
            //vsp_prev = 0;
            y = floor(y)
            hsp -= sign(hsp)*0.1;
            projectile = false;
           
            if abs(hsp) < 1 && hsp != 0 {rolling = false; hsp = 0;}    
 
           
        } else {
            //can_be_grounded = false;
            free = true;
            vsp = abs(vsp_prev) * -0.5;
            y = floor(y)
            hsp *= 0.7;
            sound_play(sound_get("mollo_donk"));
        }
    }
}
if rolling image += abs(hsp)/20 else image = fuse/4
image = (image mod 4)
image_index = image + ((!rolling)*4)
 
if position_meeting(x, y, asset_get("plasma_field_obj")) {
    type = -1;
    sound_play(asset_get("sfx_clairen_hit_med"));
    spawn_hit_fx(x,y,hit_fx_create(sprite_get("sparkfx1"), 10))
}
 
if x < -32 or x > room_width+32 or y < -32 or y > room_height+32 type = -2 + !(type != 8 && type != 9 && type != 2) ;
fuse -= 1
if fuse <= 0 {
        switch(type) {
        case -2:
            type = -1;
            sound_play(sound_get("mollo_boomdistant"));
        break;
        default:
            var tossdir = create_hitbox(AT_NSPECIAL_MOLL,1,x,y);
            tossdir.player = 0;
            var tossbox = create_hitbox(AT_NSPECIAL_MOLL,2,x,y);
            tossbox.player = 0;
            tossbox.hbox_num = tossdir.hbox_num
           
            with (object_index) {
                if player_id != other.player_id or !position_meeting(x,y,tossbox) continue;
                tossdir = point_direction(other.x,other.y,x,y+4);
                hsp = lengthdir_x(8,tossdir)
                vsp = lengthdir_y(-8,tossdir)
                y -= 1;
                free = true;
            }
            spawn_hit_fx(x,y,hit_fx_create(sprite_get("boom0"), 30))
            sound_play(sound_get("mollo_boom"));
 
            type = -1;
        break;
        }
}
 
hsp_prev = hsp;
vsp_prev = vsp;
stasis = 0;
 
if type == -1 instance_destroy();