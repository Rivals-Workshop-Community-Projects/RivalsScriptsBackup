// 2B's Article 1 Init

// POD ARTICLE

//define pod state and attack names (user_event0.gml)
user_event(0);
// user events literally never work from articles when you have a buddy, failsafe time.

sprite_index = asset_get("empty_sprite");
mask_index = sprite_get("pod_mask");
// Variables
follow_x = -40; //this is multiplied by spr_dir
follow_y = -40;

r_hsp = 0;
r_vsp = 0;

apply_friction_mult = true;
frict = 0.8;
depth -= 5;
def_depth = depth;

has_hit = false;

charging = false;
ustrong_pos = [-4, 0, 0];
ustrong_x_offset = 0;
ustrong_x_start = 0;
spear_win_length = 14;
spear_anim_speed = (3/spear_win_length);
spear_anim_length = 8;
spear_anim_length = floor(spear_anim_length/spear_anim_speed);
spear_anim_startup = 4;
spear1 = hit_fx_create(sprite_get("ustrong_proj1"), spear_anim_length);
spear2 = hit_fx_create(sprite_get("ustrong_proj2"), spear_anim_length);
spear3 = hit_fx_create(sprite_get("ustrong_proj3"), spear_anim_length);
spear4 = hit_fx_create(sprite_get("ustrong_proj4"), spear_anim_length);
spears_enabled = [true, true, true, true];

dspeccr_warn = [-4,0,0];
dspeccr_x = 0;
dspeccr_y = 0;
can_be_grounded = false;
ignores_walls = true;

char_height = 52;

// States
state = 0;
prev_state = 0;
state_cat = 0;
state_timer = 0;

attached = true;

attack = 0;
window = 0;
parry_lag = 0;
extended_parry = false;
window_timer = 0;
was_parried = false;

can_attack = true;

rocket_cooldown_played = true; // Whether the visual for the cooldown being over has been done

// Sprites
spr_idle = sprite_get("pod_idle");
spr_glide = sprite_get("pod_hang");
spr_return = sprite_get("pod_idle");
spr_respawn = sprite_get("pod_idle");
spr_die = sprite_get("pod_idle");
spr_rocket = sprite_get("pod_rocket");
spr_volt = sprite_get("pod_volt");
spr_crash = sprite_get("pod_crash");
spr_slam = sprite_get("pod_slam");
spr_blade = sprite_get("pod_blade");
spr_ustrong = sprite_get("pod_ustrong");
spr_taunt = sprite_get("pod_taunt");

sprite = spr_idle;
desired_sprite = spr_idle; //this variable is used to help automatically swap sprites (to slightly reduce repetition)
_image = 0;
frame_rate = 0.13;
alpha = 1;

x_offset = 0;
y_offset = 10;

volt_image_index = 15; // determined in the attack script to find the image index
// the following is various data to determine the animation timings of the volt
volt_win_frames = [7, 1, 8];
volt_win_total_frames = [0, 7, 8];
crash_image_index = 0; // determined i n the attack script to find the image index
// the following is various data to determine the animation timings of the crash
crash_anim_win = 0;
crash_anim_wins = 3;
crash_win_frames = [2, 1, 6];
crash_win_total_frames = [0, 1, 2];
crash_win_time = [2, 2, 30];
crash_win_total_time = [0, 2, 4];

//attacks
attack_grid = [];

attack_grid[PA_DSPECIAL] = 
    //[attack]
    [
        //attack data
        [
            spr_idle, //sprite
            1, //number of windows
            0, //number of hitboxes
            AT_FSPECIAL_2 //attack to take hitboxes from
        ],
        //windows
        [
            [
                1, //window type (0 = normal, 1 is invert attachment)
                12, //window length
                1, //window anim frames
                0, //window anim frame start
                0, //window hspeed
                0, //window vspeed
                0, //window hspeed type (same as base game)
                0, //window vspeed type
                0, //window has whifflag
                0, //window has sfx
                0, //window sfx
                0, //window sfx frame
            ]
            
        ],
        //hitboxes (just the numbers, because of how rivals works.)
        []
    ];

