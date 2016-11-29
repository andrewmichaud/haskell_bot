{-|
Module      : Main
Description : Handles tweeting
Copyright   : (c) Andrew Michaud, 2016
License     : BSD3
Maintainer  : bots+haskell@gmail.com
Stability   : experimental

this tweets
-}

module Main (

main

) where

import System.IO.Unsafe as Uh
import System.Random as Rand

import Gen

-- | Main function, runs application.
main :: IO ()
main = do
    let l = length Gen.phraseOptions

    i <- Rand.getStdRandom (Rand.randomR (0, l - 1))

    -- Phrase handler gives us a list of lists of potential phrase parts.
    -- We use randomness to decide which phrase parts to pick, and assemble a phrase.
    let phraseOption      = Gen.phraseOptions !! i
        unprocessedPhrase = Gen.phraseHandler phraseOption
        randomHelper l    = Rand.getStdRandom (Rand.randomR (0, length l - 1))

    randoms <- mapM randomHelper unprocessedPhrase

    let indexHelper l i = l !! i
        phraseParts     = zipWith indexHelper unprocessedPhrase randoms
        phrase          = unwords phraseParts ++ "."

    putStrLn phrase
