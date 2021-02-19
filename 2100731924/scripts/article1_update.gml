// batit update

if(hitstop < 0){
    hitstop = 0;
}

if(hitstop == 0){
    if(inHitstop){
        inHitstop = 0;
        hsp = old_hsp;
        vsp = old_vsp;
        if(preserveHitboxes){
            preserveHitboxes = false;
        } else {
            sprite_index = histunPrevSprite;
        }
    }

    switch(state) {
        case 0: //idle
            checkForTaunt();
            checkForNudge();
            checkForDamage();
            checkForBomb();
            if(state_timer == 1) sprite_index = sprite[0];
            image_index = floor(state_timer/8);
            if (player_id.attack == AT_FSPECIAL){
                with pHitBox {
                    if(orig_player == other.player_id.player && attack == AT_FSPECIAL && hbox_num == 1) {
                        if (place_meeting(x, y, other)){
                            player_id.pickUpBatit = true;
                            player_id.batitToPickUp = other;
                        }
                    }
                }
            }
            break;
        case 1: // ftilt/fair/bair attack
            checkForTaunt();
            checkForNudge();
            checkForDamage();
            checkForBomb();
            if(state_timer == 1){
                sprite_index = sprite[1];
                changeDir(attackDir);
            }
            if(state_timer < 16){
                image_index = floor(state_timer/8);
                if(state_timer == 15){
                    sound_play(asset_get("sfx_kragg_throw"));
                }
            } else if (state_timer < 19){
                image_index = 2;
            } else {
                image_index = floor((state_timer-19)/20) + 3;
            }
            if(state_timer == 16){
                if(player_id.runeO){
                    var ftiltHitboxOne = create_hitbox(AT_FTILT, 1, round(x+10*attackDir), round(y-15));
                    ftiltHitboxOne.fx_particles = 1;
                    ftiltHitboxOne.spr_dir = attackDir;
                    ftiltHitboxOne.hsp *= attackDir*player_id.spr_dir;
                    var ftiltHitboxTwo = create_hitbox(AT_FTILT, 1, round(x+10*attackDir), round(y-35));
                    ftiltHitboxTwo.fx_particles = 1;
                    ftiltHitboxTwo.spr_dir = attackDir;
                    ftiltHitboxTwo.hsp *= attackDir*player_id.spr_dir;
                } else{
                    var ftiltHitbox = create_hitbox(AT_FTILT, 1, round(x+10*attackDir), round(y-25));
                    ftiltHitbox.fx_particles = 1;
                    ftiltHitbox.spr_dir = attackDir;
                    ftiltHitbox.hsp *= attackDir*player_id.spr_dir;
                }
            } else if (state_timer == 59){
                changeState(0);
            }
            break;
        case 3: // nudge
            checkForTaunt();
            checkForNudge();
            checkForBomb();
            if(state_timer == 1){
                if(hsp < 0)
                    changeDir(-1);
                else if (hsp > 0)
                    changeDir(1);
                bumpBox = create_hitbox(AT_DTILT, 2, round(x), round(y-20));
                bumpBox.spr_dir = player_id.spr_dir;
                bumpBox.damage = nudgeDamage/2;
                bumpBox.kb_angle = radtodeg(nudgeAngle);
                bumpBox.kb_value = nudgeBaseKnockback/2;
                bumpBox.kb_scale = nudgeKnockbackScaling/2;
                nudgeBounced = false;
            } else if((hsp != 0 || free || nudgePrevVsp != 0) && instance_exists(bumpBox)){
                bumpBox.x = x + hsp;
                bumpBox.y = y + bumpBox.y_pos + vsp;
                bumpBox.length += 1;
            } else {
                if(instance_exists(bumpBox)){
                    bumpBox.length = 0;
                }
                bumpBox = noone;
                changeState(0);
            }
            if(free){
                if(abs(hsp) < 2){
                    if(vsp < 0 && !nudgeBounced){
                        sprite_index = nudgeUpSprite;
                        image_index = floor(state_timer/3) % 3;
                    } else {
                        sprite_index = nudgeUpFallSprite;
                        image_index  = 0;
                    }
                } else {
                    sprite_index = sprite[3];
                    if(free){
                        image_index = floor(state_timer/3) % 3;
                    } else{
                        image_index  = 3;
                    }
                }
            } else {
                if(instance_exists(bumpBox)){
                    bumpBox.length = 0;
                }
                bumpBox = noone;
                if(nudgePrevVsp > 6){
                    vsp = -nudgePrevVsp/3;
                    nudgeBounced = true;
                } else if (nudgePrevVsp < 0){
                    vsp = nudgePrevVsp+player_id.gravity_speed + min(player_id.air_friction, -vsp);
                }
            }
            nudgePrevVsp = vsp;
            break;
        case 4: //spawn
            checkForDamage();
            if(state_timer == 1) sprite_index = sprite[4];
            else if(state_timer == 38) changeState(0);
            else image_index = floor(state_timer/8);
            break;
        case 5: //killed
            if(state_timer == 1) sprite_index = sprite[5];
            if(image_index < 5) image_index = floor(state_timer)/12;
            if(state_timer > 70) changeState(2);
            break;
        case 6: //knockback
            checkForTaunt();
            checkForNudge();
            if(state_timer == 1){
                sprite_index = sprite[6];
                image_index = 0;
                hsp = lengthdir_x(knockBackPower, knockBackAngle);
                vsp = lengthdir_y(knockBackPower, knockBackAngle);
                old_hsp = hsp;
                old_vsp = vsp;
                if(hsp < 0) spr_dir = -1;
                else if(hsp > 0) spr_dir = 1;
            }
            checkForDamage();
            checkForBomb();
            hitstun--;
            if(hitstun <= 0){
                changeState(0);
            }
            break;
        case 7: // utilt/uair attack
            checkForTaunt();
            checkForNudge();
            checkForDamage();
            checkForBomb();
            if(state_timer == 1){
                sprite_index = sprite[7];
            }
            if(state_timer < 16){
                image_index = floor(state_timer/8);
                if(state_timer == 15){
                    sound_play(asset_get("sfx_kragg_throw"));
                }
            } else if (state_timer < 19){
                image_index = 2;
            } else {
                image_index = floor((state_timer - 19)/20) + 3;
            }
            if(state_timer == 16){
                if(player_id.runeO){
                    create_hitbox(AT_UTILT, 2, round(x+10), round(y-49)).fx_particles = 1;
                    create_hitbox(AT_UTILT, 2, round(x-10), round(y-49)).fx_particles = 1;
                } else{
                    create_hitbox(AT_UTILT, 2, round(x), round(y-49)).fx_particles = 1;
                }
            } else if (state_timer == 59){
                changeState(0);
            }
            break;
        case 8: // exploding attack
            if(state_timer == 1){
                sprite_index = sprite[8];
                if(skipFirstExplodeWindow){
                    changeWindow(1);
                } else{
                    changeWindow(0);
                    window0Length = 12;
                }
                window1Length = 12;
                window2Length = 6;
                window3Length = 30;
            }
            if(window == 0){
                if(window_timer == window0Length){
                    changeWindow(1);
                }
                checkForNudge();
                image_index = floor(window_timer/(window0Length/2));
            }
            if(window == 1){
                if(window_timer == window1Length){
                    if(player_id.special_down && numFramesExplosionDelayed < MAX_EXPLOSION_DELAY_FRAMES){
                        window_timer--;
                        numFramesExplosionDelayed++;
                    } else{
                        changeWindow(2);
                    }
                }
                checkForNudge();
                image_index = 2 + floor(window_timer/(window1Length/2));
            }
            if(window == 2){
                if(window_timer == window2Length){
                    changeWindow(3);
                }
                checkForNudge();
                image_index = 4;
            }
            if(window == 3){
                hsp = 0;
                vsp = 0;
                free = false;
                if(window_timer == 0){
                    sound_play(explode);
                    var bombHitboxEarly = create_hitbox(AT_DSPECIAL_AIR, 2, round(x+2*spr_dir), round(y-36));
                    bombHitboxEarly.damage *= 1 - numFramesExplosionDelayed/(MAX_EXPLOSION_DELAY_FRAMES*2);
                    bombHitboxEarly.kb_value *= 1 - numFramesExplosionDelayed/(MAX_EXPLOSION_DELAY_FRAMES*2);
                    bombHitboxEarly.kb_scale *= 1 - numFramesExplosionDelayed/(MAX_EXPLOSION_DELAY_FRAMES*2);
                    bombHitboxEarly.hbox_group = 3;
                } else if(window_timer == 12){
                    var bombHitboxLate = create_hitbox(AT_DSPECIAL_AIR, 3, round(x+2*spr_dir), round(y-24));
                    bombHitboxLate.damage *= 1 - numFramesExplosionDelayed/(MAX_EXPLOSION_DELAY_FRAMES*2);
                    bombHitboxLate.kb_value *= 1 - numFramesExplosionDelayed/(MAX_EXPLOSION_DELAY_FRAMES*2);
                    bombHitboxLate.kb_scale *= 1 - numFramesExplosionDelayed/(MAX_EXPLOSION_DELAY_FRAMES*2);
                    bombHitboxLate.hbox_group = 3;
                }
                image_index = 5 + floor(window_timer/(window3Length/5));
            }
            if(image_index > 9){
                player_id.batitDied = true;
                changeState(2);
            }
            window_timer++;
            break;
        case 9: //nspecial attack
            checkForTaunt();
            checkForNudge();
            checkForDamage();
            checkForBomb();
            image_index = floor(state_timer/6);
            if(state_timer == 0){
                sprite_index = sprite[9];
                showNspecialCooldown = true;
            } else if(state_timer == 37 || state_timer == 49){
                if(player_id.runeO){
                    var nspecialHitboxOne = create_hitbox(AT_NSPECIAL, 1, round(x+(9-5)*spr_dir), round(y-30));
                    nspecialHitboxOne.fx_particles = 1;
                    nspecialHitboxOne.spr_dir = spr_dir;
                    var nspecialHitboxTwo = create_hitbox(AT_NSPECIAL, 1, round(x+(9+5)*spr_dir), round(y-20));
                    nspecialHitboxTwo.fx_particles = 1;
                    nspecialHitboxTwo.spr_dir = spr_dir;
                } else{
                    var nspecialHitbox = create_hitbox(AT_NSPECIAL, 1, round(x+9*spr_dir), round(y-25));
                    nspecialHitbox.fx_particles = 1;
                    nspecialHitbox.spr_dir = spr_dir;
                }
                sound_play(asset_get("sfx_rag_plant_shoot"));
            } else if(image_index > 10){
                changeState(0);
            }
            break;
        case 10: //fstrong
            checkForTaunt();
            checkForNudge();
            checkForDamage();
            checkForBomb();
            if(state_timer == 0){
                sprite_index = sprite[10];
                changeWindow(0);
                window0Length = 15;
                window1Length = 2;
                window2Length = 17;
                strongCharge = 0;
                changeDir(attackDir);
            }
            if(window == 0){
                if(window_timer >= window0Length){
                    if(window_timer % 10 == 0){
                        sprite_index = sprite[10];
                        image_index = 2;
                    } else if(window_timer % 10 == 5){
                        sprite_index = fstrongChargeSprite;
                        image_index = 0;
                    }
                    if((player_id.strong_down || player_id.right_strong_down || player_id.left_strong_down || player_id.down_strong_down || player_id.up_strong_down) && strongCharge < 61){
                        strongCharge++;
                    } else {
                        sprite_index = sprite[10];
                        image_index = 2;
                        sound_play(asset_get("sfx_swipe_heavy1"));
                        changeWindow(1);
                    }
                } else {
                    image_index = floor(window_timer/(window0Length/3));
                }
            } else if (window == 1){
                if(window_timer == 1){
                    mehBox = create_hitbox(AT_FSTRONG, 3, round(x+20*spr_dir), round(y-21));
                    mehBox.damage *= 1 + strongCharge/120;
                    mehBox.fx_particles = 2;
                    sweetBox = create_hitbox(AT_FSTRONG, 4, round(x+55*spr_dir), round(y-20));
                    sweetBox.damage *= 1 + strongCharge/120;
                    sweetBox.fx_particles = 1;
                    if(player_id.runeM){
                        sweetBox.hbox_group = 2;
                        mehBox.hbox_group = 2;
                        with pHitBox {
                            if(id != other.sweetBox && attack == other.sweetBox.attack && orig_player == other.sweetBox.orig_player && hbox_num == other.sweetBox.hbox_num && hbox_group == other.sweetBox.hbox_group){
                                other.sweetBox.hbox_group = 5;
                                other.mehBox.hbox_group = 5;
                                break;
                            }
                        }
                    } else{
                        sweetBox.hbox_group = 2;
                        mehBox.hbox_group = 2;
                    }
                } else if(window_timer == window1Length) changeWindow(2);
                mehBox.x = x+20*spr_dir + hsp;
                mehBox.y = y-21 + vsp;
                sweetBox.x = x+55*spr_dir + hsp;
                sweetBox.y = y-20 + vsp;
                image_index = 3;
            } else {
                image_index = 4;
                if(window_timer == window2Length) changeState(0);
            } 
            window_timer++;
            break;
        case 11: //ustrong
            checkForTaunt();
            checkForNudge();
            checkForDamage();
            checkForBomb();
            if(state_timer == 0){
                sprite_index = sprite[11];
                changeWindow(0);
                window0Length = 13;
                window1Length = 5;
                window2Length = 5;
                strongCharge = 0;
            }
            if(window == 0){
                if(window_timer >= window0Length){
                    if(window_timer % 10 == 0){
                        sprite_index = sprite[11];
                        image_index = 2;
                    } else if(window_timer % 10 == 5){
                        sprite_index = ustrongChargeSprite;
                        image_index = 0;
                    }
                    if((player_id.strong_down || player_id.right_strong_down || player_id.left_strong_down || player_id.down_strong_down || player_id.up_strong_down) && strongCharge < 61){
                        strongCharge++;
                    } else {
                        sprite_index = sprite[11];
                        image_index = 2;
                        changeWindow(1);
                    }
                } else {
                    image_index = floor(window_timer/(window0Length/3));
                }
            } else if (window == 1){
                image_index = floor(window_timer/(window1Length/2)) + 3;
                if(window_timer == 2){
                    sound_play(asset_get("sfx_swipe_heavy2"));
                } else if(window_timer == 3){
                    attackBox = create_hitbox(AT_USTRONG, 2, round(x+1*spr_dir), round(y-37));
                    attackBox.damage *= 1 + strongCharge/120;
                    attackBox.fx_particles = 2;
                } else if(window_timer == window1Length){
                    changeWindow(2);
                }
                if(window_timer >= 3){
                    attackBox.x = x+1*spr_dir + hsp;
                    attackBox.y = y-37 + vsp;
                }
            } else {
                image_index = 5;
                if(window_timer == window2Length) changeState(0);
            }
            window_timer++;
            break;
        case 12: // taunt
            checkForNudge();
            checkForDamage();
            checkForBomb();
            if(state_timer == 1){
                sprite_index = sprite[12];
            }
            image_index = floor(state_timer/6);
            if(!(player_id.state == PS_ATTACK_GROUND && player_id.attack == AT_TAUNT_2)){
                changeState(0);
            }
            break;
    }

    histunPrevSprite = sprite_index;
} else {
    inHitstop = true;
    checkForNudge();
    checkForDamage();
    checkForBomb();
    if(preserveHitboxes){
        if(instance_exists(mehBox)){
            mehBox.length++;
        }
        if(instance_exists(sweetBox)){
            sweetBox.length++;
        }
        if(instance_exists(attackBox)){
            attackBox.length++;
        }
    } else {
        sprite_index = sprite[6];
    }
}