attack_grid[PA_FSPECIAL] = 
    //[attack]
    [
        //attack data
        [
            spr_rocket, //sprite
            2, //number of windows
            0, //number of hitboxes
            AT_FSPECIAL_2 //attack to take hitboxes from
        ],
        //windows
        [
            [
                0, //window type (0 = normal, 1 is invert attachment)
                12, //window length
                2, //window anim frames
                0, //window anim frame start
                0, //window hspeed
                0, //window vspeed
                0, //window hspeed type (same as base game)
                0, //window vspeed type
                0, //window has whifflag
                0, //window has sfx
                0, //window sfx
                0, //window sfx frame
            ],
            [
                0, //window type (0 = normal, 1 is invert attachment)
                20, //window length
                7, //window anim frames
                2, //window anim frame start
                0, //window hspeed
                0, //window vspeed
                0, //window hspeed type (same as base game)
                0, //window vspeed type
                0, //window has whifflag
                0, //window has sfx
                0, //window sfx
                0, //window sfx frame
            ]
            
        ],
        //hitboxes (just the numbers, because of how rivals works.)
        []
    ];
    
attack_grid[PA_NSPECIAL] = 
    //[attack]
    [
        //attack data
        [
            spr_blade, //sprite
            3, //number of windows
            1, //number of hitboxes
            AT_NSPECIAL //attack to take hitboxes from
        ],
        //windows
        [
            [
                0, //window type (0 = normal, 1 is invert attachment)
                5, //window length
                3, //window anim frames
                0, //window anim frame start
                0, //window hspeed
                0, //window vspeed
                0, //window hspeed type (same as base game)
                0, //window vspeed type
                0, //window has whifflag
                1, //window has sfx
                asset_get("sfx_clairen_uspecial_swing"), //window sfx
                4, //window sfx frame
            ],
            [
                0, //window type (0 = normal, 1 is invert attachment)
                10, //window length
                4, //window anim frames
                3, //window anim frame start
                0, //window hspeed
                0, //window vspeed
                0, //window hspeed type (same as base game)
                0, //window vspeed type
                0, //window has whifflag
                0, //window has sfx
                0, //window sfx
                0, //window sfx frame
            ],
            [
                0, //window type (0 = normal, 1 is invert attachment)
                24, //window length
                7, //window anim frames
                7, //window anim frame start
                0, //window hspeed
                0, //window vspeed
                0, //window hspeed type (same as base game)
                0, //window vspeed type
                0, //window has whifflag
                0, //window has sfx
                0, //window sfx
                0, //window sfx frame
            ]
            
        ],
        //hitboxes (just the numbers, because of how rivals works.)
        [1]
    ];
    
attack_grid[PA_NSPECIAL_AT] = 
    //[attack]
    [
        //attack data
        [
            spr_idle, //sprite
            3, //number of windows
            1, //number of hitboxes
            AT_NSPECIAL //attack to take hitboxes from
        ],
        //windows
        [
            [
                0, //window type (0 = normal, 1 is invert attachment)
                30, //window length
                4, //window anim frames
                0, //window anim frame start
                0, //window hspeed
                0, //window vspeed
                0, //window hspeed type (same as base game)
                0, //window vspeed type
                0, //window has whifflag
                1, //window has sfx
                asset_get("sfx_absa_whip3"), //window sfx
                29, //window sfx frame
            ],
            [
                0, //window type (0 = normal, 1 is invert attachment)
                3, //window length
                1, //window anim frames
                4, //window anim frame start
                0, //window hspeed
                0, //window vspeed
                0, //window hspeed type (same as base game)
                0, //window vspeed type
                0, //window has whifflag
                0, //window has sfx
                0, //window sfx
                0, //window sfx frame
            ],
            [
                0, //window type (0 = normal, 1 is invert attachment)
                28, //window length
                2, //window anim frames
                5, //window anim frame start
                0, //window hspeed
                0, //window vspeed
                0, //window hspeed type (same as base game)
                0, //window vspeed type
                1, //window has whifflag
                0, //window has sfx
                0, //window sfx
                0, //window sfx frame
            ]
            
        ],
        //hitboxes (just the numbers, because of how rivals works.)
        [2]
    ];
    
