-- Do not manually edit this file, it was auto-generated by Graphqelm
-- https://github.com/dillonkearns/graphqelm


module Swapi.InputObject.Greeting exposing (..)

{-|

@docs Greeting, encode

-}

import Graphqelm.Field as Field exposing (Field)
import Graphqelm.Internal.Builder.Argument as Argument exposing (Argument)
import Graphqelm.Internal.Builder.Object as Object
import Graphqelm.Internal.Encode as Encode exposing (Value)
import Graphqelm.OptionalArgument exposing (OptionalArgument(Absent))
import Graphqelm.SelectionSet exposing (SelectionSet)
import Json.Decode as Decode
import Swapi.Enum.Language
import Swapi.InputObject.GreetingOptions
import Swapi.Interface
import Swapi.Object
import Swapi.Scalar
import Swapi.Union


{-| Encode a Greeting into a value that can be used as an argument.
-}
encode : Greeting -> Value
encode input =
    Encode.maybeObject
        [ ( "language", Encode.enum Swapi.Enum.Language.toString |> Encode.optional input.language ), ( "name", Encode.string input.name |> Just ), ( "options", Swapi.InputObject.GreetingOptions.encode |> Encode.optional input.options ) ]


{-| Type for the Greeting input object.
-}
type alias Greeting =
    { language : OptionalArgument Swapi.Enum.Language.Language, name : String, options : OptionalArgument Swapi.InputObject.GreetingOptions.GreetingOptions }
