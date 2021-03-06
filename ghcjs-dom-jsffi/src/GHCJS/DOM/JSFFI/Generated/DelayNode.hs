{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE ForeignFunctionInterface #-}
{-# LANGUAGE JavaScriptFFI #-}
-- For HasCallStack compatibility
{-# LANGUAGE ImplicitParams, ConstraintKinds, KindSignatures #-}
module GHCJS.DOM.JSFFI.Generated.DelayNode
       (js_getDelayTime, getDelayTime, getDelayTimeUnsafe,
        getDelayTimeUnchecked, DelayNode(..), gTypeDelayNode)
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
 
foreign import javascript unsafe "$1[\"delayTime\"]"
        js_getDelayTime :: DelayNode -> IO (Nullable AudioParam)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/DelayNode.delayTime Mozilla DelayNode.delayTime documentation> 
getDelayTime :: (MonadIO m) => DelayNode -> m (Maybe AudioParam)
getDelayTime self
  = liftIO (nullableToMaybe <$> (js_getDelayTime (self)))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/DelayNode.delayTime Mozilla DelayNode.delayTime documentation> 
getDelayTimeUnsafe ::
                   (MonadIO m, HasCallStack) => DelayNode -> m AudioParam
getDelayTimeUnsafe self
  = liftIO
      ((nullableToMaybe <$> (js_getDelayTime (self))) >>=
         maybe (Prelude.error "Nothing to return") return)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/DelayNode.delayTime Mozilla DelayNode.delayTime documentation> 
getDelayTimeUnchecked :: (MonadIO m) => DelayNode -> m AudioParam
getDelayTimeUnchecked self
  = liftIO (fromJust . nullableToMaybe <$> (js_getDelayTime (self)))