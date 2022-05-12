//article1_init
sprite_index = sprite_get("blob_ball");
if(player_id.box){ //cube
	sprite_index = sprite_get("blob_ball_box");
}

ball = 0;
ball_timer = 10;
bomb_anim = 0;
bomb_timer = 0;

orig_player = player;
current_player = player;
can_be_grounded = true;
ignores_walls = true;
hit_wall = true;
uses_shader = true;
destroyed = false;
ballmode = 0;
ballnum = 0;
balldestroy = false;
ballhitbox = noone;
lasthitbox = noone;
hitlockout = 0;
hitlockout2 = 0;
bouncetimer = 0;
bounceanim = 0;
hitplayer = false;
hitplayertimer = 0;
//depth = player_id.depth+20;

MattCanGrab = true;
MorshuCanGrab = true;
CalCanSnack = 2;

spr_dir = player_id.spr_dir;

ballhitbox = create_hitbox(AT_NSPECIAL,1,floor(x),floor(y))
ballhitbox.player = current_player;