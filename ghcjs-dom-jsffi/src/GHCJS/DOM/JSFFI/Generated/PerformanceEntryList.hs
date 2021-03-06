{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE ForeignFunctionInterface #-}
{-# LANGUAGE JavaScriptFFI #-}
-- For HasCallStack compatibility
{-# LANGUAGE ImplicitParams, ConstraintKinds, KindSignatures #-}
module GHCJS.DOM.JSFFI.Generated.PerformanceEntryList
       (js_item, item, item_, itemUnsafe, itemUnchecked, js_getLength,
        getLength, PerformanceEntryList(..), gTypePerformanceEntryList)
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
 
foreign import javascript unsafe "$1[\"item\"]($2)" js_item ::
        PerformanceEntryList -> Word -> IO (Nullable PerformanceEntry)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/PerformanceEntryList.item Mozilla PerformanceEntryList.item documentation> 
item ::
     (MonadIO m) =>
       PerformanceEntryList -> Word -> m (Maybe PerformanceEntry)
item self index
  = liftIO (nullableToMaybe <$> (js_item (self) index))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/PerformanceEntryList.item Mozilla PerformanceEntryList.item documentation> 
item_ :: (MonadIO m) => PerformanceEntryList -> Word -> m ()
item_ self index = liftIO (void (js_item (self) index))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/PerformanceEntryList.item Mozilla PerformanceEntryList.item documentation> 
itemUnsafe ::
           (MonadIO m, HasCallStack) =>
             PerformanceEntryList -> Word -> m PerformanceEntry
itemUnsafe self index
  = liftIO
      ((nullableToMaybe <$> (js_item (self) index)) >>=
         maybe (Prelude.error "Nothing to return") return)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/PerformanceEntryList.item Mozilla PerformanceEntryList.item documentation> 
itemUnchecked ::
              (MonadIO m) => PerformanceEntryList -> Word -> m PerformanceEntry
itemUnchecked self index
  = liftIO (fromJust . nullableToMaybe <$> (js_item (self) index))
 
foreign import javascript unsafe "$1[\"length\"]" js_getLength ::
        PerformanceEntryList -> IO Word

-- | <https://developer.mozilla.org/en-US/docs/Web/API/PerformanceEntryList.length Mozilla PerformanceEntryList.length documentation> 
getLength :: (MonadIO m) => PerformanceEntryList -> m Word
getLength self = liftIO (js_getLength (self))