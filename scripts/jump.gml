switch jumpState {
    case JumpStates.idle :
        y = jumpStart
        jumpDouble = true
        if jumping{
            jumpState = JumpStates.jumping
        }
    break
    
    case JumpStates.jumping :
        vspeed = -jumpSpeed
        if y <= jumpMax
        || !jumping{
            jumpState = JumpStates.falling
        }
    break
    
    case JumpStates.falling :
        vspeed = jumpSpeed
        if y >= jumpStart {
            jumpState = JumpStates.idle
        }
        
        if jumping{
            if jumpDouble {
                jumpState = JumpStates.jumping
                jumpDouble = false
            }
        }
    break
}
if global.gamestate = GameState.playing {
    jumpAnim()
}
