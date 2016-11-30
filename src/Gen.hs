{-|
Module      : Gen
Description : Produces nonsense
Copyright   : (c) Andrew Michaud, 2016
License     : BSD3
Maintainer  : bots+haskell@mail.andrewmichaud.com
Stability   : experimental
-}

module Gen ( phraseHandler
           , phraseOptions
           , sentence
) where

import qualified Data.Char as C

import qualified DataSources as D

-- TODO implement a better way to reduce frequency of "monads".
phraseOptions :: [String]
phraseOptions = [ "x is y"
                , "x is y"
                , "x are y" -- not as many options here, so do less
                , "FP comp"
                , "FP comp"
                , "startup"
                , "startup"
                , "lang comp"
                , "lang comp"
                , "rev comp"
                , "rev comp"
                , "monads"
                , "what is monad"
                , "what is monad"
                , "what is monad"
                ]

-- Handle different kinds of phrases.
phraseHandler :: String -> [[String]]
phraseHandler "x is y"        = [D.starters, ["is"], D.enders]
phraseHandler "x are y"       = [D.starterPlurals, ["are"], D.enders]
phraseHandler "FP comp"       = [D.fpLanguages, D.fpComparisonPhrases, D.fpLanguages]
phraseHandler "startup"       = [["my new startup runs entirely on a"], D.fpLanguages, ["stack"]]
phraseHandler "lang comp"     = [D.fpLanguages, D.langComparisonPhrases, D.otherLanguages]
phraseHandler "rev comp"      = [D.otherLanguages, D.revComparisonPhrases, D.fpLanguages]
phraseHandler "monads"        = [map (unwords . (`replicate` "monads")) [1..(tweetPack "monads")]]
phraseHandler "what is monad" = [["What is a monad, you ask? It is"], D.whatIsMonad]
phraseHandler _               = phraseHandler "monads"

-- Helpers.

-- Determine how many of a word can fit into a tweet. Assumes a space after every instance of a
-- word and a period at the end. Rounds down.
tweetPack :: Foldable t => t a -> Int
tweetPack = div 140 . (+1) . foldr (\_ x -> 1 + x) 0

-- Turn a series of words into a sentence (capitalize first letter, add period).
sentence :: String -> String
sentence = flip (++) "." . (\x -> C.toUpper (head x) : tail x)