attack_grid[PA_DSPECIAL_CR] = 
    //[attack]
    [
        //attack data
        [
            spr_slam, //sprite
            3, //number of windows
            2, //number of hitboxes
            AT_DSPECIAL //attack to take hitboxes from
        ],
        //windows
        [
            [
                0, //window type (0 = normal, 1 is invert attachment, 2 is return state)
                20, //window length
                10, //window anim frames
                0, //window anim frame start
                0, //window hspeed
                -10, //window vspeed
                0, //window hspeed type (same as base game)
                0, //window vspeed type
                0, //window has whifflag
                1, //window has sfx
                asset_get("sfx_absa_gp"), //window sfx
                15, //window sfx frame
            ],
            [
                0, //window type (0 = normal, 1 is invert attachment, 2 is return state)
                30, //window length
                1, //window anim frames
                10, //window anim frame start
                0, //window hspeed
                0, //window vspeed
                0, //window hspeed type (same as base game)
                1, //window vspeed type
                0, //window has whifflag
                0, //window has sfx
                0, //window sfx
                0, //window sfx frame
            ],
            [
                2, //window type (0 = normal, 1 is invert attachment, 2 is return state)
                34, //window length
                2, //window anim frames
                11, //window anim frame start
                0, //window hspeed
                0, //window vspeed
                0, //window hspeed type (same as base game)
                1, //window vspeed type
                0, //window has whifflag
                1, //window has sfx
                asset_get("sfx_absa_dattack"), //window sfx
                1, //window sfx frame
            ]
            
        ],
        //hitboxes (just the numbers, because of how rivals works.)
        [1,2]
    ];
    
attack_grid[PA_USTRONG] = 
    //[attack]
    [
        //attack data
        [
            spr_ustrong, //sprite
            4, //number of windows
            4, //number of hitboxes
            AT_USTRONG //attack to take hitboxes from
        ],
        //windows
        [
            [
                0, //window type (0 = normal, 1 is invert attachment, 2 is return state)
                10, //window length
                4, //window anim frames
                0, //window anim frame start
                0, //window hspeed
                0, //window vspeed
                0, //window hspeed type (same as base game)
                0, //window vspeed type
                0, //window has whifflag
                0, //window has sfx
                0, //window sfx
                0, //window sfx frame
            ],
            [
                0, //window type (0 = normal, 1 is invert attachment, 2 is return state)
                10, //window length
                3, //window anim frames
                4, //window anim frame start
                0, //window hspeed
                0, //window vspeed
                0, //window hspeed type (same as base game)
                0, //window vspeed type
                0, //window has whifflag
                0, //window has sfx
                0, //window sfx
                0, //window sfx frame
            ],
            [
                0, //window type (0 = normal, 1 is invert attachment, 2 is return state)
                14, //window length
                2, //window anim frames
                7, //window anim frame start
                0, //window hspeed
                0, //window vspeed
                0, //window hspeed type (same as base game)
                0, //window vspeed type
                0, //window has whifflag
                0, //window has sfx
                0, //window sfx
                0, //window sfx frame
            ],
            [
                0, //window type (0 = normal, 1 is invert attachment, 2 is return state)
                16, //window length
                4, //window anim frames
                9, //window anim frame start
                0, //window hspeed
                0, //window vspeed
                0, //window hspeed type (same as base game)
                0, //window vspeed type
                1, //window has whifflag
                0, //window has sfx
                0, //window sfx
                0, //window sfx frame
            ]
            
        ],
        //hitboxes (just the numbers, because of how rivals works.)
        [2, 3, 4, 5]
    ];
    
attack_grid[PA_TAUNT] = 
    //[attack]
    [
        //attack data
        [
            spr_taunt, //sprite
            2, //number of windows
            0, //number of hitboxes
            AT_TAUNT //attack to take hitboxes from
        ],
        //windows
        [
            [
                0, //window type (0 = normal, 1 is invert attachment, 2 is return state)
                15, //window length
                5, //window anim frames
                0, //window anim frame start
                0, //window hspeed
                0, //window vspeed
                0, //window hspeed type (same as base game)
                0, //window vspeed type
                0, //window has whifflag
                0, //window has sfx
                0, //window sfx
                0, //window sfx frame
            ],
            [
                0, //window type (0 = normal, 1 is invert attachment, 2 is return state)
                50, //window length
                2, //window anim frames
                5, //window anim frame start
                0, //window hspeed
                0, //window vspeed
                0, //window hspeed type (same as base game)
                0, //window vspeed type
                0, //window has whifflag
                0, //window has sfx
                0, //window sfx
                0, //window sfx frame
            ]
            
        ],
        //hitboxes (just the numbers, because of how rivals works.)
        []
    ];
    
move_cooldown = array_create(array_length(attack_grid), 0);