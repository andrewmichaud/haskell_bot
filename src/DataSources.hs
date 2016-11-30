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
                   , whatIsMonad
                   ) where

-- Source material.
starters :: [String]
starters = [ "currying"
           , "functional programming"
           , "a monad"
           , "an applicative functor"
           , "currying"
           , "uncurrying"
           , "GHC"
           , "the Glasgow Haskell Compiler"
           , "ML"
           , "point-free notation"
           , "the IO monad"
           , "folding"
           , "mapping"
           , "tail recursion"
           , "tail call"
           , "tail call optimization"
           , "foldr"
           , "foldl"
           , "a thunk"
           , "lazy evaluation"
           , "eager evaluation"
           , "the lambda calculus"
           , "type safety"
           , "type theory"
           ] ++ fpLanguages

starterPlurals :: [String]
starterPlurals = [ "monads"
                 , "monoids"
                 , "applicative functors"
                 , "types"
                 , "kinds"
                 , "thunks"
                 , "tail calls"
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
         , "🔥"
         , "🔥🗑"
         , "🗑"
         , "✊🍆"
         , "complete garbage"
         , "literal masturbation"
         , "better than OOP"
         , "worse than Object Oriented Programming"
         , "worse than Imperative Programming"
         , "better than Logic Programming"
         , "is comparable to Declarative Programming"
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
         , "only used by academics"
         , "basically a toy, for babies"
         , "is for children"
         , "not OK"
         , "is for serious programmers only"
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
                      , "obsoletes"
                      , "is obsoleted by"
                      , "is much better than"
                      , "is good, but it's no"
                      , "is alright, but what you really want is"
                      , "- seriously? Why not"
                      , "- really? You should use"
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
                 , "LOLCODE"
                 , "Whitespace"
                 , "INTERCAL"
                 , "GolfScript"
                 , "Befunge"
                 , "A Turing Machine"
                 , "A Pushdown Automaton"
                 , "Regular Expressions"
                 , "Shakespeare"
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
                 , "Malbolge"
                 , "Assembly"
                 , "Lisp"
                 , "Racket"
                 , "R"
                 , "COBOL"
                 , "Shellscript"
                 , "PHP"
                 , "Objective-C"
                 , "VimL"
                 , "Go"
                 , "TeX"
                 , "Swift"
                 , "Matlab"
                 , "Arduino"
                 , "PowerShell"
                 ]

langComparisonPhrases :: [String]
langComparisonPhrases = [ "is shit, but it's better than"
                        , "isn't nearly as bad as"
                        , "is so much better than"
                        , "really destroys"
                        , "makes me so much happier than working in"
                        , "is much nicer to work with than"
                        , "isn't as bad as"
                        ]

revComparisonPhrases :: [String]
revComparisonPhrases = [ "blows, I wish I was still using"
                       , "isn't the worst, but I'd rather be using"
                       , "is blown out of the water by"
                       , "is so much more painful to work in than"
                       , "is so much worse than"
                       , "actively causes me pain, unlike"
                       , "should be reimplemented in"
                       , "should be abandoned. Instead, we should all use"
                       , "is a poor substitute for"
                       ]

-- Sourced from my head, search definitions, and StackOverflow.
whatIsMonad :: [String]
whatIsMonad = [ "masturbation"
              , "mathematical nonsense"
              , "a single-celled organism, especially a flagellate protozoan, or a single cell"
              , "a single unit; the number one"
              , "an indivisible and hence ultimately simple entity, such as an atom or a person"
              , "a computation builder"
              , "a parametrized type which is an instance of the Monad type class"
              , "a box with a thing in it"
              , "a monoid in the category of endofunctors"
              , "for sale"
              , "a toy"
              , "a serious tool"
              , "a boxing type"
              , "where IO happens"
              , "where impure things happen"
              , "Maybe"
              , "IO"
              , "functional programming"
              , "a monad"
              , "imaginary"
              , "real"
              , "fake"
              , "illegal in three states"
              , "forbidden in most countries"
              , "illegal to export under US export control laws"
              , "9.99"

              -- TODO factor out noun definitions and go find a noun source
              , "a cat"
              , "a joke"
              , "a cucumber"
              ]
