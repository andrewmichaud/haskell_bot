{-|
Module      : Main
Description : Handles tweeting
Copyright   : (c) Andrew Michaud, 2016
License     : BSD3
Maintainer  : bots+haskell@gmail.com
Stability   : experimental

this tweets
-}

module Main (main) where

import qualified System.Random as R

import qualified Gen as G

-- | Main function, runs application.
main :: IO ()
main = do
    -- Pick phrase option at random.
    let l = length G.phraseOptions
    i <- R.getStdRandom (R.randomR (0, l - 1))

    -- Phrase handler gives us a list of lists of potential phrase parts.
    -- We use randomness to decide which phrase parts to pick, and assemble a phrase.
    let phraseOption      = G.phraseOptions !! i
        unprocessedPhrase = G.phraseHandler phraseOption
        randomHelper l    = R.getStdRandom $ R.randomR (0, length l - 1)

    -- Get source for random phrase.
    randoms <- mapM randomHelper unprocessedPhrase

    -- Select randomly until we have a single list of parts of a phrase.
    let indexHelper l = (l !!)
        phraseParts     = zipWith indexHelper unprocessedPhrase randoms
        phrase          = unwords phraseParts

    -- Process phrase into sentence and output.
    putStrLn $ G.sentence phrase
