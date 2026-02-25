var ownerID = player_id;
var globalIndex = itemNumber;
var articleID = self;

enum iState{
    held,
    thrown,
    dropped
}


if itemNumber < 10{
    
    var ownerAttacking = (ownerID.state == PS_ATTACK_GROUND || ownerID.state == PS_ATTACK_AIR);
    
    if sodaUses <= 1 && sodaProj <= 0{
        if image_index == 3 image_index = 6;
    }
    switch itemState{
        case iState.held:
            if sodaUses > 1 sodaProj = 3;
            else sodaProj = 0;
            if throwTimer > 1 throwTimer -= 1;
            
            
            
            else if throwTimer == 1 && !hitpause{
                switch(throwType){
                    case 0:
                        with origOwner create_hitbox(AT_EXTRA_3, (globalIndex+1), articleID.x, articleID.y);
                        hsp = lengthdir_x(speed_, throwAngle);
                        vsp = lengthdir_y(speed_, throwAngle);
                        itemState = iState.dropped;
                    break;
                    case 1:
                        itemState = iState.dropped;
                        hsp = ownerID.hsp;
                        vsp = ownerID.vsp;
                    break;
                }
                if sodaUses > 0 sodaUses -= 1;
            }
            if instance_exists(assignedHitbox) instance_destroy(assignedHitbox);
            
            var validAttack = (
                ownerID.attack == AT_JAB
                || ownerID.attack == AT_FTILT
                || ownerID.attack == AT_UTILT
                || ownerID.attack == AT_DTILT
                || ownerID.attack == AT_UAIR
                || ownerID.attack == AT_DAIR
                || ownerID.attack == AT_FAIR
                || ownerID.attack == AT_NAIR
                || ownerID.attack == AT_BAIR
                || ownerID.attack == AT_DATTACK
            ); // All the attacks that can be used to throw the item
            
            var dropStates = (
                ownerID.state == PS_ROLL_BACKWARD
                || ownerID.state == PS_ROLL_FORWARD
                || ownerID.state == PS_TECH_BACKWARD
                || ownerID.state == PS_TECH_FORWARD
                || ownerID.state == PS_TECH_GROUND
                || ownerID.state == PS_DEAD
                || ownerID.state == PS_RESPAWN
            ); // All the states in which the item should be dropped if held
            
            var manualDrop = (
                ownerID.taunt_pressed
            ); // Manual drop with shield;
            
            var Xpos = ownerID.x+(24*ownerID.spr_dir);
            var Ypos = ownerID.y-36;
            
            x = Xpos;
            y = Ypos;
            
            if manualDrop && !hitpause{
                throwType = 1;
                throwTimer = 6;
                clear_button_buffer(PC_TAUNT_PRESSED);
                if ownerID.attack == AT_TAUNT || ownerID.attack == AT_TAUNT_2 ownerID.state = PS_IDLE;
            }
            
            if ownerAttacking{
                if validAttack{
                    var angle = 0;
                    if ownerID.attack == AT_JAB angle = 55;
                    if ownerID.attack == AT_FTILT angle = 0;
                    if ownerID.attack == AT_UTILT angle = 90;
                    if ownerID.attack == AT_DTILT angle = 320;
                    if ownerID.attack == AT_UAIR angle =  90;
                    if ownerID.attack == AT_DAIR angle = 270;
                    if ownerID.attack == AT_FAIR angle = 10;
                    if ownerID.attack == AT_NAIR angle = 55;
                    if ownerID.attack == AT_BAIR angle = 170;
                    if ownerID.attack == AT_DATTACK angle = 20;
                    if ownerID.spr_dir == - 1 angle = 180 - angle;
                    throwAngle = angle;
                    throwTimer = 6;
                    with ownerID{
                        clear_button_buffer(PC_ATTACK_PRESSED);
                        clear_button_buffer(PC_RIGHT_STICK_PRESSED);
                        clear_button_buffer(PC_UP_STICK_PRESSED);
                        clear_button_buffer(PC_LEFT_STICK_PRESSED);
                        clear_button_buffer(PC_DOWN_STICK_PRESSED);
                        
                    }
                    ownerID.attack = AT_NSPECIAL;
                    ownerID.window = 3;
                    ownerID.window_timer = 0;
                    sound_play(asset_get("sfx_swipe_weak1"), false, noone, 1, 1);
                    throwType = 0;
                }
                
                if (ownerID.attack == AT_NSPECIAL && (ownerID.window_timer < 5 && ownerID.window == 1)){
                    itemState = iState.dropped;
                    hsp = 2*ownerID.spr_dir;
                    vsp = -2;
                }
            }
            
            if dropStates && !hitpause{
                itemState = iState.dropped;
                hsp = ownerID.hsp;
                vsp = ownerID.vsp;
            }
            
        break;
        case iState.thrown:
            hsp = speed_*ownerID.spr_dir;
            vsp = -5;
            itemState = iState.dropped;
        break;
        case iState.dropped:
            rotationAnimation += -hsp*2;
            throwTimer = 0;
            if !destroyOnWall{
                if (!free || hit_wall){
                    if instance_exists(assignedHitbox){
                        if assignedHitbox.hbox_num != 3 assignedHitbox.hitLocked = 0;
                        else if hit_wall assignedHitbox.hitLocked = 0;
                    }
                }
            }
            else{
                var hitboxHit = false;
                if instance_exists(assignedHitbox) if assignedHitbox.has_hit hitboxHit = true;
                if(!free || hit_wall) || hitboxHit{
                    with assignedHitbox{
                        spawn_hit_fx(x, y, player_id.itemDestroyEffect[globalIndex]);
        				switch (hbox_num){
        				    case 2:
        				        create_hitbox(AT_EXTRA_3, 8, floor(x), floor(y));
        				        sound_play(sound_get("IonExplosion"), false, noone, 0.8, 1);
        				    break;
        				    case 5:
        				        sound_play(asset_get("sfx_waveland_zet"), false, noone, 0.3, 1.2);
        				        spawn_hit_fx(x, y, ownerID.itemDestroyEffect[globalIndex]);
        				    break;
        				}
        				instance_destroy(self);
        				instance_destroy(articleID);
                    }
                }
            }
    
            if free{
                vsp = min(vsp+gravity_, gravityMax);
                if !hit_wall saveSpeed = [hsp, vsp]; // Save the HSP and VSP before bouncing;
                playSound = true;
            }
            else{
                if !hit_wall groundSaveSpeed = [hsp, vsp];
                if playSound{
                    sound_play(sound_get("item_bounce"), false, noone, 4, 1);
                    playSound = false;
                }
                if abs(saveSpeed[1]) >= stopThreshold vsp = -(saveSpeed[1]*bounciness_);
                hsp = (hsp*slide_);
                if abs(vsp) <= stopThreshold vsp = 0;
                if abs(hsp) < 0.04 hsp = 0;
            }
            
            if hit_wall{
                if abs(saveSpeed[1]) >= stopThreshold  vsp = (vsp*bounciness_);
                if free hsp = -(saveSpeed[0]*slide_);
                else hsp = -(groundSaveSpeed[0]*slide_);
            }
            
            var speedThreshold = 0;
            var curSpeed = max(abs(hsp), abs(vsp));
            if !instance_exists(assignedHitbox){
                if curSpeed > speedThreshold{
                    with origOwner create_hitbox(AT_EXTRA_3, (globalIndex+1), articleID.x, articleID.y);
                }
            }
            else{
                with assignedHitbox{
                    player_id = ownerID;
                    player = ownerID.player;
                    x = articleID.x+articleID.hsp;
                    y = articleID.y+articleID.vsp;
                }
                if curSpeed <= speedThreshold instance_destroy(assignedHitbox);
            }
            switch(globalIndex){
                case 0:
                break;
                case 1:
                break;
                case 2:
                break;
                case 3:
                    var dir = sign(hsp);
                    with ownerID set_hitbox_value(AT_EXTRA_3, 6, HG_PROJECTILE_HSPEED, random_func(0, 16, true)*dir);
                    with ownerID set_hitbox_value(AT_EXTRA_3, 6, HG_PROJECTILE_VSPEED, (random_func(0, 3, true)+5)*-1);
                    if !free && sodaProj > 0 && sodaUses > 0{
                        sodaProj -= 1;
                        create_hitbox(AT_EXTRA_3, 6, x, y-10);
                    }
                break;
                case 4:
                break;
                case 5:
                break;
            }
        break;
    }
}
else{
    
    var ownerDistance = point_distance(ownerID.x, ownerID.y, x, y);
    var healAmount = 12;
    
    switch(itemNumber){
        case 10:
            if ownerDistance < 50{
                with ownerID{
                    sound_play(sound_get("snd_powerup"), false, noone, 0.5, 1);
                    grabFlash = 10;
                }
                take_damage(ownerID.player, ownerID.player, max(-get_player_damage(ownerID.player), -healAmount));
                instance_destroy(self);
            }
        break;
        case 11:
            if ownerDistance < 50{
                with ownerID{
                    sound_play(sound_get("snd_powerup"), false, noone, 0.5, 1);
                    grabFlash = 10;
                    azulaArmor += 8;
                }
                instance_destroy(self);
            }
        break;
    }
    
    
}



var inBlastzone = (get_stage_data(SD_LEFT_BLASTZONE_X) > x || get_stage_data(SD_RIGHT_BLASTZONE_X) < x || get_stage_data(SD_BOTTOM_BLASTZONE_Y) < y);
if inBlastzone || maxHits <= 0{
    spawn_hit_fx(x, y, ownerID.itemDestroyEffect[globalIndex]);
    if instance_exists(assignedHitbox) instance_destroy(assignedHitbox);
    instance_destroy(self);
}
