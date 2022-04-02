//article3_update

////////////////////////////
////// Goose Climbers //////
////////////////////////////

timer++;

honk_sfx = sound_get("honk_0" + string(random_func_2(player_id.player + 1 mod 4, 5, true)+1));
/*
if hitstop <= 0 {
    hitpause = false;
    hitstop = 0;
}
*/
//print_debug(string(hitstop))
/*
with player_id {
    var cur_input = other.input_queue[other.input_queue_index]
    other.input_queue_index = other.input_queue_index == other.attack_delay-1 ? 0 : other.input_queue_index+1
    var next_input = undefined
    if attack_counter == 0 {
        if down_down next_input = AT_DAIR
        else if up_down next_input = AT_UAIR
        else if right_down next_input = AT_FAIR //right attack
        else if left_down next_input = AT_BAIR //left attack
        else next_input = AT_NAIR
    }
    other.input_queue[other.input_queue_index] = next_input
    //print(other.input_queue[other.input_queue_index])
}
*/
//state handler
user_event(9);

//attack handler
if point_distance(x, y, player_id.x, player_id.y) < attack_dist && state != PS_ATTACK_AIR && state != PS_ATTACK_GROUND {
    var ground_states = [PS_LAND,PS_LANDING_LAG,PS_PRATFALL,PS_PRATLAND,PS_PARRY_START,PS_PARRY,PS_FIRST_JUMP]
    
    if player_id.special_pressed {
        if check_input("up") {
            if !used_uspec {
                next_attack = AT_USPECIAL;
                used_uspec = true
            } else {
                exit;
            }
        } else if check_input("down") {
            //next_attack = AT_DSPECIAL;
            exit;
        } else if check_input("left") {
            next_attack = AT_FSPECIAL;
            spr_dir = -1;
        } else if check_input("right") {
            next_attack = AT_FSPECIAL;
            spr_dir = 1;
        } else {
            next_attack = AT_NSPECIAL;
        }
        next_state = free ? PS_ATTACK_AIR : PS_ATTACK_GROUND;
        exit_state = true;
        exit;
    } else {
        if free {
            if player_id.attack_pressed {
                if check_input("up") {
                    next_attack = AT_UAIR;
                } else if check_input("down") {
                    next_attack = AT_DAIR;
                } else if (check_input("left") && spr_dir == 1) || (check_input("right") && spr_dir == -1) {
                    next_attack = AT_BAIR;
                } else if (check_input("left") && spr_dir == -1) || (check_input("right") && spr_dir == 1) {
                    next_attack = AT_FAIR;
                } else {
                    next_attack = AT_NAIR;
                }
                next_state = PS_ATTACK_AIR;
                exit_state = true;
                exit;
            } else if player_id.left_strong_pressed || player_id.right_strong_pressed || player_id.up_strong_pressed || player_id.down_strong_pressed {
                if check_input("up") {
                    next_attack = AT_UAIR;
                } else if check_input("down") {
                    next_attack = AT_DAIR;
                } else if (check_input("left") && spr_dir == 1) || (check_input("right") && spr_dir == -1) {
                    next_attack = AT_BAIR;
                } else if (check_input("left") && spr_dir == -1) || (check_input("right") && spr_dir == 1) {
                    next_attack = AT_FAIR;
                } else {
                    next_attack = AT_NAIR;
                }
                next_state = PS_ATTACK_AIR;
                exit_state = true;
                exit;
            }
        } else if !free && !item_exists(state, ground_states) {
            if player_id.attack_pressed {
                if state == PS_DASH || state == PS_DASH_START {
                    next_attack = AT_DATTACK;
                } else if check_input("up") {
                    next_attack = AT_UTILT;
                } else if check_input("down") {
                    next_attack = AT_DTILT;
                } else if check_input("left") {
                    next_attack = AT_FTILT;
                    spr_dir = -1;
                } else if check_input("right") {
                    next_attack = AT_FTILT;
                    spr_dir = 1;
                } else {
                    next_attack = AT_JAB;
                }
                next_state = PS_ATTACK_GROUND;
                exit_state = true;
                exit;
            } else if player_id.left_strong_pressed || player_id.right_strong_pressed || player_id.up_strong_pressed || player_id.down_strong_pressed {
                if check_input("up") {
                    next_attack = AT_USTRONG;
                } else if check_input("down") {
                    next_attack = AT_DSTRONG;
                } else if check_input("left") {
                    next_attack = AT_FSTRONG;
                    spr_dir = -1;
                } else if check_input("right") {
                    next_attack = AT_FSTRONG;
                    spr_dir = 1;
                } else {
                    next_attack = AT_FSTRONG;
                }
                next_state = PS_ATTACK_GROUND;
                exit_state = true;
                exit;
            } else if player_id.taunt_pressed {
                next_attack = AT_TAUNT;
                next_state = PS_ATTACK_GROUND
                exit_state = true
            }
        }
    }
}

