var orbs = 0;
for (var i = 0; i < 3; i++) if (orb_slots[i] != 0) orbs++;
if (variable_instance_exists(self, "ai_going_to_attack"))
{
    if (ai_going_to_attack)
    {
        if ((attack == AT_NSPECIAL || attack == AT_FSPECIAL) && orbs == 0)
        {
            ai_going_to_attack = false;
        }
    }
}
if (custom_clone)
{
    attack_down = false;
    special_down = false;
    jump_down = false;
    shield_down = false;
    strong_down = false;
    taunt_down = owner.taunt_down;
    up_down = false;
    down_down = owner.down_down ? owner.taunt_down : 0;
    left_down = false;
    right_down = false;
    
    attack_pressed = false;
    special_pressed = false;
    jump_pressed = false;
    tap_jump_pressed = false;
    shield_pressed = false;
    taunt_pressed = owner.taunt_pressed;
    up_pressed = false;
    down_pressed = false;
    left_pressed = false;
    right_pressed = false;
    
    down_hard_pressed = false;
    up_hard_pressed = false;
    left_hard_pressed = false;
    right_hard_pressed = false;
    joy_dir = 0;
    joy_pad_idle = false;
    
    up_strong_pressed = false;
    down_strong_pressed = false;
    left_strong_pressed = false;
    right_strong_pressed = false;
    
    up_strong_down = false;
    down_strong_down = false;
    left_strong_down = false;
    right_strong_down = false;
    if (jump_to_attack == 6)
    {
        jump_down = true;
        jump_pressed = true;
    }
    if (jump_to_attack == 1)
    {
        attack_down = true;
        attack_pressed = true;
    }
}