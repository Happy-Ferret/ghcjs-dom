{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE ForeignFunctionInterface #-}
{-# LANGUAGE JavaScriptFFI #-}
-- For HasCallStack compatibility
{-# LANGUAGE ImplicitParams, ConstraintKinds, KindSignatures #-}
module GHCJS.DOM.JSFFI.Generated.GainNode
       (js_getGain, getGain, getGainUnsafe, getGainUnchecked,
        GainNode(..), gTypeGainNode)
       where
import Prelude ((.), (==), (>>=), return, IO, Int, Float, Double, Bool(..), Maybe, maybe, fromIntegral, round, fmap, Show, Read, Eq, Ord)
import qualified Prelude (error)
import Data.Typeable (Typeable)
import GHCJS.Types (JSVal(..), JSString)
import GHCJS.Foreign (jsNull)
import GHCJS.Foreign.Callback (syncCallback, asyncCallback, syncCallback1, asyncCallback1, syncCallback2, asyncCallback2, OnBlocked(..))
import GHCJS.Marshal (ToJSVal(..), FromJSVal(..))
import GHCJS.Marshal.Pure (PToJSVal(..), PFromJSVal(..))
import Control.Monad (void)
import Control.Monad.IO.Class (MonadIO(..))
import Data.Int (Int64)
import Data.Word (Word, Word64)
import Data.Maybe (fromJust)
import GHCJS.DOM.Types
import Control.Applicative ((<$>))
import GHCJS.DOM.EventTargetClosures (EventName, unsafeEventName)
import GHCJS.DOM.JSFFI.Generated.Enums
 
foreign import javascript unsafe "$1[\"gain\"]" js_getGain ::
        GainNode -> IO (Nullable AudioParam)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/GainNode.gain Mozilla GainNode.gain documentation> 
getGain :: (MonadIO m) => GainNode -> m (Maybe AudioParam)
getGain self = liftIO (nullableToMaybe <$> (js_getGain (self)))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/GainNode.gain Mozilla GainNode.gain documentation> 
getGainUnsafe ::
              (MonadIO m, HasCallStack) => GainNode -> m AudioParam
getGainUnsafe self
  = liftIO
      ((nullableToMaybe <$> (js_getGain (self))) >>=
         maybe (Prelude.error "Nothing to return") return)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/GainNode.gain Mozilla GainNode.gain documentation> 
getGainUnchecked :: (MonadIO m) => GainNode -> m AudioParam
getGainUnchecked self
  = liftIO (fromJust . nullableToMaybe <$> (js_getGain (self)))