//got hit handler
user_event(6);

//draw stuff
switch state {
    case PS_ATTACK_AIR:
    case PS_ATTACK_GROUND:
    switch attack {
        case AT_DAIR: non_sprite = sprite_get("dair_hammer") break;
        case AT_UAIR: non_sprite = sprite_get("uair_bat") break;
        case AT_NSPECIAL: non_sprite = sprite_get("nspecial_vfx") break;
        case AT_NSPECIAL_2: non_sprite = sprite_get("nspecial_charge_vfx") break;
        case AT_FSPECIAL: non_sprite = sprite_get("fspecial_lid") break;
        case AT_DSPECIAL: non_sprite = sprite_get("dspecial_wt") break;
        
        default: non_sprite = asset_get("empty_sprite") break;
    }
    break;
    
    default: non_sprite = asset_get("empty_sprite") break;
}

//offscreen stuff
var roomDir = undefined; //0 to 7, starts straight right, move clockwise
var yZone = 100;
var xZone = 100;
if (x >= room_width - xZone) && (y >= yZone) && (y < room_height - yZone) {
    roomDir = 0;
} else if (x >= room_width - xZone) && (y >= room_height - yZone) {
    roomDir = 1;
} else if (x < room_width - xZone) && (x >= xZone) && (y >= room_height - yZone) {
    roomDir = 2;
} else if (x < xZone) && (y >= room_height - yZone) {
    roomDir = 3;
} else if (x < xZone) && (y < room_height - yZone) && (y >= yZone) {
    roomDir = 4;
} else if (x < xZone) && (y < yZone) {
    roomDir = 5;
} else if (x >= xZone) && (x < room_width - xZone) && (y < yZone) {
    roomDir = 6;
} else if (x >= room_width - xZone) && (y < yZone) {
    roomDir = 7;
}

//kill if goes beyond blastzones
if (x < -100) || (x > room_width + 100) || (y < -50 && state == PS_HITSTUN) || (y > room_height + 150) {
    if (state == PS_HITSTUN) {
        sound_play(asset_get("sfx_death2"));
    } else {
        sound_play(asset_get("sfx_death1"));
    }
    player_id.drawZoDeathEffect = true;
    player_id.zoDeathTimer = 0;
    player_id.zoDeathX = x;
    player_id.zoDeathY = y;
    player_id.zoDeathDir = roomDir;
    player_id.goose_died = true;
    instance_destroy();
    exit;
}

#define check_input(input)
var left = false;
var right = false;
var up = false;
var down = false;

if player_id.left_down left = true;
if player_id.right_down right = true;
if player_id.up_down up = true;
if player_id.down_down down = true;

switch input {
    case "left": if left return true else return false break;
    case "right": if right return true else return false break;
    case "up": if up return true else return false break;
    case "down": if down return true else return false break;
}

#define check_strong(input)
var left = false;
var right = false;
var up = false;
var down = false;

if player_id.left_strong left = true;
if player_id.right_strong right = true;
if player_id.up_strong up = true;
if player_id.down_strong down = true;

switch input {
    case "left": if left return true else return false break;
    case "right": if right return true else return false break;
    case "up": if up return true else return false break;
    case "down": if down return true else return false break;
}

#define item_exists(input, array)
for (i = 0; i < array_length(array); i++) {
    if input == array[i] return true
}
return false;