//article2_init

// Animation

sprite_index = sprite_get("pipis");
image_index = 0;  
new_sprite = sprite_get("pipis"); 
animation_type = 0;
anim_timer = 0;
anim_type = 0;
uses_shader = true;

// Variables

ignores_walls = false;
can_be_grounded = true;

Pipis_Angle = 0;
Pipis_ShakeTime = 0;
Pipis_Bonk = false;

PipisGreen = false; // If hit by FSpecial

Pipis_Agro = false;
Pipis_EnemyID = 0;
Pipis_EnemyX = 0;
Pipis_EnemyY = 0;
Pipis_EnemyPlayer = 0;
Pipis_hitboxAtk = 0;
Pipis_SprDir = 0;

Pipis_AttackerX = 0;
Pipis_AttackerY = 0;
Pipis_AttackerVsp = 0;
Pipis_AttackerHsp = 0;

// States

state = 0;
state_timer = 0;

vsp = -2;
hsp = 3 * player_id.spr_dir;

Pipis_VspStorage = 0;
Pipis_HspStorage = 0;

spr_dir = player_id.spr_dir;