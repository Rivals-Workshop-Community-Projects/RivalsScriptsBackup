//
image_index = 0;
sprite_index = sprite_get("empty");
mask_index = asset_get("ex_guy_collision_mask");

image_xscale = 2;
image_yscale = 2;

can_be_grounded = true;
ignores_walls = false;

window = 1;
window_timer = 0;

assist_num = 0;
has_hit = false;

hitbox_num = 0;

hsp = 0;
vsp = 0;
old_vsp = 0;
old_hsp = 0;
assist_gravity = .25;

hitpause = 0;

assist_hitboxes = [];

//Kragg FSTRONG
assist_kragg = [
	//General Information
	{
		sprite : asset_get("bug_fsmash"),
		hurt_sprite : asset_get("bug_fsmash_hurt")
	},
	//Windows
	{
		length : 12,
		anim_frames : 3,
		frame_start : 0
	},
	{
		length : 12,
		anim_frames : 2,
		frame_start : 3,
		sfx : [3, asset_get("sfx_swipe_heavy1")],
		hsp : [1, 2]
	},
	{
		length : 5,
		anim_frames : 1,
		frame_start : 5,
		hsp : [0, 3],
		hitboxes : [ //[frame, Attack, Number]
			[0, AT_FSTRONG, 1, 41, -43, "phys"]	
		]
	},
	{
		length : 19,
		anim_frames : 4,
		frame_start : 6,
		whifflag : true
	}
]

assist_orcane = [
	//General Information
	{
		sprite : asset_get("orca_dtilt"),
		hurt_sprite : asset_get("orca_dtilt_hurt")
	},
	//Windows
	{
		length : 4,
		anim_frames : 2,
		frame_start : 0,
		sfx : [2, asset_get("sfx_swish_weak")]
	},
	{
		length : 3,
		anim_frames : 1,
		frame_start : 2,
		hitboxes : [ //[frame, Attack, Number]
			[0, AT_FSTRONG, 2, 45, -10, "phys"]
		]
	},
	{
		length : 7,
		anim_frames : 3,
		frame_start : 3,
		whifflag : true
	}
]

assist_zetter = [
	//General Information
	{
		sprite : asset_get("zet_fspecial_grnd"),
		sprite_air : asset_get("zet_fspecial_air"),
		hurt_sprite : asset_get("zet_fspecial_hurt")
	},
	//Windows
	{
		length : 8,
		anim_frames : 3,
		frame_start : 0,
		sfx : [7, asset_get("sfx_zetter_fireball_fire")]
	},
	{
		length : 2,
		anim_frames : 1,
		frame_start : 3,
	},	
	{
		length : 5,
		anim_frames : 1,
		frame_start : 4,
		hitboxes : [ //[frame, Attack, Number]
			[0, AT_FSTRONG, 3, 32, -25, "phys"]			
		]
	},
	{
		length : 1,
		anim_frames : 1,
		frame_start : 5,
		hitboxes : [ //[frame, Attack, Number]
			[0, AT_FSTRONG, 4, 60, -26, "proj"]			
		]
	},
	{
		length : 14,
		anim_frames : 2,
		frame_start : 6,
	}
]

assist_wrastor = [
	//General Information
	{
		sprite : asset_get("bird_dair_ground"),
		hurt_sprite : asset_get("bird_dair_ground_hurt"),
		y_offset : -96,
		x_offset : 48
	},
	//Windows
	{
		length : 7,
		anim_frames : 2,
		frame_start : 0,
		vsp : [1, 0]
	},
	{
		length : 4,
		anim_frames : 1,
		frame_start : 1,
		sfx : [1, asset_get("sfx_spin")],
		vsp : [1, 0]
	},	
	{
		length : 15,
		anim_frames : 5,
		frame_start : 2,
		loop_while : "air",
		skip_on_hit : 5,
		vsp : [1, 12],
		hitboxes : [ //[frame, Attack, Number]
			[0, AT_FSTRONG, 5, 4, -20, "phys"]			
		]
	},
	{	//Grounded Endlag
		length : 20,
		anim_frames : 2,
		frame_start : 8,
		sfx : [1, asset_get("sfx_blow_weak2")],
		vsp : [1, 0],
		skip_to_window : 6		
	},
	{	//Hit Endlag
		length : 12,
		anim_frames : 1,
		frame_start : 10,
		vsp : [2, -3]
	}
]

//assist_num = get_gameplay_time() % 4;
assists = [
	assist_zetter, 
	assist_wrastor, 
	assist_kragg,
	assist_orcane
]

sound_play(asset_get("mfx_xp"));
spawn_hit_fx(x, y - 40, HFX_FOR_HIT_BIG);