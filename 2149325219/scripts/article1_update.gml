//bomb Article

//#region fspecial air
if(state == 0){
    if(blinkT % 2 == 0){
        if(fuse > 120){
            sprite_index = sprite_get("bombf")
        }
        else{
            sprite_index = sprite_get("bombfw")
            
        }
        
    }
    else{
            sprite_index = sprite_get("bombfr")
    }
    image_index += 0.035*hsp*spr_dir;
    vsp += bomb_gravity
    if(hsp > 0 ){
        hsp -= 0.09;
    }
    if(hsp < 0){
        hsp += 0.09;
    }
    if(!free){
        state = 1;
        state_timer = 0;
    }
    
}

//#endregion
//#region Basic roll
if(state == 1){
    sprite_index = asset_get("empty_sprite")
    
    vsp += bomb_gravity;
    
    if(free){
        if(hsp > 0 ){
            hsp -= 0.09;
        }
        if(hsp < 0){
            hsp += 0.09;
        }
    }
    else{
        if(hsp > 0 ){
            hsp -= 0.35;
        }
        if(hsp < 0){
            hsp += 0.35;
        }
        
    }
    
}

if(fuse <= 0 && state != 100){
    state = 100;
    image_index = 0;
    state_timer = 0;
}

//offstage

if(y >= room_height && state != 100){
    sound_stop(sound_get("mollo_fuse"))
    sound_stop(sound_get("crackerFuse"))
    instance_destroy();
    exit;
}
//#endregion

//#region sizzle
if(!fusesound){
    if(fuse <= 240){
        fusesound = true;
    
        sound_stop(sound_get("mollo_fuse"))
        sound_play(sound_get("mollo_fuse"))
        sound_play(sound_get("mollo_fuse"))
        sound_play(sound_get("mollo_fuse"))
        sound_play(sound_get("mollo_fuse"))
        sound_play(sound_get("mollo_fuse"))
        sound_play(sound_get("mollo_fuse"))
        sound_play(sound_get("mollo_fuse"))
        sound_play(sound_get("mollo_fuse"))
        sound_play(sound_get("mollo_fuse"))
        
        
    }
}
if(!fusesound2){
	if(fuse <= 120){
		fusesound2 = true;
		// sound_stop(sound_get("mollo_fuse"))
	    sound_play(sound_get("crackerFuse"));
	    sound_play(sound_get("crackerFuse"));
	    sound_play(sound_get("crackerFuse"));
	    	
    }
}

if(fuse > 240 && fusesound ){
    sound_stop(sound_get("mollo_fuse"))
    sound_stop(sound_get("crackerFuse"))
    fusesound = false;
    fusesound2 = false;
}


//#endregion
//#region boom

if(state == 100){
    if(state_timer == 1){
        with(oPlayer){
            if(id == other.player_id){
                jump_speed = 10;
            }
        }
        sound_stop(sound_get("mollo_fuse"))
    	sound_stop(sound_get("crackerFuse"))
        var boom = create_hitbox(AT_EXTRA_1,1, x, y)
        if(loose){
            boom.hit_flipper = 3;
        }
        if(flip_up){
            boom.hit_flipper = 3;
        }
        if(skull == true){
            with(oPlayer){
                if(id != other.player_id){
                    boom.can_hit[player] = false;
                }
                //else{
                //    boom.can_hit[player]= true;
                //}
            }
            boom.can_hit_self = true;
        }
        
        //sound_play(sound_get("ph_explode"))
        //sound_play(sound_get("ph_explode"))
        sound_play(sound_get("ph_explode"))
        sound_play(sound_get("ph_explode"))
    }
    sprite_index = sprite_get("kaboom");
    image_index += 0.3;
    hsp = 0;
    vsp = 0;
    
    if(state_timer == 20){
        
        instance_destroy();
        exit;
    }
}

//#endregion

//#region Contact
with(obj_article1){
    if(player_id == other.player_id && id != other.id){
        if(contactCD <= 0){
            if(place_meeting(x, y, other)){
                hsp = other.hsp * 0.5  - 1.5*cos(degtorad(point_direction(x,y,other.x,other.y))) + 1*spr_dir;
                vsp = other.vsp * 0.9 + 1.5*sin(degtorad(point_direction(x,y,other.x,other.y)));
                //other.hsp = hsp * 0.9;
                //other.vsp = vsp * 0.9;
                contactCD = 10;
                //other.contactCD = 10;
            }
        }
        
    contactCD--;
    }
}
//#endregion

//#region bounce
if(bvsp > 2){
    if(position_meeting(x,y+21, asset_get("par_block")) || position_meeting(x,y+21, asset_get("par_jumpthrough"))){
        
        vsp = bvsp*-0.5;
        state = 1;
        state_timer = 0;
        image_index =0;
        sound_play(sound_get("mollo_basebounce"))
        sound_play(sound_get("mollo_basebounce"))
        sound_play(sound_get("mollo_basebounce"))
        
    }
}
right_foot = x + 21
left_foot = x - 21
if(position_meeting(right_foot, y, asset_get("par_block"))){
    if(hsp > 0){
        hsp = bhsp * -0.6;
        sound_play(sound_get("mollo_basebounce"))
        sound_play(sound_get("mollo_basebounce"))
        sound_play(sound_get("mollo_basebounce"))
    }
        //x -= 10*dir
}
if(position_meeting(left_foot, y, asset_get("par_block"))){
    if(hsp < 0){
        hsp = bhsp * -0.6;
        sound_play(sound_get("mollo_basebounce"))
        sound_play(sound_get("mollo_basebounce"))
        sound_play(sound_get("mollo_basebounce"))
    }
        //x -= 10*dir
}
//#endregion

