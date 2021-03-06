{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE ForeignFunctionInterface #-}
{-# LANGUAGE JavaScriptFFI #-}
-- For HasCallStack compatibility
{-# LANGUAGE ImplicitParams, ConstraintKinds, KindSignatures #-}
module GHCJS.DOM.JSFFI.Generated.SVGAnimatedTransformList
       (js_getBaseVal, getBaseVal, getBaseValUnsafe, getBaseValUnchecked,
        js_getAnimVal, getAnimVal, getAnimValUnsafe, getAnimValUnchecked,
        SVGAnimatedTransformList(..), gTypeSVGAnimatedTransformList)
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
 
foreign import javascript unsafe "$1[\"baseVal\"]" js_getBaseVal ::
        SVGAnimatedTransformList -> IO (Nullable SVGTransformList)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGAnimatedTransformList.baseVal Mozilla SVGAnimatedTransformList.baseVal documentation> 
getBaseVal ::
           (MonadIO m) =>
             SVGAnimatedTransformList -> m (Maybe SVGTransformList)
getBaseVal self
  = liftIO (nullableToMaybe <$> (js_getBaseVal (self)))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGAnimatedTransformList.baseVal Mozilla SVGAnimatedTransformList.baseVal documentation> 
getBaseValUnsafe ::
                 (MonadIO m, HasCallStack) =>
                   SVGAnimatedTransformList -> m SVGTransformList
getBaseValUnsafe self
  = liftIO
      ((nullableToMaybe <$> (js_getBaseVal (self))) >>=
         maybe (Prelude.error "Nothing to return") return)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGAnimatedTransformList.baseVal Mozilla SVGAnimatedTransformList.baseVal documentation> 
getBaseValUnchecked ::
                    (MonadIO m) => SVGAnimatedTransformList -> m SVGTransformList
getBaseValUnchecked self
  = liftIO (fromJust . nullableToMaybe <$> (js_getBaseVal (self)))
 
foreign import javascript unsafe "$1[\"animVal\"]" js_getAnimVal ::
        SVGAnimatedTransformList -> IO (Nullable SVGTransformList)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGAnimatedTransformList.animVal Mozilla SVGAnimatedTransformList.animVal documentation> 
getAnimVal ::
           (MonadIO m) =>
             SVGAnimatedTransformList -> m (Maybe SVGTransformList)
getAnimVal self
  = liftIO (nullableToMaybe <$> (js_getAnimVal (self)))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGAnimatedTransformList.animVal Mozilla SVGAnimatedTransformList.animVal documentation> 
getAnimValUnsafe ::
                 (MonadIO m, HasCallStack) =>
                   SVGAnimatedTransformList -> m SVGTransformList
getAnimValUnsafe self
  = liftIO
      ((nullableToMaybe <$> (js_getAnimVal (self))) >>=
         maybe (Prelude.error "Nothing to return") return)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGAnimatedTransformList.animVal Mozilla SVGAnimatedTransformList.animVal documentation> 
getAnimValUnchecked ::
                    (MonadIO m) => SVGAnimatedTransformList -> m SVGTransformList
getAnimValUnchecked self
  = liftIO (fromJust . nullableToMaybe <$> (js_getAnimVal (self)))