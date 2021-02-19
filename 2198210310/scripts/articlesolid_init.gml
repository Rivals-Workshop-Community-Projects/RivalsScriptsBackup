//articlesolid_init

isTrash = true;

can_be_grounded = true;
ignores_walls = false;
uses_shader = false;
unbashable = 0;

orig_player = player;
was_bashed = false;

was_hit = false;

hitboxOwner = undefined;
hitboxVar = undefined;


timer = 0;
junked = false;

willExplode = false; //will flash when going to explode

sprite_index = sprite_get("block");
mask_index = sprite_get("block_mask");