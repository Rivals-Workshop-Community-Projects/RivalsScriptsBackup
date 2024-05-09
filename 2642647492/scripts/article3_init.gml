//Background colors

mode = 0;
image_alpha = 0;
image_xscale = 2;
image_yscale = 2;

x = -200
y = -400

if spawn_variables[0] = 0 {
sprite_index = sprite_get("darkness");
version = 0;
} else {
sprite_index = sprite_get("fog");
version = 1;
}

if(is_aether_stage()){
    fog_max = 0.45;
    dark_max = 1;
} else {
    fog_max = 0.15;
    dark_max = 0.25;
}