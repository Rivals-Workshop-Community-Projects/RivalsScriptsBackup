if !inited{
	inited = 1;
	
	

	var num_dispensers = 0;
	
	if type == player_id.BL_DISPENSER with obj_article_platform if self != other && player_id.muno_char_id == other.player_id.muno_char_id && type == other.type{
		num_dispensers++;
		if num_dispensers > 5{
			break_stage = break_stage_max;
			break_timer = break_timer_max;
		}
	}
}



//funny block

stood_on = false;
arrowed = 0;

with oPlayer if !free && place_meeting(x, y+1, other) && !place_meeting(x, y, other){
	other.stood_on = true;
	if (other.type == other.player_id.BL_SLIME){
		vsp = -20 + other.break_stage * 4 * (other.exist_timer > 20);
	}
}



image_index = type;



var anviled = false;
with pHitBox if (player_id.muno_char_id == other.player_id.muno_char_id) && attack == AT_USPECIAL && hbox_num == 2 && place_meeting(x,y,other){
	if (other.type == other.player_id.BL_SLIME){
		bounce(other);
	}
	else{
		anviled = true;
	}
}

if type == player_id.BL_SLIME with (asset_get("obj_article3")) if player_id.muno_char_id == other.player_id.muno_char_id && place_meeting(x,y,other) && vsp > 1{
	bounce(other);
}

var exploded = false;
with pHitBox if player_id.muno_char_id == other.player_id.muno_char_id && attack == AT_USPECIAL && hbox_num == 3 && place_meeting(x,y,other) && blast_blocks{
	exploded = true;
}

if (type == player_id.BL_DISPENSER && parried_flag) || anviled || exploded{
	commitDie();
	exit;
}



if exist_timer < 4 || (type == player_id.BL_DISPENSER && break_timer < 8){
	// image_xscale = 1.1;
	// image_yscale = 0.9;
	// y = spawn_y + 4;
	sprite_index = asset_get("empty_sprite");
}

else{
	// image_xscale = 1;
	// image_yscale = 1;
	// y = spawn_y;
	sprite_index = player_id.spr_blocks;
}



if has_rune("O") for (var i = 1; i < 5; i++){
	if (break_timer == round(break_timer_max * i / 5)) shootArrow();
}



if (break_timer >= break_timer_max || stood_on && !prev_stood_on && (break_stage == clamp(break_stage, 1, break_stage_max - 1) || type == player_id.BL_SLIME) && type != player_id.BL_ICE){
	break_timer = 0;
	break_stage++;
	spawnVfx(2);
}



if (break_stage == break_stage_max && break_timer > break_timer_max / 2){
	visible = exist_timer % 6 < 3;
}





if break_stage > break_stage_max{
	with oPlayer if !free && place_meeting(x, y+1, other) && !place_meeting(x, y, other){
		free = true;
	}
	commitDie();
}

else{
	exist_timer++;
	break_timer += 1 + 4 * (stood_on && type != player_id.BL_ICE);
	prev_stood_on = stood_on;
	steve_on_block = noone;
}



#define commitDie

sound_play(player_id.block_datas[type].sfx, false, noone, 1, 0.8);

spawnVfx(6);

var hfx_h = random_func(0, 2, true) - 1;
var hfx_d = depth - 1;



with asset_get("hit_fx_obj") if ("steve_manip_id" in self && type == 4){
	if ("has_landed" in self) && has_landed && place_meeting(x, y+20, other){
		has_landed = false;
	}
}




if type < 4 && !dont_drop_item with player_id{
	var hfx = spawn_hit_fx(other.x, other.y, block_datas[other.type].item_vfx);
	hfx.hsp = hfx_h;
	hfx.vsp = -4;
	hfx.depth = hfx_d;
	hfx.parent_y = other.y;
	
	hfx.steve_manip_id = self;
	hfx.type = 4;
}

instance_destroy();



#define spawnVfx(count)

shootArrow();

with player_id if fast_graphics return;

for (i = 0; i < count; i++){
	var hfx_x = x + random_func(00 + i, 20, true) - 10;
	var hfx_y = y + random_func(10 + i, 20, true);
	var hfx_v = random_func(20 + i, 1, true) - 4;
	var hfx_h = random_func(30 + i, 4, true);
	hfx_h *= (i % 2) ? -1 : 1;
	var hfx_d = depth - 1;
	var hfx_a = random_func(40 + i, 40, true) - 20;
	
	with player_id{
		var hfx = spawn_hit_fx(hfx_x, hfx_y, block_datas[other.type].vfx);
		hfx.hsp = hfx_h;
		hfx.vsp = hfx_v;
		hfx.depth = hfx_d;
		hfx.parent_y = other.y;
		hfx.asp = hfx_a;
		
		hfx.steve_manip_id = self;
		hfx.type = 3;
		hfx.num = other.i;
	}
}



#define shootArrow

if (type == player_id.BL_DISPENSER && !parried_flag && !arrowed){
	var spd = 10 * spr_dir;
                    
    var arrow = create_hitbox(AT_FSTRONG, 2, x + 32 * spr_dir, y + 16);
    arrow.spr_dir = spr_dir;
    arrow.hsp = spd;
    arrow.vsp = -1;
    arrow.crit = false;
    
    sound_play(player_id.sfx_minecraft_bow_loose);
    
    arrowed = 1;
}



#define bounce(slime_block)

vsp *= -1;
sound_play(slime_block.player_id.sfx_minecraft_place_slime);









