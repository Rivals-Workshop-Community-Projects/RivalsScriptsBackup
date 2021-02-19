//article1_update
timer++;

if image_index < 3 && timer mod 4 == 0 {
    image_index++;
}
var touchingRight = false;
var touchingLeft = false;
if position_meeting(x + 30, y + 28, asset_get("par_block")) || position_meeting(x + 30, y + 28, asset_get("par_jumpthrough")) {
    touchingRight = true;
}

if position_meeting(x - 30, y + 28, asset_get("par_block")) || position_meeting(x - 30, y + 28, asset_get("par_jumpthrough")) {
    touchingLeft = true;
}

if touchingRight && !touchingLeft {
    x += 10;
} else if touchingLeft && !touchingRight {
    x -= 10;
} else if (!touchingRight && !touchingLeft) || (touchingRight && touchingLeft) {
    if !position_meeting(x, y + 18, asset_get("par_block")) && !position_meeting(x, y + 18, asset_get("par_jumpthrough")) {
        y += 2;
    }
}


/*
//hit by nspecial, speed up compacting
var hitbox1 = instance_position(x + 10, y, pHitBox);
var hitbox2 = instance_position(x - 10, y, pHitBox);

if hitbox1 != noone {
    if (hitbox1.player_id == player_id && hitbox1.attack == AT_NSPECIAL && hitbox1.hbox_num == 1) {
        beenHit = true;
    }
} else if hitbox2 != noone {
    if (hitbox2.player_id == player_id && hitbox2.attack == AT_NSPECIAL && hitbox2.hbox_num == 1) {
        beenHit = true;
    }
}

if beenHit && (player_id.state == PS_ATTACK_AIR || player_id.state == PS_ATTACK_GROUND) && player_id.attack == AT_NSPECIAL && player_id.window == 2 {
    player_id.compactJunk = true;
    scraped = true;
    if (!player_id.has_hit_player) && (player_id.compactTimer < 60) {
        player_id.compactTimer = 60;
    }
}
*/
/*
if power >= 10 {
    var freq = floor(10 * 60/power);
    if get_gameplay_time() mod freq == 1 {
        var xMod = random_func_2((get_gameplay_time() + id) mod 200, 40, true) - 20;
        with player_id {
            var fx = spawn_hit_fx(other.x + xMod, other.y + 15, smoke_vfx);
                fx.depth = -2;
        }
    }
}
*/

scraped = true;

if scraped {
    if timer mod 4 == 0 {
        image_index++;
        if image_index == 6 {
            instance_destroy();
            exit;
        }
    }
}