switch jumpState {
    case JumpStates.idle :
        y = jumpStart
        if keyboard_check_pressed(vk_space){
            jumpState = JumpStates.jumping
        }
    break
    
    case JumpStates.jumping :
        vspeed = -jumpSpeed
        if y <= jumpMax
        || !keyboard_check(vk_space){
            jumpState = JumpStates.falling
        }
    break
    
    case JumpStates.falling :
        vspeed = jumpSpeed
        if y >= jumpStart {
            jumpState = JumpStates.idle
        }
    break
}

jumpAnim()