if(hitstop == 0){
    state_timer++;
}
article_timer++;
depth = player_id.depth - 1;
can_be_grounded = true;
ignores_walls = false;
if (free && vsp > 0){ // this code is to prevent Batit from falling through platforms
    var platformCollidedWith = collision_rectangle(x-4+hsp,y-1+vsp,x+5+hsp,y+1+vsp,asset_get("par_jumpthrough"),false, true);
    var currentPlatformCollededWith = collision_rectangle(x-4+hsp,y-1,x+5+hsp,y+1,asset_get("par_jumpthrough"),false, true);
    if(platformCollidedWith != noone && platformCollidedWith != currentPlatformCollededWith){
        free = false;
        vsp = 0;
        while(!place_meeting(x+hsp, y+1, platformCollidedWith)){
            y++;
        }
    }
}
if(free){
    if(state == 6){
        vsp += player_id.hitstun_grav;
    } else{
        vsp += player_id.gravity_speed;
    }
    if(vsp > 0)
        vsp -= min(player_id.air_friction, vsp);
    else if(vsp < 0)
        vsp += min(player_id.air_friction, -vsp);
    if(hsp > 0)
        hsp -= min(player_id.air_friction, hsp);
    else if(hsp < 0)
        hsp += min(player_id.air_friction, -hsp);
} else {
    if(hsp > 0)
        hsp -= min(player_id.ground_friction, hsp);
    else if(hsp < 0)
        hsp += min(player_id.ground_friction, -hsp);
}
if(y > room_height || y < 0 || x < 0 || x > room_width){
    player_id.batitFell = true;
    changeState(2);
}
if(player_id.runeH){
    batitHealth = 50;
}

