{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE ForeignFunctionInterface #-}
{-# LANGUAGE JavaScriptFFI #-}
-- For HasCallStack compatibility
{-# LANGUAGE ImplicitParams, ConstraintKinds, KindSignatures #-}
module GHCJS.DOM.JSFFI.Generated.Text
       (js_newText, newText, js_splitText, splitText, splitText_,
        splitTextUnsafe, splitTextUnchecked, js_replaceWholeText,
        replaceWholeText, replaceWholeText_, replaceWholeTextUnsafe,
        replaceWholeTextUnchecked, js_getWholeText, getWholeText, Text(..),
        gTypeText, IsText, toText)
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
 
foreign import javascript unsafe "new window[\"Text\"]($1)"
        js_newText :: JSString -> IO Text

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Text Mozilla Text documentation> 
newText :: (MonadIO m, ToJSString data') => data' -> m Text
newText data' = liftIO (js_newText (toJSString data'))
 
foreign import javascript unsafe "$1[\"splitText\"]($2)"
        js_splitText :: Text -> Word -> IO (Nullable Text)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Text.splitText Mozilla Text.splitText documentation> 
splitText ::
          (MonadIO m, IsText self) => self -> Word -> m (Maybe Text)
splitText self offset
  = liftIO (nullableToMaybe <$> (js_splitText (toText self) offset))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Text.splitText Mozilla Text.splitText documentation> 
splitText_ :: (MonadIO m, IsText self) => self -> Word -> m ()
splitText_ self offset
  = liftIO (void (js_splitText (toText self) offset))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Text.splitText Mozilla Text.splitText documentation> 
splitTextUnsafe ::
                (MonadIO m, IsText self, HasCallStack) => self -> Word -> m Text
splitTextUnsafe self offset
  = liftIO
      ((nullableToMaybe <$> (js_splitText (toText self) offset)) >>=
         maybe (Prelude.error "Nothing to return") return)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Text.splitText Mozilla Text.splitText documentation> 
splitTextUnchecked ::
                   (MonadIO m, IsText self) => self -> Word -> m Text
splitTextUnchecked self offset
  = liftIO
      (fromJust . nullableToMaybe <$>
         (js_splitText (toText self) offset))
 
foreign import javascript unsafe "$1[\"replaceWholeText\"]($2)"
        js_replaceWholeText :: Text -> JSString -> IO (Nullable Text)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Text.replaceWholeText Mozilla Text.replaceWholeText documentation> 
replaceWholeText ::
                 (MonadIO m, IsText self, ToJSString content) =>
                   self -> content -> m (Maybe Text)
replaceWholeText self content
  = liftIO
      (nullableToMaybe <$>
         (js_replaceWholeText (toText self) (toJSString content)))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Text.replaceWholeText Mozilla Text.replaceWholeText documentation> 
replaceWholeText_ ::
                  (MonadIO m, IsText self, ToJSString content) =>
                    self -> content -> m ()
replaceWholeText_ self content
  = liftIO
      (void (js_replaceWholeText (toText self) (toJSString content)))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Text.replaceWholeText Mozilla Text.replaceWholeText documentation> 
replaceWholeTextUnsafe ::
                       (MonadIO m, IsText self, ToJSString content, HasCallStack) =>
                         self -> content -> m Text
replaceWholeTextUnsafe self content
  = liftIO
      ((nullableToMaybe <$>
          (js_replaceWholeText (toText self) (toJSString content)))
         >>= maybe (Prelude.error "Nothing to return") return)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Text.replaceWholeText Mozilla Text.replaceWholeText documentation> 
replaceWholeTextUnchecked ::
                          (MonadIO m, IsText self, ToJSString content) =>
                            self -> content -> m Text
replaceWholeTextUnchecked self content
  = liftIO
      (fromJust . nullableToMaybe <$>
         (js_replaceWholeText (toText self) (toJSString content)))
 
foreign import javascript unsafe "$1[\"wholeText\"]"
        js_getWholeText :: Text -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Text.wholeText Mozilla Text.wholeText documentation> 
getWholeText ::
             (MonadIO m, IsText self, FromJSString result) => self -> m result
getWholeText self
  = liftIO (fromJSString <$> (js_getWholeText (toText self)))