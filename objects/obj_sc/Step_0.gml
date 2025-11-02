if (keyboard_check(ord("A")) && keyboard_check(ord("D"))) {
    sprite_index = spr_idle_sc;
} else {
    if (keyboard_check(ord("D"))) {
        if (!place_meeting(x + hspd, y, obj_wall)) {
            x += hspd;
        }
        sprite_index = spr_walking_sc;
        image_xscale = 1;
    } else if (keyboard_check(ord("A"))) {
        if (!place_meeting(x - hspd, y, obj_wall)) {
            x -= hspd;
        }
        sprite_index = spr_walking_sc;
        image_xscale = -1;
    } else {
        sprite_index = spr_idle_sc;
    }
}
