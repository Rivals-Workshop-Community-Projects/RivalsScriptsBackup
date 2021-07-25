//FAIL
last_choice = 0;
fail_timer = 0;
if (other_has_fail == false){
    fail_text = random_func(0, 6, true);
    switch (fail_text){
            case 0:
            fail_text = string("Just parry bro.");
            break;
            case 1:
            fail_text = string("Bruhm oment");
            break;
            case 2:
            fail_text = string("Have you ever heard of DI before?");
            break;
            case 3:
            fail_text = string("Adapt.");
            break;
            case 4:
            fail_text = string("Fix your game, Giik.");
            break;
            case 5:
            fail_text = string("Hopefully that didn't cost you a set just then.");
            break;
            case 6:
            fail_text = string("Hopefully that didn't cost you a set just then.");
            break;
    }
}