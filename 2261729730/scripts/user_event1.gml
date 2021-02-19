//Use this to init variables at the start of battle.

create_enemy(get_marker_x(1), get_marker_y(1), 0)
custom_healthbar_init();

#define custom_healthbar_init() 
hud_draw_default_healthbar = false;
hud_healthbar_spr = sprite_get("boss_hp_bar_new")
hud_healthbar_back_spr = sprite_get("boss_hp_back_new")
hud_percentbar_spr = sprite_get("boss_percent_back")
hud_bossbar_yoffset = -32
hud_healthbar_yspacing = 20;
hud_bossname_xoffset = 128
hud_bossname_yoffset = 40
hud_percent_xoffset = 80
hud_percent_yoffset = 8

//Added
hud_bosstitle_xoffset = 144
hud_bosstitle_yoffset = 112
hut_portrait_x = 88;
hut_portrait_y = 80;

#define create_enemy(spawn_x, spawn_y, enemyID)
var e = instance_create(spawn_x, spawn_y, "obj_stage_article", 6);
e.spawn_variables[0] = enemyID;
return e;