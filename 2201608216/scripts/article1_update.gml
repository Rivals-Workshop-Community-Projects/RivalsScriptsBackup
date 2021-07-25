// If you are here to complain about this code go to @DinoBros_ on twitter or DinoBros#9028 on Discord
// Rainbow if you see this. I'm really sorry it's a jumbled up mess. I honestly don't care what my code look like. I should, but as long as I know what's going on I'm okay with it.
// I should pretty it up. Normally I don't comment stuff, but I'm doing that right now.

trash_timer++;

if(trash_timer == 480){
	trashState = 100;
}
switch(trashState) {
case 0: //Spawning
if free {
    vsp = vsp + trashGrav;
	air_time++;
	if(air_time == 1){
		sakkbox = create_hitbox(AT_DSPECIAL, 5, x, y-12);
	}
	sakkbox.x = x;
	sakkbox.y = y;
	image_index += (1 / animAir)
		if image_index > 8.9 {
		image_index = 6
		}
}
else {
	image_index = 4;
	if (abs(hsp) < animHsp) {
		image_index = 5;
	}
  vsp = 0;
	sakkbox.image_xscale = 0;
	sakkbox.image_yscale = 0;
  if (abs(hsp) < 1) {
      trashState = 1;
      hsp = 0;
	image_index = 5;
  }
  else {
      hsp = hsp * (1 - trashFric);
  }
  break;
}
case 1: //Sitting
		if !free {
				image_index += (1 / animGround)
				if (image_index > 5.99 || (image_index > 3.99 && image_index < 5 )) {
					image_index = 0;
				}
		}
    with (pHitBox) {
        if (point_distance(x, y, other.x, other.y - 7) < 40 && attack == AT_FSPECIAL && player_id == other.player_id) { 										// 40 is Range
            other.trashState = 2;
        }
        if (point_distance(x, y, other.x, other.y - 7) < 40 && attack == AT_NSPECIAL && player_id == other.player_id) { 										// 40 is Range
            other.trashState = 3;
        }
    }
    break;
case 2: //Cancel FSpecial
    player_id.window = 10;
    player_id.vsp = 0;
    player_id.hsp = 0;

    trashState = 100; //Creates hitbox and dies
    break;
case 3: //NSpecial
    with (pHitBox) {
        if (attack == AT_NSPECIAL && player_id == other.player_id && hsp == 9 || attack == AT_NSPECIAL && player_id == other.player_id && hsp == -9) { 		// These Value are temp and are the powered up versions of NSPECIA
            length -= 100;
            other.trashStatechung = 1;
						sound_play(asset_get("sfx_gem_collect"));
        }
    }
    trashState = 100;
    break;
}

with (oPlayer) {
    if (id != other.player_id) {
        if ((point_distance(x, y, other.x, other.y - 7) < 60)){		//60 is the proximaty range
        	if(id.state == PS_HITSTUN){
            	other.trashState = 100;
        	}
        }
    }
}


if(x > room_width){
	trashState = 100;
}
if(y > room_height){
	trashState = 100;
}
if (player_id.trashDestroy == 1) {
    trashState = 100;
}
if (player_id.trashDestroy == 2) {
    trashState = 101;
}

if (trashState == 100) { 	// The Death Penalty (The hitbox comes out Frame 5 and the animation goes [ 5 | 5 | 5 ] and hitbox lasts 10 frames
    hsp = 0;
    vsp = 0;
    trashTimer++
    if (trashTimer == 1) {
    	if(trashStatechung == 1){
    		trashchung = create_hitbox(AT_DSPECIAL, 4, x, 24+y);
    		trashchung.spr_dir = player_id.spr_dir
    	}
		trashHitbox = create_hitbox(AT_DSPECIAL, 3, x, y-12);
    }
    if (trashTimer < 5) {
        image_index = 9;
    }
    else{
        if (trashTimer < 10) {
            image_index = 10;
        }
        else {
            image_index = 11;
        }
    }
    if (trashTimer == 5) {
        trashHitbox = create_hitbox(AT_DSPECIAL, 2, x, y-12);
        trashHitbox.article_id = id;
        trashHitbox.destroy_article_on_absorb = 1;
    }
    if (trashTimer == 15) {
        player_id.trashCan = 0
        player_id.trashDestroy = 0
        instance_destroy();
        return;
    }
}

if (trashState == 101) { 				// The Death Penalty (The hitbox comes out Frame 5 and the animation goes [ 5 | 5 | 5 ] and hitbox lasts 10 frames
    hsp = 0;
    vsp = 0;
    trashTimer++
    if (trashTimer < 5) {
        image_index = 9;
    }
    else{
        if (trashTimer < 10) {
            image_index = 10;
        }
        else {
            image_index = 11;
        }
    }
    if (trashTimer == 15) {
        player_id.trashCan = 0
        player_id.trashDestroy = 0
        instance_destroy();
        return;
    }
}
