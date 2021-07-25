//article1_update

//runes
with oPlayer {
    if (player == other.player) {
        if runeO { //FSPEC doesn't decrease puddle size.
            other.steamRate = 80; //number of frames before decreasing in size while steamed
        } else {
            other.steamRate = 18;
        }

        if runeL { //Max puddle size increased.
            other.maxSize = 18;
        } else {
            other.maxSize = 12;
        }

        if runeN { //Puddles don't decrease in size over time.
            other.convRate = 10000000000000000000000000000000000;
        } else {
            other.convRate = 120;
        }
    } else if url == 2284823424 {
        //steve riptide compatibility
        if place_meeting(x, y+10, other) && (state == PS_ATTACK_AIR || state == PS_ATTACK_GROUND) && attack == AT_FTHROW && window == 1 && window_timer == 6 {
            riptide_strong = true;
            with other {
                if !dissolve {
                    dissolve = true;
                    sound_play(asset_get("sfx_waterhit_heavy2"))
                }
            }
        }
    }
}

if (size <= 2) {
    dissolve = true;
}

if (size <= 0) {
    instance_destroy();
    exit;
}

if (size > maxSize) {
    size = maxSize;
}

with oPlayer {
    if (player == other.player) {
        other.canSubmerge = canSubmerge;
        other.submergePuddleID = submergePuddleID;
        other.playerAttack = attack;
        other.playerState = state;
    }
}

if (canSubmerge) && (id == submergePuddleID) && (size >= 4) {
    sprite_index = sprite_get("puddle_flash");
} else if (size < 4) && (!steamed) && (!dissolve) {
    if (timer mod 16 >= 8) {
        sprite_index = sprite_get("puddle_flash");
    } else {
        sprite_index = sprite_get("puddle");
    }
} else {
    sprite_index = sprite_get("puddle");
}

image_index = size - 1;

if (timer mod convRate == convRate - 1) && (!steamed) && !(playerAttack == AT_USPECIAL && playerState == PS_ATTACK_AIR && size == 3) {
    size -= 1;
}



with (asset_get("pHitBox")) {
    if (player_id == other.player_id) && (attack == AT_FSPECIAL) && ((hbox_num == 1 && instance_position(x,y + 20,other.id)) || (hbox_num == 3 && instance_position(x,y + 36,other.id))) {
        other.steamed = true;
    }
}

//platform/stage edge corrections
puddleLeft = x - (size * 5);
puddleRight = x + (size * 5);
if place_meeting(x, y, asset_get("par_jumpthrough")) { //on platform
    var leftPos = position_meeting(puddleLeft, y, asset_get("par_jumpthrough"));
    var rightPos = position_meeting(puddleRight, y, asset_get("par_jumpthrough"));
    var newLeftPos = position_meeting(puddleLeft - 10, y, asset_get("par_jumpthrough"));
    var newRightPos = position_meeting(puddleRight + 10, y, asset_get("par_jumpthrough"));

    if !leftPos {
        x += 5;
    } else if !rightPos {
        x -= 5;
    }

    if !newLeftPos && !newRightPos {
        size -= 1;
    }
} else if place_meeting(x, y, asset_get("par_block")) { //on ground
    var leftPos = position_meeting(puddleLeft, y, asset_get("par_block"));
    var rightPos = position_meeting(puddleRight, y, asset_get("par_block"));
    var newLeftPos = position_meeting(puddleLeft - 10, y, asset_get("par_block"));
    var newRightPos = position_meeting(puddleRight + 10, y, asset_get("par_block"));

    if !leftPos {
        x += 5;
    } else if !rightPos {
        x -= 5;
    }

    if !newLeftPos && !newRightPos {
        size -= 1;
    }
}

if !place_meeting(x, y, asset_get("par_jumpthrough")) && !place_meeting(x, y, asset_get("par_block")) {
    instance_destroy();
}


if (steamed == true) || (player_id.venting && id == submergePuddleID) {
    if (steamedTimer mod 2 == 0) {
        //steam sprite randomiser
        if get_player_color(player_id.player) == 17 steamSprite = sprite_get("steam_particle" + string(random_func(0, 4, true)) + "_arc");
        else steamSprite = sprite_get("steam_particle" + string(random_func(0, 4, true)));

        //x coord randomiser
        steamX = size*5 - random_func(1, size*10, true);

        //hsp randomiser
        steamHsp = 2 - random_func(2, 4, false);

        //vsp randomiser
        steamVsp = (1 - random_func(3, 2, false));

        //gravity randomiser
        steamGrav = (1 - random_func(4, 2, false)) / 10;

        with player_id {
            set_hitbox_value(AT_FSPECIAL, 2, HG_PROJECTILE_SPRITE, other.steamSprite);
            set_hitbox_value(AT_FSPECIAL, 2, HG_PROJECTILE_HSPEED, other.steamHsp);
            set_hitbox_value(AT_FSPECIAL, 2, HG_PROJECTILE_VSPEED, -6 + other.steamVsp);
            set_hitbox_value(AT_FSPECIAL, 2, HG_PROJECTILE_GRAVITY, -0.2 + other.steamGrav);
        }

        create_hitbox(AT_FSPECIAL, 2, x + steamX, y);
    }

    if (steamedTimer mod 9 == 0) && (steamedTimer >= 9) {
        with player_id {
            set_hitbox_value(AT_FSPECIAL, 4, HG_WIDTH, other.size*10 + 20);
        }
        create_hitbox(AT_FSPECIAL, 4, x, y-10);
    }


    if (steamedTimer mod steamRate == 0) && (!player_id.venting) {
        size -= 1;
    }

    steamedTimer += 1;
}

if (steamedTimer >= 10) {
    with oPlayer {
        steamed = false;
    }
}

with oPlayer {
    if (player == other.player) {
        steamed = other.steamed;
    }
}

if (dissolve) {
    size -= 1;
    with oPlayer {
        if player == other.player {
            steamed = false;
        }
    }
}

timer += 1;
