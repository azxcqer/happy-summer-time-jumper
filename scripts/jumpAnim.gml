switch jumpState {
    case JumpStates.idle:
        sprite_index = sPlayer
        image_speed = 0.05
        vspeed = 0
    break    
    
    default:        
        image_speed = 0
        image_index = 0
        
        switch jumpState {
            case JumpStates.falling:
                sprite_index = sPlayer_down
            break
            
            case JumpStates.jumping:
                sprite_index = sPlayer_up
            break
        
        }
        
    break

}
