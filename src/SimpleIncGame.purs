module SimpleIncGame where

import Prelude

import Incremental (IncState(..), TickHandler, IncGame)

-- All 
type SResource = { money :: Int, workers :: Int }
type SFlags = Unit
type SState = IncState SResource SFlags

sInitial :: SState
sInitial = (IncState { money: 0, workers: 1 }) unit

sTick :: TickHandler SState
sTick (IncState r f) = IncState (r { money=r.money+r.workers }) f

sGame :: IncGame SState
sGame = { initialState: sInitial
        , tickHandler: sTick
        }


addWorker :: SState -> SState
addWorker (IncState s f) = IncState (s { workers=s.workers+1 }) f

