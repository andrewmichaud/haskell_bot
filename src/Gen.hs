{-|
Module      : Gen
Description : Produces nonsense
Copyright   : (c) Andrew Michaud, 2016
License     : BSD3
Maintainer  : bots+haskell@gmail.com
Stability   : experimental
-}

module Gen ( phraseHandler
           , phraseOptions
           , sentence
) where

import qualified Data.Char as C

import qualified DataSources as D

phraseOptions :: [String]
phraseOptions = [ "x is y"
                , "x are y"
                , "FP comp"
                , "startup"
                , "lang comp"
                , "rev comp"
                , "monads"
                ]

-- Handle different kinds of phrases.
phraseHandler :: String -> [[String]]
phraseHandler "x is y"    = [D.starters, ["is"], D.enders]
phraseHandler "x are y"   = [D.starterPlurals, ["are"], D.enders]
phraseHandler "FP comp"   = [D.fpLanguages, D.fpComparisonPhrases, D.fpLanguages]
phraseHandler "startup"   = [["my new startup runs entirely on a"], D.fpLanguages, ["stack"]]
phraseHandler "lang comp" = [D.fpLanguages, D.langComparisonPhrases, D.otherLanguages]
phraseHandler "rev comp"  = [D.otherLanguages, D.revComparisonPhrases, D.fpLanguages]
phraseHandler "monads"    = [map (unwords . (`replicate` "monads")) [1..(tweetPack "monads")]]

-- Helpers.

-- Determine how many of a word can fit into a tweet. Assumes a space after every instance of a
-- word and a period at the end. Rounds down.
tweetPack :: Foldable t => t a -> Int
tweetPack = div 140 . (+1) . foldr (\_ x -> 1 + x) 0

-- Turn a series of words into a sentence (capitalize first letter, add period).
sentence :: String -> String
sentence = flip (++) "." . (\x -> C.toUpper (head x) : tail x)
