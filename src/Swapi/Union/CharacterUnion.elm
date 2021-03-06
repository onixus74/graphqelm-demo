-- Do not manually edit this file, it was auto-generated by Graphqelm
-- https://github.com/dillonkearns/graphqelm


module Swapi.Union.CharacterUnion exposing (..)

{-| Code for retrieving fields from a CharacterUnion in a type-safe way.
@docs selection, onHuman, onDroid
-}

import Graphqelm.Field as Field exposing (Field)
import Graphqelm.Internal.Builder.Argument as Argument exposing (Argument)
import Graphqelm.Internal.Builder.Object as Object
import Graphqelm.Internal.Encode as Encode exposing (Value)
import Graphqelm.OptionalArgument exposing (OptionalArgument(Absent))
import Graphqelm.SelectionSet exposing (FragmentSelectionSet(FragmentSelectionSet), SelectionSet(SelectionSet))
import Json.Decode as Decode
import Swapi.Interface
import Swapi.Object
import Swapi.Union


{-| Specify fields to use for the object.
-}
selection : (Maybe typeSpecific -> constructor) -> List (FragmentSelectionSet typeSpecific Swapi.Union.CharacterUnion) -> SelectionSet constructor Swapi.Union.CharacterUnion
selection constructor typeSpecificDecoders =
    Object.unionSelection typeSpecificDecoders constructor


{-| Select the fields to use when the type is Human.
-}
onHuman : SelectionSet decodesTo Swapi.Object.Human -> FragmentSelectionSet decodesTo Swapi.Union.CharacterUnion
onHuman (SelectionSet fields decoder) =
    FragmentSelectionSet "Human" fields decoder


{-| Select fields to use when the type is Droid.
-}
onDroid : SelectionSet decodesTo Swapi.Object.Droid -> FragmentSelectionSet decodesTo Swapi.Union.CharacterUnion
onDroid (SelectionSet fields decoder) =
    FragmentSelectionSet "Droid" fields decoder
