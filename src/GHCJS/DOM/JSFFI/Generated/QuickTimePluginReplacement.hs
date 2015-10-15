{-# LANGUAGE PatternSynonyms, ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.JSFFI.Generated.QuickTimePluginReplacement
       (js_postEvent, postEvent, js_getMovieSize, getMovieSize,
        js_getTimedMetaData, getTimedMetaData, js_getAccessLog,
        getAccessLog, js_getErrorLog, getErrorLog,
        QuickTimePluginReplacement, castToQuickTimePluginReplacement,
        gTypeQuickTimePluginReplacement)
       where
import Prelude ((.), (==), (>>=), return, IO, Int, Float, Double, Bool(..), Maybe, maybe, fromIntegral, round, fmap, Show, Read, Eq, Ord)
import Data.Typeable (Typeable)
import GHCJS.Types (JSRef(..), JSString)
import GHCJS.Foreign (jsNull)
import GHCJS.Foreign.Callback (syncCallback, asyncCallback, syncCallback1, asyncCallback1, syncCallback2, asyncCallback2, OnBlocked(..))
import GHCJS.Marshal (ToJSRef(..), FromJSRef(..))
import GHCJS.Marshal.Pure (PToJSRef(..), PFromJSRef(..))
import Control.Monad.IO.Class (MonadIO(..))
import Data.Int (Int64)
import Data.Word (Word, Word64)
import GHCJS.DOM.Types
import Control.Applicative ((<$>))
import GHCJS.DOM.EventTargetClosures (EventName, unsafeEventName)
import GHCJS.DOM.Enums
 
foreign import javascript unsafe "$1[\"postEvent\"]($2)"
        js_postEvent :: QuickTimePluginReplacement -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/QuickTimePluginReplacement.postEvent Mozilla QuickTimePluginReplacement.postEvent documentation> 
postEvent ::
          (MonadIO m, ToJSString eventName) =>
            QuickTimePluginReplacement -> eventName -> m ()
postEvent self eventName
  = liftIO (js_postEvent (self) (toJSString eventName))
 
foreign import javascript unsafe "$1[\"movieSize\"]"
        js_getMovieSize :: QuickTimePluginReplacement -> IO Double

-- | <https://developer.mozilla.org/en-US/docs/Web/API/QuickTimePluginReplacement.movieSize Mozilla QuickTimePluginReplacement.movieSize documentation> 
getMovieSize ::
             (MonadIO m) => QuickTimePluginReplacement -> m Word64
getMovieSize self = liftIO (round <$> (js_getMovieSize (self)))
 
foreign import javascript unsafe "$1[\"timedMetaData\"]"
        js_getTimedMetaData :: QuickTimePluginReplacement -> IO JSRef

-- | <https://developer.mozilla.org/en-US/docs/Web/API/QuickTimePluginReplacement.timedMetaData Mozilla QuickTimePluginReplacement.timedMetaData documentation> 
getTimedMetaData ::
                 (MonadIO m) => QuickTimePluginReplacement -> m JSRef
getTimedMetaData self = liftIO (js_getTimedMetaData (self))
 
foreign import javascript unsafe "$1[\"accessLog\"]"
        js_getAccessLog :: QuickTimePluginReplacement -> IO JSRef

-- | <https://developer.mozilla.org/en-US/docs/Web/API/QuickTimePluginReplacement.accessLog Mozilla QuickTimePluginReplacement.accessLog documentation> 
getAccessLog ::
             (MonadIO m) => QuickTimePluginReplacement -> m JSRef
getAccessLog self = liftIO (js_getAccessLog (self))
 
foreign import javascript unsafe "$1[\"errorLog\"]" js_getErrorLog
        :: QuickTimePluginReplacement -> IO JSRef

-- | <https://developer.mozilla.org/en-US/docs/Web/API/QuickTimePluginReplacement.errorLog Mozilla QuickTimePluginReplacement.errorLog documentation> 
getErrorLog :: (MonadIO m) => QuickTimePluginReplacement -> m JSRef
getErrorLog self = liftIO (js_getErrorLog (self))