// hitbox group stuff
var currentHitboxes; // with hit box groups that aren't -1
var numCurrentHitboxes = 0;
with pHitBox{
    if(hbox_group > -1){
        currentHitboxes[numCurrentHitboxes++] = id;
    }
}
with oPlayer {
    if(array_length(other.batitHitboxesReset) <= player + (clone ? 10 : 0)){
        other.batitHitboxesReset[player + (clone ? 10 : 0)] = false;
    }
    if(array_length(other.hGroupCheck) <= player + (clone ? 10 : 0)){
        other.hGroupCheck[player + (clone ? 10 : 0), 0] = 0;
    }
    if ((state != PS_ATTACK_AIR && state != PS_ATTACK_GROUND) || other.batitHitboxesReset[player + (clone ? 10 : 0)]) {
        if(!other.batitHitboxesReset[player + (clone ? 10 : 0)]){
            other.batitHitboxesReset[player + (clone ? 10 : 0)] = true;
            for (var i = array_length(other.hGroupCheck[player + (clone ? 10 : 0)])-1; i >= 0; i--) {
                if(other.hGroupCheck[player + (clone ? 10 : 0), i]){
                    var resetHitboxFlag = true;
                    for(var j = 0; j < numCurrentHitboxes; j++){
                        if(currentHitboxes[j].player + (currentHitboxes[j].player_id.clone ? 10 : 0) == player + (clone ? 10 : 0)){
                            if(currentHitboxes[j].hbox_group == i){
                                resetHitboxFlag = false;
                            }
                        }
                    }
                    if(resetHitboxFlag){
                        other.hGroupCheck[player + (clone ? 10 : 0), i] = 0;
                    } else {
                        other.batitHitboxesReset[player + (clone ? 10 : 0)] = false;
                    }
                }
            }
        }
    } else {
        other.batitHitboxesReset[player + (clone ? 10 : 0)] = false;
    }
}
//hitbox cleanup
if(ds_list_size(attacksFaced) && !instance_exists(ds_list_find_value(attacksFaced, 0))){
    ds_list_delete(attacksFaced, 0);
    numDamages--;
    for(var i = 0; i < ds_list_size(attacksFaced); i++){
        if(!instance_exists(ds_list_find_value(attacksFaced, i))){
            ds_list_delete(attacksFaced, i);
            numDamages--;
            i--;
        }
    }
}
//lockout reduction
for(var i = 0; i < array_length(playerLockout); i++){
    if(playerLockout[i] > 0){
        playerLockout[i]--;
    } else if(playerLockout[i] < 0){
        playerLockout[i] = 0;
    }
}

