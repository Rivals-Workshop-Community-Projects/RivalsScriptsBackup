//
enum TARGETING {
    NEAR,
    CUSTOM,
    FAR,
    RANDOM,
    LOW,
    HIGH
}

if (!instance_exists(hurtbox_id)) {
    if (hurtbox_spr != asset_get("empty_sprite")) {
        hurtbox_id = instance_create(x, y, "obj_stage_article", 15);
        hurtbox_id.sprite_index = hurtbox_spr;
        hurtbox_id.parent = parent;
        hurtbox_id.pos_parent = id;
        hurtbox_id.player_count_resistance = player_count_resistance; //the value to multiply damage resistence in multiplayer. 0.6 is the Brawl default.
        hurtbox_id.activate_kill_effect = activate_kill_effect;
        hurtbox_id.hurtbox_group = hurtbox_group;
    }
}
enemy_checks();

if (despawned)
    exit;

grav = gravity_speed;

if (hitstop > 0) {
    hb_timer = 0;
}
else {
    if (hitstun > 0) {
        hitstun --
        grav = hitstun_grav;
    }
    else {
        hsp = prev_hsp;
        vsp = prev_vsp;
    }
}

if (dead && hitstop <= 0) {
    user_event(2);
}

if (free && hitstop <= 0)
    vsp += grav;

user_event(1);
enemy_targeting();
    
if (hitstun <= 0 && hitstop <= 0) {
    prev_hsp = hsp;
    prev_vsp = vsp;
}

if (hit_cooldown > 0) {
    hit_cooldown --;
}

#define target_player_rand
var player_obj = asset_get("oPlayer");
var pick = random_func_2(0, instance_number(player_obj) - 1, true);
var result = instance_find(player_obj, pick);
while (result.clone && result.fake_stock == 0) {
    var pick = random_func_2(0, instance_number(player_obj) - 1, true);
    var result = instance_find(player_obj, pick);
}
return result;

#define enemy_checks
if (despawn_range >= 0) {
    if (!despawned) {
        if (x < view_get_xview() - despawn_range
            || x > view_get_xview() + view_get_wview() + despawn_range
            || y < view_get_yview() - despawn_range
            || y > view_get_yview() + view_get_wview() + despawn_range) {
                despawned = true;
                invincible = true;
            }
    }
    else {
        if (x >= view_get_xview() - despawn_range
            && x <= view_get_xview() + view_get_wview() + despawn_range
            && y >= view_get_yview() - despawn_range
            && y <= view_get_yview() + view_get_wview() + despawn_range) {
                despawned = false;
                invincible = false;
            }
    }
}

if (hitpoints <= 0) {
    dead = true;
}


#define enemy_targeting
//Default AI behavior

switch target_behavior {
    case TARGETING.NEAR:
        var dist = room_width * room_height;
        with oPlayer {
            if point_distance(x, y, other.x, other.y) <= dist && fake_stock > 0 {
                other.ai_target = id;
                dist = point_distance(x, y, other.x, other.y);
            }
        }
        break;
    case TARGETING.FAR:
        var dist = 0;
        with oPlayer {
            if point_distance(x, y, other.x, other.y) >= dist  && fake_stock > 0  {
                other.ai_target = id;
                dist = point_distance(x, y, other.x, other.y);
            }
        }
        break;
    case TARGETING.RANDOM:
        var player_targ = random_func(0,instance_number(oPlayer), true);
        var i = 0;
        with oPlayer if i == player_targ  && fake_stock > 0 other.ai_target = id; else i++;
        break;
    case TARGETING.LOW:
        var player_damage = 999;
        with oPlayer {
            if damage <= player_damage && fake_stock > 0 {
                other.ai_target = id;
                player_damage = damage;
            }
        }
        break;
    case TARGETING.HIGH:
        var player_damage = 0;
        with oPlayer {
            if damage >= player_damage && fake_stock > 0  {
                other.ai_target = id;
                player_damage = damage;
            }
        }
        break;
    default:
        break;
}