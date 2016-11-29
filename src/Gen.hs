{-|
Module      : Gen
Description : Produces nonsense
Copyright   : (c) Andrew Michaud, 2016
License     : BSD3
Maintainer  : bots+haskell@gmail.com
Stability   : experimental
-}

module Gen (
    phraseHandler,
    phraseOptions

) where

import qualified Data.Char as Char
import qualified System.IO.Unsafe as Uh
import qualified System.Random as Rand

-- Source material.
starters :: [String]
starters = [ "Currying"
           , "Functional programming"
           , "A monad"
           , "An applicative functor"
           , "Currying"
           , "Uncurrying"
           , "Haskell"
           , "GHC"
           , "The Glasgow Haskell Compiler"
           , "ML"
           , "Point-free notation"
           , "IO"
           , "the IO monad"
           , "Folding"
           , "Mapping"
           , "Tail recursion"
           ]

starterPlurals :: [String]
starterPlurals = [ "Monads"
                 , "Monoids"
                 , "Applicative functors"
                 , "Types"
                 , "Kinds"
                 ]

enders :: [String]
enders = [ "masturbatory"
         , "the future"
         , "bullshit"
         , "fun"
         , "overrated"
         , "underrated"
         , "for assholes"
         , "for cool people"
         , "pure"
         , "impure"
         , "✊🍆"
         , "complete garbage"
         , "literal masturbation"
         , "better than OOP"
         , "worse than Object Oriented Programming"
         , "safe"
         , "unsafe"
         , "useless for real programs"
         , "not production-ready"
         , "imperative programming"
         , "trash"
         , "great"
         , "fantastic"
         , "OK I guess"
         , "fine"
         , "not fine"
         ]

fpLanguages :: [String]
fpLanguages = [ "ML"
              , "Caml"
              , "Haskell"
              , "Curry"
              , "Frege"
              , "Elm"
              , "Idris"
              ]

fpComparisonPhrases :: [String]
fpComparisonPhrases = [ "is no"
                      , "is much better than"
                      , "is good, but it's no"
                      , "is alright, but what you really want is"
                      , "- seriously? Why not"
                      ]

otherLanguages :: [String]
otherLanguages = [ "Python"
                 , "Perl"
                 , "Ruby"
                 , "JavaScript"
                 , "CoffeeScript"
                 , "C"
                 , "C++"
                 , "C#"
                 , "Clojure"
                 , "F#"
                 , "Coq"
                 , "Prolog"
                 , "Brainfuck"
                 , "Java"
                 , "Scala"
                 , "D"
                 , "Groovy"
                 , "Erlang"
                 , "Rust"
                 , "Lisp"
                 , "Racket"
                 , "R"
                 , "COBOL"
                 , "Bash"
                 ]

langComparisonPhrases :: [String]
langComparisonPhrases = [ "is shit, but it's better than"
                        , "isn't nearly as bad as"
                        , "is so much better than"
                        , "really destroys"
                        , "makes me so much happier than working in"
                        ]

revComparisonPhrases :: [String]
revComparisonPhrases = [ "blows, I wish I was still using"
                       , "isn't the worst, but I'd rather be using"
                       ]

phraseOptions :: [String]
phraseOptions = [ "x is y"
                , "x are y"
                , "FP comparison"
                , "startup"
                , "comparison"
                , "rev comparison"
                ]

-- Handle different kinds of phrases.
phraseHandler :: String -> [[String]]
phraseHandler "x is y"         = [starters, ["is"], enders]
phraseHandler "x are y"        = [starterPlurals, ["are"], enders]
phraseHandler "FP comparison"  = [fpLanguages, fpComparisonPhrases, fpLanguages]
phraseHandler "startup"        = [["My new startup runs entirely on a"] , fpLanguages , ["stack"]]
phraseHandler "comparison"     = [fpLanguages, langComparisonPhrases, otherLanguages]
phraseHandler "rev comparison" = [otherLanguages, revComparisonPhrases, fpLanguages]

-- TODO
-- monads monads monads
-- what is a monad? it's XXXX
-- flesh out existing phrases

-- currying
-- functional programming
-- monad
-- monads
-- functor
-- applicative functor
-- uncurry
-- kind
-- kinds
-- type
-- typeclasses
-- impure
-- tail recursion
-- The Glasgow Haskell Compiler
-- GHC
-- purity
-- impure

-- "Functional programming" is "really" just "monads".
-- "Functional programming" is "masturbating".
-- "Haskell" is "masturbating".
-- A monad|functor is (really just) a "NOUN".
-- Monads/functors are "NOUNS"
