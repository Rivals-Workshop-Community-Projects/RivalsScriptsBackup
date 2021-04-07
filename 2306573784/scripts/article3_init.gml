//Article3 Init - Platforms

if !is_aether_stage() {
    instance_destroy();
    exit;
}

_init = 0;
sprite_index = sprite_get("platform");
//Cold Storage Declarations
plat_type = spawn_variables[0];
hold_frame_count = 60; //How long the vertical plats stay in each position (in frames) 


plat_markers = [
    [1,2,3,4,5,6], //0, Gutsman Plat L
    [13,14], //1, Moving Platform L
    [17], //2, Standard Plat L
    [7,8,9,10,11,12], //0, Gutsman Plat R
    [15,16], //1, Moving Platform R
    [18] //2, Standard Plat R
    ];

hold_frames = [
    0, //0, Gutsman Plat L
    hold_frame_count, //1, Moving Platform L
    0, //2, Standard Plat L
    0, //0, Gutsman Plat R
    hold_frame_count, //1, Moving Platform R
    0 //2, Standard Plat R
    ];

//Variable Declarations

move_speed = 2; // Platform Speed

swapping = false;

cur_marker = 0;
cur_hold_frame = 0;
plat_markers_l = array_length(plat_markers[plat_type]);


