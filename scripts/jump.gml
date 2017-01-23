if jumpState = JumpStates.idle {
    sprite_index = sPlayer
    image_speed = 0.05
    vspeed = 0
    y = jumpStart
    if keyboard_check_pressed(vk_space){
        jumpState = JumpStates.jumping
    }
}

if jumpState = JumpStates.jumping {
    sprite_index = sPlayer_up
    image_speed = 0
    image_index = 0
    vspeed = -jumpSpeed
    if y <= jumpMax
    || !keyboard_check(vk_space){
        jumpState = JumpStates.falling
    }
}

if jumpState = JumpStates.falling {
    sprite_index = sPlayer_down
    image_speed = 0
    image_index = 0
    vspeed = jumpSpeed
    if y >= jumpStart {
        jumpState = JumpStates.idle
    }
}
