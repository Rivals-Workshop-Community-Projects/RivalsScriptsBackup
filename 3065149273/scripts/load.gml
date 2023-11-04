//load.gml

//sprites offsets
sprite_change_offset("neutral", 14, 27);
sprite_change_offset("hero", 14, 27);
sprite_change_offset("dark", 14, 27);
sprite_change_offset("omochao", 14, 29);
sprite_change_offset("template", 14, 27);
sprite_change_offset("SSL", 14, 27);

sprite_change_offset("sonic", 14, 27);
sprite_change_offset("sonicsuper", 14, 27);
sprite_change_offset("tails", 14, 27);
sprite_change_offset("tails2", 14, 27); //no colormapping
sprite_change_offset("knuckles", 14, 27);
sprite_change_offset("amy", 14, 27);
sprite_change_offset("amy2", 14, 27); //no colormapping
sprite_change_offset("cream", 14, 27);
sprite_change_offset("shadow", 14, 27);

//chao set
chao_type = ("chao_type" in owner) ? owner.chao_type : 0; //0 = neutral(default) | 1 = hero | 2 = dark | 3 = omochao | 4 = SSL | 5 = custom
chao_sound_type = ("chao_sound_type" in owner) ? owner.chao_sound_type : 1; //0 = mute chao | 1 = normal(default) | 2 = omochao | 3 = SSL

chao_sprite = asset_get("empty_sprite");
chao_uses_alts = ("chao_uses_alts" in owner) ? owner.chao_uses_alts : false; //replaces [ add_compatible_urls ]
user_event(0); //check sprite compatibility
user_event(1); //check sounds to use
if (chao_uses_alts) add_compatible_urls(owner.url);

real_img_num = [ //basically just image_number but works with 1 strip instead of 4
    6, //idle
    8, //turn
    13, //sad
    20 //happy
];

//stats
type = 1; //air buddy
pet_w = 32;
run_speed = 0;
max_run_dist = 9999999999;
depth = 0;

flutter_max = 60;
flutter_height = -8;
dist_from_player = ("dist_from_player" in owner) ? owner.dist_from_player : [32, owner.char_height + 16];

idle_anim_speed = 0.15;
move_anim_speed = 0.2;
turn_time = 12;

//length, first frame, frame amount
anim_happy = [
    [8, 0, 2], //window 1
    [4, 2, 2], //window 2
    [30, 4, 1], //window 3
    [10, 5, 2] //window 4
];
anim_happy_omochao = [
    [8, 0, 2], //window 1
    [4, 2, 1], //window 2
    [6, 3, 2], //window 3-1 //i don't have looping windows lol
    [6, 3, 2], //window 3-2
    [6, 3, 2], //window 3-3
    [6, 3, 2], //window 3-4
    [6, 3, 2], //window 3-5
    [10, 5, 2] //window 4
];
anim_sad = [
    [2, 0, 1], //window 1
    [8, 1, 2], //window 2-1 //i don't have looping windows lol
    [8, 1, 2], //window 2-2
    [8, 1, 2], //window 2-3
    [8, 1, 2], //window 2-4
    [12, 1, 2], //window 2-5
    [10, 3, 2] //window 4
];

//basic variables
idle_spr = asset_get("empty_sprite");
turn_spr = asset_get("empty_sprite");
wait_spr = asset_get("empty_sprite");
run_spr = asset_get("empty_sprite");
ledge_spr = asset_get("empty_sprite");
taunt_spr = asset_get("empty_sprite");

cur_state = 0;
state_timer = 0;
window = 0;
window_timer = 0;
real_img_index = 0;
prev_chao_type = -99; //chao update check
spr_dir *= 2; //lol small sprites
image_yscale = 2;

chao_colO = array_clone(owner.static_colorO); //color array recording
chao_colB = array_clone(owner.static_colorB); //if your character has weird color shenanigans, use this

flutter_up = true;
flutter_timer = 0;
prev_pos = [x, y];
last_player_died = -1; //who died
last_player_killed = -1; //who got a kill
anim_check = [];

cur_voiceclip = [noone, noone];

if (chao_sound_type > 0) //0 = mute so no need to put in sounds
{
    //intro voiceline
    var number = random_func_2(current_second, chao_sound_amounts[0], true);
    cur_voiceclip[0] = sound_play(sound_get(chao_sound_bank[0][number]));
}