if(state == 2){ //despawn
    if(player_id.runeM){
        var newBatitArticleArray;
        for(var i = 0; i < array_length(player_id.batitArticle); i++){
            if(player_id.batitArticle[i] != id){
                newBatitArticleArray[0] = player_id.batitArticle[i];
            }
        }
        player_id.batitArticle = newBatitArticleArray;
        player_id.batitPlaced = array_length(newBatitArticleArray) > 0;
    } else{
        player_id.batitPlaced = false;
    }
    ds_list_destroy(attacksFaced);
    instance_destroy();
    exit;
}

#define changeState(newState)
state = newState;
state_timer = 0;

#define changeWindow(newWindow)
window = newWindow;
window_timer = 0;

#define changeDir(newDir)
if(newDir != spr_dir){
    x -= 2*newDir;
    spr_dir = newDir;
}

#define checkForDamage()
if(batitHealth < 1){
    player_id.batitDied = true;
    if(state != 6) changeState(5);
} else {
    var previousNumDamages = numDamages;
    with pHitBox{
        if(array_length(other.hGroupCheck) <= player + (player_id.clone ? 10 : 0)){
            other.hGroupCheck[player + (player_id.clone ? 10 : 0), 0] = 0;
        }
        if(array_length(other.hGroupCheck[player + (player_id.clone ? 10 : 0)]) <= hbox_group){
            other.hGroupCheck[player + (player_id.clone ? 10 : 0), hbox_group] = 0;
        }
        if(array_length(other.playerLockout) <= player + (player_id.clone ? 10 : 0)){
            other.playerLockout[player + (player_id.clone ? 10 : 0)] = 0;
        }
        if(hit_priority > 0 && other.player_id.player != player && other.playerLockout[player + (player_id.clone ? 10 : 0)] <= 0 && (hbox_group == -1 || other.hGroupCheck[player + (player_id.clone ? 10 : 0), hbox_group] != 1)){
            if((hbox_group != -1 || ds_list_find_index(other.attacksFaced, id) == -1) && place_meeting(x, y, other)){
                ds_list_add(other.attacksFaced, id);
                other.numDamages++;
            }
        }
    }
    if(previousNumDamages < numDamages){
        var attackFacing = noone;
        for(var i = previousNumDamages; i < numDamages; i++){
            if(!instance_exists(attackFacing) || ds_list_find_value(attacksFaced, i).hit_priority > attackFacing.hit_priority){
                attackFacing = ds_list_find_value(attacksFaced, i);
            } else if (!(attackFacing.player == ds_list_find_value(attacksFaced, i).player && attackFacing.attack == ds_list_find_value(attacksFaced, i).attack && attackFacing.hbox_group == ds_list_find_value(attacksFaced, i).hbox_group)){
                ds_list_set(attacksFaced, i, noone);
            }
        }
        var chargeAttack = false;
        with attackFacing.player_id {
            if(get_attack_value(attackFacing.attack, AG_STRONG_CHARGE_WINDOW)){
                chargeAttack = true;
            }
        }
        batitHealth -= min(round(attackFacing.damage*(1 + (chargeAttack ? attackFacing.player_id.strong_charge/120 : 0))), batitHealth);
        with attackFacing{
            sound_play(sound_effect);
            spawn_hit_fx(round(other.x), round(other.y-20), hit_effect);
            if(type == 1){
                player_id.has_hit = true;
                player_id.has_hit_player_article = true;
            }
            player_id.hit_player_article_gml = true;
            player_id.hit_player_article_obj = other;
            player_id.my_hitboxID_player_article = attackFacing;
            if(type == 2){
                if(enemies == 0){
                    length = 0;
                }
            }
        }
        knockBackAngle = get_hitbox_angle(attackFacing);
        knockBackPower = (attackFacing.kb_value + attackFacing.kb_scale*(50-batitHealth)*.12)*(player_id.runeC ? 0.7 : 1);
        hitstop = max(round(attackFacing.hitpause + attackFacing.extra_hitpause + attackFacing.hitpause_growth*(50-batitHealth)*.05), 0);
        if(attackFacing.type == 1){
            attackFacing.player_id.old_hsp = attackFacing.player_id.hsp;
            attackFacing.player_id.old_vsp = attackFacing.player_id.vsp;
            attackFacing.player_id.hitpause = true;
            attackFacing.player_id.hitstop_full = max(round(attackFacing.hitpause + attackFacing.hitpause_growth*(50-batitHealth)*.05), 0);
            attackFacing.player_id.hitstop = attackFacing.player_id.hitstop_full;
        }
        preserveHitboxes = false;
        playerLockout[attackFacing.player + (attackFacing.player_id.clone ? 10 : 0)] = max(round(attackFacing.no_other_hit+2), 0);
        var hitstunFactor;
        if(attackFacing.hitstun_factor < 0){
            hitstunFactor = 0;
        } else if(attackFacing.hitstun_factor == 0){
            hitstunFactor = 1;
        } else {
            hitstunFactor = attackFacing.hitstun_factor;
        }
        hitstun = round((attackFacing.kb_value*4 + (50-batitHealth)*0.12*attackFacing.kb_scale*4*0.65)*hitstunFactor);
        if(attackFacing.hbox_group != -1){
            hGroupCheck[attackFacing.player + (attackFacing.player_id.clone ? 10 : 0), attackFacing.hbox_group] = 1;
            batitHitboxesReset[attackFacing.player + (attackFacing.player_id.clone ? 10 : 0)] = false;
        }
        if(hitstun > 0){
            changeState(6);
        }
    }
}

