if custom_clone {
    cancelinput("attack")
    cancelinput("special")
    cancelinput("jump")
    cancelinput("shield")
    cancelinput("strong")
    cancelinput("taunt")
    cancelinput("up")
    cancelinput("down")
    cancelinput("left")
    cancelinput("right")


    if (big_chungus)
{
			instance_destroy();
			exit;
}
}

#define cancelinput(n)
variable_instance_set(self, n+"_down", false)
variable_instance_set(self, n+"_pressed", false)