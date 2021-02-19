//AR article3_init
//acid raindrops/afterimage

init = 0;
//sprite_index = sprite_get("rain");
sprite_index = asset_get("empty_sprite");

ar_a3_type = 0;
//0 will be Rain
//1 will be Afterimage
//2 will be Forward afterimage (scrapped)

free = true;
//can_be_grounded = false;
//ignores_walls = true;
uses_shader = true;
//vsp = 0; //8 //11
can_be_grounded = true;
ignores_walls = false;

rain_has_hit = [false, false, false, false];
rain_gfx_hit = [false, false, false, false];

rainhitvfx = hit_fx_create( sprite_get( "rainhit" ), 6 );

aitimer = 0;
aitimermax = 16;

rain_lifetime = 0;