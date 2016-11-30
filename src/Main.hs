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
import qualified Control.Monad as CM
import qualified Control.Concurrent as CC
import qualified Data.Char as DC

import qualified Gen as G
import qualified TwitterSetup as T

sleepMicros:: Int
sleepMicros = 60 * 60 * 1000000

-- | Main function, runs application.
main :: IO ()
main = CM.forever $ do
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
        sentence        = G.sentence phrase

    -- Show what we're tweeting.
    putStrLn "Will be tweeting:"
    putStrLn sentence

    -- TODO I think this can be a bit cleaner.

    -- Get secrets. Make sure to cut newlines.
    let secretsDir = "SECRETS/"
        strip = CM.fmap $ reverse . dropWhile DC.isSpace . reverse

    accessToken <- strip $ readFile $ secretsDir ++ "ACCESS_TOKEN"
    accessSecret <- strip $ readFile $ secretsDir ++ "ACCESS_SECRET"
    consumerKey <- strip $ readFile $ secretsDir ++ "CONSUMER_KEY"
    consumerSecret <- strip $ readFile $ secretsDir ++ "CONSUMER_SECRET"

    -- Get OAuth credential variables.
    let tok = T.tokens consumerKey consumerSecret
        cred = T.credential accessToken accessSecret

    -- Create API request manager.
    mgr <- T.manager

    -- Generate twInfo, which can be used to do tweeting.
    let twInfo = T.twInfo tok cred

    status <- T.tweet twInfo mgr sentence

    putStrLn "Done!"
    putStrLn $ "Sleeping for " ++ show sleepMicros ++ " microseconds."
    CC.threadDelay sleepMicros
