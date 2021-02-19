//article2_init

sprite_index = sprite_get("ropeArrow");
mask_index = asset_get("empty_sprite");
//hurtbox_spr = asset_get("empty_sprite");

state = 0;
state_timer = 0;
full_timer = 0;
stay_timer = 0;
anim_time = .2;
can_be_grounded = true;
ignores_walls = false;
//free = true;
uses_shader = true;


//Custom Vars
throw_speed = 20;
return_speed = 40;
stay_time = 80;
dist = 64;
hook_time = 5;
max_distance = 400;
//Proj Vars
hbox = noone;

// initialization data
spr_dir = 1;
hsp = throw_speed*dcos(player_id.direc);
vsp = -throw_speed*dsin(player_id.direc);

image_angle = player_id.direc;
if !instance_exists(hbox) hbox = create_hitbox(AT_USPECIAL,1,floor(x - (20 * sin(degtorad(abs(image_angle - 180)))) * player_id.spr_dir),floor(y+32*dsin(image_angle+180)));
with (asset_get("obj_article2")) {
    if (id != other.id && player_id == other.player_id && state < 2) {
        state = 2;
        state_timer = 0;
    }
    
}