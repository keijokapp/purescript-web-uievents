module Web.UIEvent.PointerEvent
  ( PointerEvent
  , fromUIEvent
  , fromEvent
  , toUIEvent
  , toEvent
  , screenX
  , screenY
  , clientX
  , clientY
  , pageX
  , pageY
  , ctrlKey
  , shiftKey
  , altKey
  , metaKey
  , button
  , relatedTarget
  , buttons
  , getModifierState
  , pointerId
  , width
  , height
  , pressure
  , tangentialPressure
  , tiltX
  , tiltY
  , twist
  , pointerType
  , isPrimary
  ) where

import Prelude

import Data.Maybe (Maybe)
import Data.Nullable (Nullable, toMaybe)
import Effect (Effect)
import Unsafe.Coerce (unsafeCoerce)
import Web.Event.Event (Event)
import Web.Event.EventTarget (EventTarget)
import Web.Internal.FFI (unsafeReadProtoTagged)
import Web.UIEvent.UIEvent (UIEvent)

foreign import data PointerEvent :: Type

fromUIEvent :: UIEvent -> Maybe PointerEvent
fromUIEvent = unsafeReadProtoTagged "PointerEvent"

fromEvent :: Event -> Maybe PointerEvent
fromEvent = unsafeReadProtoTagged "PointerEvent"

toUIEvent :: PointerEvent -> UIEvent
toUIEvent = unsafeCoerce

toEvent :: PointerEvent -> Event
toEvent = unsafeCoerce

foreign import screenX :: PointerEvent -> Int

foreign import screenY :: PointerEvent -> Int

foreign import clientX :: PointerEvent -> Int

foreign import clientY :: PointerEvent -> Int

foreign import pageX :: PointerEvent -> Int

foreign import pageY :: PointerEvent -> Int

foreign import ctrlKey :: PointerEvent -> Boolean

foreign import shiftKey :: PointerEvent -> Boolean

foreign import altKey :: PointerEvent -> Boolean

foreign import metaKey :: PointerEvent -> Boolean

foreign import button :: PointerEvent -> Int

foreign import _relatedTarget :: PointerEvent -> Nullable EventTarget

relatedTarget :: PointerEvent -> Maybe EventTarget
relatedTarget = toMaybe <$> _relatedTarget

foreign import buttons :: PointerEvent -> Int

foreign import getModifierState
  :: String
  -> PointerEvent
  -> Effect Boolean

foreign import pointerId :: PointerEvent -> Int

foreign import width :: PointerEvent -> Int

foreign import height :: PointerEvent -> Int

foreign import pressure :: PointerEvent -> Number

foreign import tangentialPressure :: PointerEvent -> Number

foreign import tiltX :: PointerEvent -> Number

foreign import tiltY :: PointerEvent -> Number

foreign import twist :: PointerEvent -> Number

foreign import pointerType :: PointerEvent -> String

foreign import isPrimary :: PointerEvent -> Boolean