#define checkForBomb()
with pHitBox {
    if(player == other.player_id.player) {
        if (attack == AT_DSPECIAL_AIR && hbox_num == 1){
            if(!destroyed && place_meeting(x, y, other)){
                other.explode = sound_effect;
                if(y > other.y - 30){
                    other.skipFirstExplodeWindow = true;
                }
                instance_destroy(id);
            }
        }
    }
}
if(explode){
    hitstop = 0;
    changeState(8);
}

#define checkForNudge()
if(player_id.autoNudge ? !player_id.shield_down : player_id.shield_down){
    with pHitBox {
        if(array_length(other.hGroupCheck) <= player + (player_id.clone ? 10 : 0)){
            other.hGroupCheck[player + (player_id.clone ? 10 : 0), 0] = 0;
        }
        if(array_length(other.hGroupCheck[player + (player_id.clone ? 10 : 0)]) <= hbox_group){
            other.hGroupCheck[player + (player_id.clone ? 10 : 0), hbox_group] = 0;
        }
        if(player == other.player_id.player && id != other.nudgeHitboxID && (hbox_group == -1 || other.hGroupCheck[player + (player_id.clone ? 10 : 0), hbox_group] != 1)) {
            if(attack != AT_TAUNT_2 && (type != 2 || (attack == AT_DSPECIAL_AIR && hbox_num == 4)) && attack != AT_FSPECIAL){
                if((!instance_exists(other.nudgeHitboxID) || (other.nudgeHitboxID.hit_priority < hit_priority && other.hitByDTilt)) && place_meeting(x, y, other)){
                    other.nudgeHitboxID = id;
                    other.hitByDTilt = true;
                    other.nudgeAttack = attack;
                    if(attack == AT_DSTRONG || attack == AT_USTRONG_2 || attack == AT_FSTRONG_2){
                        other.nudgeDamage = damage*(1 + player_id.strong_charge/120);
                    } else {
                        other.nudgeDamage = damage;
                    }
                    other.nudgeBaseKnockback = kb_value;
                    other.nudgeKnockbackScaling = kb_scale;
                }
            }
        }
    }
    if(hitByDTilt){
        nudgeAngle = degtorad(get_hitbox_angle(nudgeHitboxID));
        if(nudgeHitboxID.hbox_group != -1){
            hGroupCheck[nudgeHitboxID.player + (nudgeHitboxID.player_id.clone ? 10 : 0), nudgeHitboxID.hbox_group] = 1;
            batitHitboxesReset[nudgeHitboxID.player + (nudgeHitboxID.player_id.clone ? 10 : 0)] = false;
        }
        with nudgeHitboxID {
            sound_play(sound_effect);
            spawn_hit_fx(round(other.x), round(other.y-20), hit_effect);
        }
        hitstop = max(round(nudgeHitboxID.hitpause + nudgeHitboxID.extra_hitpause + nudgeHitboxID.hitpause_growth*(50-batitHealth)*.05), 0);
        nudgeHitboxID.player_id.old_hsp = nudgeHitboxID.player_id.hsp;
        nudgeHitboxID.player_id.old_vsp = nudgeHitboxID.player_id.vsp;
        nudgeHitboxID.player_id.hitpause = true;
        nudgeHitboxID.player_id.hitstop_full = max(round(nudgeHitboxID.hitpause + nudgeHitboxID.hitpause_growth*(50-batitHealth)*.05), 0);
        nudgeHitboxID.player_id.hitstop = nudgeHitboxID.player_id.hitstop_full;
        if(nudgeHitboxID.type == 1){
            nudgeHitboxID.player_id.has_hit = true;
        }
        preserveHitboxes = true;
        switch(nudgeAttack){
            case AT_DTILT:
                hsp = nudgeDamage*cos(nudgeAngle);
                vsp = -2.5*nudgeDamage*sin(nudgeAngle);
                break;
            case AT_DSPECIAL_2:
                vsp = -1.5*nudgeDamage;
                break;
            case AT_DAIR:
                vsp = -1.5*nudgeDamage*sin(nudgeAngle);
                break;
            case AT_NAIR:
                hsp = 2*nudgeDamage*cos(nudgeAngle);
                vsp = -2*nudgeDamage*sin(nudgeAngle);
                break;
            case AT_DSTRONG:
            case AT_USTRONG_2:
            case AT_FSTRONG_2:
                hsp = nudgeDamage*cos(nudgeAngle);
                vsp = -nudgeDamage*sin(nudgeAngle);
                break;
            case AT_UAIR:
                hsp = 1.6*nudgeBaseKnockback*cos(nudgeAngle);
                vsp = -1.6*nudgeBaseKnockback*sin(nudgeAngle);
                break;
            case AT_UTILT:
                hsp = 2*nudgeDamage*cos(nudgeAngle);
                vsp = -2*nudgeDamage*sin(nudgeAngle);
                break;
            default:
                hsp = max((1+nudgeKnockbackScaling)*nudgeBaseKnockback, (1+nudgeKnockbackScaling)*nudgeDamage)*cos(nudgeAngle);
                vsp = max(-(1+nudgeKnockbackScaling)*nudgeBaseKnockback, -(1+nudgeKnockbackScaling)*nudgeDamage)*sin(nudgeAngle);
                break;
        }
        if(!free && vsp > 0){
            vsp *= -1;
        }
        old_hsp = hsp;
        old_vsp = vsp;
        hitByDTilt = false;
        if(state == 0 || state == 3){
            changeState(3);
        }
    }
}

#define checkForTaunt()
if(player_id.attack == AT_TAUNT_2 && player_id.state == PS_ATTACK_GROUND){
    with pHitBox {
        if(player == other.player_id.player) {
            if(attack == AT_TAUNT_2){
                if(place_meeting(x, y, other)){
                    other.tauntTime = true;
                }
            }
        }
    }
    if(tauntTime){
        if(state == 0){
            changeState(12);
        }
        batitHealth = 50;
        tauntTime = false;
    }
}