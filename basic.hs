{-# LANGUAGE NoMonomorphismRestriction #-}
{-# LANGUAGE FlexibleContexts          #-}
{-# LANGUAGE TypeFamilies              #-}

import Diagrams.Prelude
import Diagrams.Backend.SVG.CmdLine
-- or:
-- import Diagrams.Backend.xxx.CmdLine
-- where xxx is the backend you would like to use.

myCircle :: Diagram B
myCircle = circle 1

main = mainWith (fromOffsetsEx <> fromSegments [straight (r2 (1,1))] <> fromSegments [straight (r2 (-1,1))])



fromOffsetsEx :: Diagram B
fromOffsetsEx = fromOffsets
  [ unitX
  ]
  # centerXY # pad 1
