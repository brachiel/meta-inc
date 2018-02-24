module Incremental where

-- |Incremental game state with resources r and flags f.
data IncState r f = IncState r f

-- |Function type that handles a GameTick. Takes a game state and gives one back
type TickHandler s = s -> s

type IncGame s = { initialState :: s, tickHandler :: TickHandler s }



