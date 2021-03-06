{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE ForeignFunctionInterface #-}
{-# LANGUAGE JavaScriptFFI #-}
-- For HasCallStack compatibility
{-# LANGUAGE ImplicitParams, ConstraintKinds, KindSignatures #-}
module GHCJS.DOM.JSFFI.Generated.SVGExternalResourcesRequired
       (js_getExternalResourcesRequired, getExternalResourcesRequired,
        getExternalResourcesRequiredUnsafe,
        getExternalResourcesRequiredUnchecked,
        SVGExternalResourcesRequired(..),
        gTypeSVGExternalResourcesRequired)
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
 
foreign import javascript unsafe
        "$1[\"externalResourcesRequired\"]" js_getExternalResourcesRequired
        :: SVGExternalResourcesRequired -> IO (Nullable SVGAnimatedBoolean)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGExternalResourcesRequired.externalResourcesRequired Mozilla SVGExternalResourcesRequired.externalResourcesRequired documentation> 
getExternalResourcesRequired ::
                             (MonadIO m) =>
                               SVGExternalResourcesRequired -> m (Maybe SVGAnimatedBoolean)
getExternalResourcesRequired self
  = liftIO
      (nullableToMaybe <$> (js_getExternalResourcesRequired (self)))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGExternalResourcesRequired.externalResourcesRequired Mozilla SVGExternalResourcesRequired.externalResourcesRequired documentation> 
getExternalResourcesRequiredUnsafe ::
                                   (MonadIO m, HasCallStack) =>
                                     SVGExternalResourcesRequired -> m SVGAnimatedBoolean
getExternalResourcesRequiredUnsafe self
  = liftIO
      ((nullableToMaybe <$> (js_getExternalResourcesRequired (self))) >>=
         maybe (Prelude.error "Nothing to return") return)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGExternalResourcesRequired.externalResourcesRequired Mozilla SVGExternalResourcesRequired.externalResourcesRequired documentation> 
getExternalResourcesRequiredUnchecked ::
                                      (MonadIO m) =>
                                        SVGExternalResourcesRequired -> m SVGAnimatedBoolean
getExternalResourcesRequiredUnchecked self
  = liftIO
      (fromJust . nullableToMaybe <$>
         (js_getExternalResourcesRequired (self)))