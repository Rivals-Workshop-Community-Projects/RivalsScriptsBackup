hsp = 0;
vsp = 0;
free = false;

if (displayFront == 1) {
	depth = 0;
} else {
	depth = 30;
}

lifetime--;
if (lifetime <= 0) {
    instance_destroy();
    exit;
}

switch (displayMove) {
	case 0:
		sprite_index = sprite_get("effect_utilt");
		my_max = 10;
		if (player_id.state == PS_ATTACK_GROUND && player_id.attack == AT_UTILT) {
			image_index = player_id.image_index;
			my_image_index = player_id.image_index;
		} else {
			connected = false;
		}
		if (connected == false) {
			obj_timer++;
			if (obj_timer % 4 == 0) {
				if (fall_forward == true) {
					image_index++;
				} else {
					image_index--;
				}
			}
		} else {
			x = player_id.x + player_id.hsp;
			y = player_id.y + player_id.vsp;
		}
		break;
	case 1:
		my_max = 10;
		sprite_index = sprite_get("effect_dtilt");
		if (player_id.state == PS_ATTACK_GROUND && player_id.attack == AT_DTILT) {
			image_index = player_id.image_index;
			my_image_index = player_id.image_index;
		} else {
			connected = false;
		}
		if (connected == false) {
			obj_timer++;
			if (obj_timer % 4 == 0) {
				if (fall_forward == true) {
					image_index++;
				} else {
					image_index--;
				}
			}
		} else {
			x = player_id.x + player_id.hsp;
			y = player_id.y + player_id.vsp;
		}
		break;
	case 2:
		sprite_index = sprite_get("effect_ustrong");
		my_max = 20;
		if (player_id.state == PS_ATTACK_GROUND && player_id.attack == AT_USTRONG) {
			image_index = player_id.image_index;
			my_image_index = player_id.image_index;
		} else {
			connected = false;
		}
		if (connected == false) {
			obj_timer++;
			if (obj_timer % 4 == 0) {
				if (fall_forward == true) {
					image_index++;
				} else {
					image_index--;
				}
			}
		} else {
			x = player_id.x + player_id.hsp;
			y = player_id.y + player_id.vsp;
		}
		break;
		break;
	case 3:
		sprite_index = sprite_get("effect_dstrong");
		my_max = 15;
		if (player_id.state == PS_ATTACK_GROUND && player_id.attack == AT_DSTRONG) {
			image_index = player_id.image_index;
			my_image_index = player_id.image_index;
		} else {
			connected = false;
		}
		if (connected == false) {
			obj_timer++;
			if (obj_timer % 4 == 0) {
				if (fall_forward == true) {
					image_index++;
				} else {
					image_index--;
				}
			}
		} else {
			x = player_id.x + player_id.hsp;
			y = player_id.y + player_id.vsp;
		}
		break;
	case 4:
		my_max = 10;
		sprite_index = sprite_get("effect_dattack");
		
		obj_timer++;
		if ((player_id.state == PS_ATTACK_GROUND || player_id.state == PS_ATTACK_AIR) && player_id.attack == AT_DATTACK) {
		} else {
			//print_debug("disconnecting");
			connected = false;
		}
		if (obj_timer % 6 == 0) {
			if (fall_forward == true || connected == true) {
				image_index++;
			} else {
				image_index--;
			}
		}
		break;
	case 5:
		my_max = 10;
		sprite_index = sprite_get("effect_dattack2");
		
		obj_timer++;
		if ((player_id.state == PS_ATTACK_GROUND || player_id.state == PS_ATTACK_AIR) && player_id.attack == AT_DATTACK) {
		} else {
			//print_debug("disconnecting");
			connected = false;
		}
		if (obj_timer % 6 == 0) {
			if (fall_forward == true || connected == true) {
				image_index++;
			} else {
				image_index--;
			}
		}
		break;
	case 6:
		sprite_index = sprite_get("effect_taunt");
		my_max = 15;
		if (player_id.state == PS_ATTACK_GROUND && player_id.attack == AT_TAUNT) {
			image_index = player_id.image_index;
			my_image_index = player_id.image_index;
		} else {
			connected = false;
		}
		if (connected == false) {
			obj_timer++;
			if (obj_timer % 4 == 0) {
				if (fall_forward == true) {
					image_index++;
				} else {
					image_index--;
				}
			}
		} else {
			x = player_id.x + player_id.hsp;
			y = player_id.y + player_id.vsp;
		}
		break;
	case 7:
		my_max = 10;
		sprite_index = sprite_get("effect_uspecial");
		
        
        if (connected == false || player_id.strong_charge == 0) {
            obj_timer++;
        } else {
            lifetime++;
        }
		if ((player_id.state == PS_ATTACK_GROUND || player_id.state == PS_ATTACK_AIR) && player_id.attack == AT_USPECIAL_GROUND) {
		} else {
			//print_debug("disconnecting");
			connected = false;
		}
        if (image_index < 4) {
            if (obj_timer % 7 == 0) {
                if (fall_forward == true || connected == true) {
                    image_index++;
                } else {
                    image_index--;
                }
            }
        } else {
            if (obj_timer % 5 == 0) {
                if (fall_forward == true || connected == true) {
                    image_index++;
                } else {
                    image_index--;
                }
            }
        }
		break;
	case 8:
		my_max = 10;
		sprite_index = sprite_get("effect_uspecial2");
		
		
        if (connected == false || player_id.strong_charge == 0) {
            obj_timer++;
        } else {
            lifetime++;
        }
		if ((player_id.state == PS_ATTACK_GROUND || player_id.state == PS_ATTACK_AIR) && player_id.attack == AT_USPECIAL_GROUND) {
		} else {
			//print_debug("disconnecting");
			connected = false;
		}
        if (image_index < 4) {
            if (obj_timer % 7 == 0) {
                if (fall_forward == true || connected == true) {
                    image_index++;
                } else {
                    image_index--;
                }
            }
        } else {
            if (obj_timer % 5 == 0) {
                if (fall_forward == true || connected == true) {
                    image_index++;
                } else {
                    image_index--;
                }
            }
        }
		break;
}

if (connected && player_id.hitpause == true) {
    obj_timer--;
}

if ((image_index < 0 && obj_timer > 2) || image_index > my_max) {
	player_id.construct = noone;
	instance_destroy();
    exit;
}