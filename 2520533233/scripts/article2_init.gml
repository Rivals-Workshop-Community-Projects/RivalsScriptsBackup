//article2_init
enum FX{
    graze,
    graze_after,
    fspecial,
    install,
    install_bg,
    install_cloud,
    bad_load
}
fx_type = FX.bad_load;
//Graze Machine
if player_id.object_index != oPlayer player_id = player_id.player_id;

can_be_grounded = false;
ignores_walls = true;
uses_shader = true;
spd = 2;
visible = 1;
sprite_index = sprite_get("graze_pink");
tenshi = noone;
blue = false;
lifetime = 100;
life = 0;
delay = 9;
seed = 0;
valid_graze = true;

//animation tools for fx
anim_spd = 0.0;
anim_frame = 0.0;
anim_max = 0;

//rock stuff
can_spawn = true;
can_spawn_side = false;
spawn_x = x;
spawn_y = y;

//glow stuff
glow_timer = 0;
glow_time = 60;
glow_phase = 1;
sub_alpha = 0;