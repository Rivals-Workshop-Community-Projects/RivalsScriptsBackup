//article1_init

init = 0;
spr_dir = player_id.spr_dir;
//uses_shader = true;
//on second thought its probably better to not make this change colors with alts

//spr_bone = [sprite_get("bone_horizontal"), sprite_get("bone_vertical")]
//spr_bone_hitbox = [sprite_get("bone_mask_horizontal"), sprite_get("bone_mask_vertical")]

//spr_bone = [sprite_get("bone_spin"), sprite_get("bone_spin_blue")];

//sprite_index = sprite_get("blue_bone_spin");
sprite_index = sprite_get("bone_spin");
mask_index = sprite_get("bone_mask");
can_be_grounded = false;
ignores_walls = false;
//image_speed = 0.5;
//air_hurtbox_spr = asset_get("empty_sprite")

boneType = 0;
bone_speed = 3;

hsp = bone_speed*player_id.spr_dir;
vsp = 0;

old_hsp = hsp;
old_vsp = vsp;

state = 0;
state_timer = 0;
sansID = player_id;
/*
state_timer = 0;
can_be_grounded = false;
ignores_walls = true;
free = true;
uses_shader = true;
grounds = 1;
walls = 1;

accel = .02;
ground_friction = .02;
*/

anim_timer = 0;

//second = 60;
bone_hit_timer = 0;
//bone_dir = 0;
//bone_w_destroy = 4*second;
//init_hsp = 0;
//init_vsp = 0;

despawn_timer = 0;
enemy_can_hit = true;

orig_player_id.move_cooldown[AT_FSPECIAL] = 300;
// Supersonic Hit Detection Template
 
//make hbox_group array (the old version was really bad because the array actually affected all players no matter what lol)
hbox_group = array_create(4,0);
var i1 = 0;
var i2 = 0;
repeat(4) {
    hbox_group[@i1] = array_create(50,0);
    repeat(50) {
        hbox_group[@i1][@i2] = array_create(10,0);
        i2++;
    }
    i2 = 0;
    i1++;
}
 
hitstun = 0;
hitstun_full = 0;
 
kb_adj = 0.5;
kb_dir = 0;
orig_knock = 0;
 
hit_lockout = 0;
 
article_should_lockout = true; //set to false if you don't want hit lockout.