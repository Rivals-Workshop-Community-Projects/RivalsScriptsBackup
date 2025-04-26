timer++
if articletype == "Box" {
uses_shader = false;
    if state != "blast"{
    if timer = 1 {sound_play(sound_get("DRAW1"),0,0,1,0.9)}
    depth = -100
if boxradius < boxfinradius {
    boxradius += 1
} else {
if boxactivated < 1 {
    boxactivated += 0.1
} else {
    timer2++
    if timer2 > 50 {
        state = "blast"
        timer2 = 0
        sound_play(sound_get("FLAME_BOMB1"),0,0,2,1)
        with player_id {
        create_hitbox(AT_DSPECIAL,1,other.x,other.y-4)
        }
    }
    if !instance_exists(rightwall){
        rightwall = instance_create(x+boxwidth,y-(boxheight*2),"obj_article_solid");
        rightwall.image_yscale = boxheight
        rightwall.dad = self
        leftwall = instance_create(x-boxwidth,y-(boxheight*2),"obj_article_solid");
        leftwall.image_yscale = boxheight
        leftwall.dad = self
        topwall = instance_create(x-boxwidth,y-(boxheight*2),"obj_article_solid");
        topwall.image_xscale = boxwidth
        topwall.dad = self
        bottomwall = instance_create(x-boxwidth,y,"obj_article_solid");
        bottomwall.image_xscale = boxwidth
        bottomwall.dad = self
    }
}
}


boxwidth = floor(boxradius+(boxwidthoffset*(boxradius/boxfinradius)))
boxheight = floor(boxradius+(boxheightoffset*(boxradius/boxfinradius)))
}
if state = "blast" {
    destroysolids = true;
    timer2++
    
    if ((timer2/3) > 7) {
    instance_destroy()
        
        exit;
    }
}
}

if articletype == "BoxSmall" {
uses_shader = false;
    if state != "blast"{
    if timer = 1 { sound_stop(sound_get("DRAW2")); sound_play(sound_get("DRAW2"),0,0,1,0.9)}
    depth = -100
if boxradius < boxfinradiussmall {
    boxradius += 4
} else {
if boxactivated < 1 {
    boxactivated += 0.25
} else {
        state = "blast"
        timer2 = 0
         sound_stop(sound_get("FLAME_BOMB1"));
        sound_play(sound_get("FLAME_BOMB1"),0,0,2,1)
        with player_id {
            if other.islesser {create_hitbox(AT_BAIR,2,other.x,other.y+2)} else {
        create_hitbox(AT_BAIR,1,other.x,other.y+2)
            }
        }
    
}
}
}
if state = "blast" {
    destroysolids = true;
    timer2++
    
    if ((timer2/3) > 7) {
    instance_destroy()
        
        exit;
    }
}
}

if articletype == "Dodge" {
    if timer > 10 {
        instance_destroy()
        exit;
    }
}
if articletype == "TPSquare" {
    
uses_shader = false;
    if state == "GOTOD" and timer == 2{
        x = d.x
        y = d.y-40
        state = "idle"
    }
    if timer > 30 {
        instance_destroy()
        exit;
    }
}
if articletype == "Magic" {
        if instance_exists(myhitbox) {
            x = myhitbox.x
            y = myhitbox.y
        }
    depth = -100
    sprite_index2 = sprite_get("magicproj")
 if timer < 36 {
     image_index2 = floor(timer/3)
 } else {
     image_index2 = (((timer-36)/3)%4+12)
 }
 if state = "idle"{
    if timer > 12 {
        
        if !instance_exists(myhitbox) {
        with player_id {
       other.myhitbox = create_hitbox(AT_FSPECIAL,1,other.x,other.y)
        }
        }
    }
     if !((player_id.state == PS_ATTACK_AIR or player_id.state == PS_ATTACK_GROUND) and (player_id.attack == AT_FSPECIAL) and player_id.window < 3) {
    if timer < 36 {state = "endpremature"} else {
        state = "launching"
    }
     }
 }
    if state = "endpremature" {
        if instance_exists(myhitbox) {
            instance_destroy(myhitbox)
        }
        timer2++
        image_index2 = 19+(timer/4)
        y = y-2
        if timer2 > 4 {instance_destroy() exit;}
    }
    if state = "launching"{
        timer3++
        if timer3 = 1 {
// --- [ MODIFED ] ------------------------------------------------------ //
// Added 2 variables below used to target the nearest viable oPlayer
// ---------------------------------------------------------------------- //
        // added a team check!
        with oPlayer if ( get_player_team( player ) != get_player_team( other.player_id.player ) ) {
            // added state check (just in case)
            // added the y check (so far, the best solution to the Abyss AI, which resets to above the camera's bounds)
            if self != other.player_id and get_player_stocks(player) != 0 and state != PS_DEAD and y >= 0 {
                // other.launchdir = point_direction(other.x,other.y,x,y-20)
                var distance = distance_to_object( other );
                if distance < other.closest_distance || other.closest_distance == -1 {
                    other.closest_distance = distance;
                    other.closest_player = self;
                }
            }
        }
        if closest_player == noone || !instance_exists( closest_player ) {
            // aim in your facing direction if there's no target or the target id doesn't exist
            launchdir = ( player_id.spr_dir == 1 ? 0 : 180 );
        }
        else{
            // all characters have a handy height value, allowing you to aim center mass
            launchdir = point_direction( x, y, closest_player.x, closest_player.y - closest_player.char_height / 2 );
        }
        hsp = lengthdir_x(8,launchdir)
        vsp = lengthdir_y(8,launchdir)
// --- [ END OF MODIFICATION ] ------------------------------------------ //
// 
// ---------------------------------------------------------------------- //
        }
        if instance_exists(myhitbox) {
            if timer3 = 1 {
            instance_destroy(myhitbox)
        with player_id {
            other.myhitbox = create_hitbox(AT_FSPECIAL,2,other.x,other.y)
        } 
            myhitbox.hsp = hsp 
            myhitbox.vsp = vsp
            }
        //hsp = myhitbox.hsp 
        //vsp = myhitbox.vsp 
        if !myhitbox.free {
            freetimer++
        } else {
            freetimer = 0
        }
        if freetimer > 3 {
            instance_destroy(myhitbox)
            state = "ending"
            
        }
        } else {
            state = "ending"
        }
        
    }
    if state = "ending"{
        hsp = hsp/1.2
        vsp = vsp/1.2
        if instance_exists(myhitbox) {
            instance_destroy(myhitbox)
        }
        
        timer2++
     image_index2 = ((timer2/3)+16)
     if timer2 >= 12 {instance_destroy() exit;}
        
    }
        
    }

