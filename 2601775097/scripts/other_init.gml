//other init

if (instance_exists(oTestPlayer)) exit; //don't run on playtesting

holyburning = false;
holyburner_id = 0;
holyburn_timer = 0;

lightstun_type = 0; //0 = not lightstunned | 1 = pre-lightstun timer | 2 = frozen
lightstun_timer = 0;