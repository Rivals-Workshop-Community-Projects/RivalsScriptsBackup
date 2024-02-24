if !instance_exists(self) exit;

if clone_pl = self && special_state && instance_exists(main_pl){
	force_depth = 1;
	depth = main_pl.depth-2;
}
switch state{
    case PS_FIRST_JUMP:
    if state_timer >= 1 image_index = (state_timer >= (image_number-1)*5? image_number-1: state_timer/5);
    break;
    
    case PS_PRATFALL:
    image_index = clamp(state_timer/5, 0, image_number-1);
    break;
    
    case PS_ATTACK_GROUND:
    case PS_ATTACK_AIR:
    if attack = AT_EXTRA_2{
        hud_offset = 1/0;
        sprite_index = asset_get("empty_sprite");
    }
    break;
}