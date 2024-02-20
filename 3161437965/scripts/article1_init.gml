//SAVE point init

sprite_index = asset_get("empty_sprite"); //the article is drawn at the end of article1_pre_draw
artc_sprite = sprite_get("artc_dspec") //it actually uses collision_circle instead of a place meeting cuz it doesn't want to work
collision_radius = 32; //the size of the collision circle
real_image_index = 0;
uses_shader = false;
hitbox_view = get_match_setting(SET_HITBOX_VIS);
article_offscreen = false;
offscreen_image = 0;
offscreen_x_pos = 0;
offscreen_y_pos = 0;
orig_depth = depth;

anim_speed = 0.2;
spin_speed = 2;


//which character should teleport to it
saved_player = player_id;
saved_hsp = player_id.hsp;
saved_vsp = player_id.vsp;

enemy_warp_timer_max = 180; //how many frames it takes to teleport an enemy
enemy_warp_timer = enemy_warp_timer_max;

artc_hp = 2;
chara_warped = false;
exist_timer = 0;

is_hittable = true;