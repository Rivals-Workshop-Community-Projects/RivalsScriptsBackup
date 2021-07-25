sprite_index = sprite_get("trash");
mask_index = sprite_get("trashMask");
image_index = 0;
can_be_grounded = true;
ignores_walls = false;

player_id.trashCan = 1;

spr_dir = player_id.spr_dir * -1
image_index = 6

vsp = -5;
hsp = player_id.spr_dir * 5;

trashTimer = 0;
trashState = 0;
trashGrav = .45;
trashFric = .1; // hsp = hsp * (1 - trashFric)
trashStatechung = 0;

landedTrash = 0
trash_timer = 0;
air_time = 0;

animAir = 4 //Amount of frames per sprite when the trash bag is in the air 													[Default = 4]
animGround = 12 //Amount of frames per sprite when the trash bag is on the ground											[Default = 12]
animHsp = 3 //The trash bag squashes until the HSP is less than this amount (higher means earlier/ lower means later)		[Default = 3]
