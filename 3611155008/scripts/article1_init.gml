//article1_init
can_be_grounded = false;
ignores_walls = false;
uses_shader = true;

state = 0;
timer = 0;
nymphturn = 0;
nymphspeed = 8;
nymphstopcoeff = .05

health = 5;
qi_stack = 0; //caps at 10
nymph_lockout = 0;
qi_repeat = 0;

char_height = 0;
draw_x = 0;
draw_y = 0;
hurtboxID = self;
Yi_nymph = 0;
spark_alpha = 1;
spark_size = 2;

is_hittable = 1;
hittable_hitpause_mult = 0;
image_xscale = 2;
image_yscale = 2;
mask_index = sprite_get("nymph_hurt");
sprite_index = asset_get("empty");

sound_play(sound_get("CharSFX_Butterfly_Blink_v" + string(random_func(134, 3, 1) + 1)));
sound_play(sound_get("CharSFX_Butterfly_Enter_v" + string(random_func(72, 3, 1) + 1)));

article_offscreen = 0;
offscreen_x_pos = 0;
offscreen_y_pos = 0;
hud_col = get_player_hud_color(player);

orig_depth = depth;