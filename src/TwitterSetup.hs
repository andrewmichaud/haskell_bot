{-# LANGUAGE OverloadedStrings #-}
{-|
Module      : TwitterSetup
Description : Prepare for Tweeting.
Copyright   : (c) Andrew Michaud, 2016
License     : BSD3
Maintainer  : bots+haskell@mail.andrewmichaud.com
Stability   : experimental
-}

module TwitterSetup ( tokens
                    , credential
                    , twInfo
                    , manager
                    , tweet
                    ) where

import qualified Data.ByteString.Char8 as C
import qualified Data.Text as T
import qualified Web.Twitter.Conduit as TC
import qualified Web.Twitter.Types as TT

-- Store consumer key/secret for auth.
tokens :: String -> String -> TC.OAuth
tokens consumerKey consumerSecret = TC.twitterOAuth
    { TC.oauthConsumerKey = C.pack consumerKey
    , TC.oauthConsumerSecret = C.pack consumerSecret
    }

-- Store access key/secret for auth.
credential :: String -> String -> TC.Credential
credential accessToken accessSecret = TC.Credential
    [ ("oauth_token", C.pack accessToken)
    , ("oauth_token_secret", C.pack accessSecret)
    ]

-- Create twInfo object, used to do Twitter API stuff.
twInfo :: TC.OAuth -> TC.Credential -> TC.TWInfo
twInfo tokens credential = TC.setCredential tokens credential TC.def

manager :: IO TC.Manager
manager = TC.newManager TC.tlsManagerSettings

tweet :: TC.TWInfo -> TC.Manager -> String -> IO TT.Status
tweet twInfo mgr = TC.call twInfo mgr . TC.update . T.pack
