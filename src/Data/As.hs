{- |
     @t'As'@ is morally identical to @Tagged@ from the @tagged@ package, except the latter
     is rendered unusable for serialization tagging by existing libraries.
 -}

module Data.As
  ( As
  , unAs
  ) where

import           Data.As.Internal
