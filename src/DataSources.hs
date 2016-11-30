{-|
Module      : DataSources
Description : Sources of nonsense to be processed by Gen.
Copyright   : (c) Andrew Michaud, 2016
License     : BSD3
Maintainer  : bots+haskell@gmail.com
Stability   : experimental
-}

module DataSources ( starters
           , starterPlurals
           , enders
           , fpLanguages
           , otherLanguages
           , fpComparisonPhrases
           , langComparisonPhrases
           , revComparisonPhrases
           ) where

-- Source material.
starters :: [String]
starters = [ "currying"
           , "functional programming"
           , "a monad"
           , "an applicative functor"
           , "currying"
           , "uncurrying"
           , "Haskell"
           , "GHC"
           , "the Glasgow Haskell Compiler"
           , "ML"
           , "point-free notation"
           , "IO"
           , "the IO monad"
           , "folding"
           , "mapping"
           , "tail recursion"
           ]

starterPlurals :: [String]
starterPlurals = [ "monads"
                 , "monoids"
                 , "applicative functors"
                 , "types"
                 , "kinds"
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