//#region speed

bomb_sp = floor(sqrt((hsp*hsp)+(vsp*vsp)))
if(hsp != 0){
    if(hsp > 0){
        dir = 1;
    }
    else{
        dir = -1;
    }
}

//#endregion

//#region Whack

with(asset_get("pHitBox")){
    if((((attack != AT_EXTRA_1) && player_id == other.player_id) || player_id != other.player_id)){
    //if(attack != AT_EXTRA_1){
        if(place_meeting(x,y,other) && other.state != 100){
            if(player_id.hitpause  == false && other.bombpause >= 30 && type == 1){
                player_id.hitpause = true
                player_id.hitstop = hitpause;
                other.bombpause = 0 - hitpause;
                sound_play(sound_effect);
                spawn_hit_fx(x+hit_effect_x,y+hit_effect_y,hit_effect);
                player_id.old_hsp = player_id.hsp
                player_id.old_vsp = player_id.vsp
            }
            other.state = 1;
            other.smackT = 30;
            other.dir = spr_dir;
            if(other.bombpause >= 0){
                other.hsp = cos(degtorad(kb_angle))*kb_value*spr_dir*1.15;
                other.vsp = -sin(degtorad(kb_angle))*kb_value*1.15;
            }
            if(instance_exists(other.smack))  instance_destroy(other.smack)
            other.smackT = 90
            if(hbox_num != other.oldhb && attack != other.oldat){
                sound_play(sound_effect)
            }
            if(type == 1){
                if(player_id != other.player_id){
                    other.skull = true;
                }
                else{
                    other.skull = false;
                }
            }
            //other.fuse -= 30;
            other.oldhb = hbox_num
            other.oldat = attack
        }
    }
    if(attack == AT_EXTRA_1 && hbox_num == 1){
        if(place_meeting(x,y,other)){
            if(other.state != 100){
                other.vsp = -sin(degtorad(point_direction(x,y,other.x,other.y)))*15
                other.hsp =  cos(degtorad(point_direction(x,y,other.x,other.y)))*10
                if(instance_exists(other.smack)) instance_destroy(other.smack);
                
                if(player_id != other.player_id){
                    other.skull = true;
                }
            }
        }
    }
}

if(bombpause <= 30){
    bombpause++;
}

with(oPlayer){
    if(id == other.player_id){
        if(state != PS_ATTACK_AIR && state != PS_ATTACK_GROUND){
            if(state_timer == 1){
                other.oldhb = 0;
                other.oldat = noone;
            }
        }
    }
}

//#endregion

//#region Smack

if(abs(bomb_sp) > 1.0 ){
    if(!instance_exists(smack) && smackT > 90){
        smack = create_hitbox(AT_EXTRA_1, 2, x, y)
        smack.no_absorb = 1;
    }
    if(instance_exists(smack)){
        if(state_timer % 6 == 0){
            //spawn_hit_fx(x,y,29)
        }
        smack.damage = floor(abs(bomb_sp)*0.3);
        if(free){
            smack.kb_angle = point_direction(0,0,hsp*spr_dir,vsp);
            //smack.kb_value = floor(abs(bomb_sp)*0.20)+2;
            smack.kb_value = 3
        }
        else{
            smack.kb_angle = 60;
            //smack.kb_value = floor(abs(bomb_sp)*0.4)+2;
            smack.kb_value = 4
        }
        smack.x = x + hsp;
        smack.y = y+vsp+2;
        if(skull == true){
            with(oPlayer){
                if(id != other.player_id){
                    other.smack.can_hit[player] = false;
                }
            }
            smack.can_hit_self = true;
        }
        else{
            smack.can_hit_self = false;
        }
        smack.source = id;
    }
    
}
if(abs(bomb_sp) <= 1.0){
    if(instance_exists(smack)) instance_destroy(smack);
}
smackT++;

spr_dir = dir;
state_timer++
draw_debug_text(x - 30*spr_dir, y - 100, "FUSE: "+string(fuse));
draw_debug_text(x - 30*spr_dir, y - 120, "FUSE: "+string(bomb_sp));
//#endregion

//#region Blink

if(fuse < 240 ){
    if(fuse % 10 == 0){
        blinkT++;
    }
    if(fuse % 40 == 0){
        //sound_play(sound_get("pb_beep"));;
    }
}

if(fuse < 120 && state != 100){
    if(fuse % 5 == 0){
        blinkT++;
    }
    if(fuse % 20 == 0){
        //sound_play(sound_get("pb_beep"));;
    }
}

//#endregion

//#region limit
if(bomb_limit <= 0 && (fuse >60 && fuse < 1000) && state != 100){
    fuse = 2000;
    spawn_hit_fx(x - 0*player_id.spr_dir,y-15,13)
    
}

if(fuse > 1900){
    if(fuse % 8 = 0 ){
        visible = true;
    }
    if(fuse % 8 = 4){
        visible = false
    }
    if(fuse <= 1970 && fuse >= 1800){
        instance_destroy()
        exit;
    }
}

//#endregion

bvsp = vsp;
bhsp = hsp;

fuse--;