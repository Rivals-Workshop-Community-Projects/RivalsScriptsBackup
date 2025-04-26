//article2_init

uses_shader = true;
can_be_grounded = true;

spr_dir = player_id.spr_dir;


sprite_index = sprite_get("ustrong_pale_entrance");

leaving_effect = hit_fx_create( sprite_get("ustrong_pale_leaving"), 20 );
leaving_effect_mirror = hit_fx_create( sprite_get("ustrong_pale_leaving_mirror"), 20 );

state = 0;
state_timer = 0;
// 0 = entrance
// 1 = idle
// 2 = Ouch.My.Head
// 3 = bounce
// 4 = solo taunt



entrance_spd = 0.25;