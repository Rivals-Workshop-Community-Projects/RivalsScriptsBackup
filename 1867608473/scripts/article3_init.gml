//Assist Attack Sprites
switch(player_id.attack) {
	case AT_DSTRONG:
	sprite_index = sprite_get("dstrong_ralsei")
	break
	case AT_USTRONG:
	sprite_index = sprite_get("ustrong_susie")
	break
	case AT_NSPECIAL:
	sprite_index = sprite_get("nspecial_jevil")
	break
	case AT_TAUNT:
	sprite_index = sprite_get("taunt_lancer")
	break
	case AT_FSPECIAL:
	case AT_FSPECIAL_2:
	sprite_index = sprite_get("fspecial_susie")
	break
	default:
	sprite_index = asset_get("solid_32x32")
}
x = player_id.x
y = player_id.y
image_yscale = 0
my_attack = player_id.attack
uses_shader = true
depth = player_id.depth - 1