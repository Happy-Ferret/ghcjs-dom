{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE ForeignFunctionInterface #-}
{-# LANGUAGE JavaScriptFFI #-}
-- For HasCallStack compatibility
{-# LANGUAGE ImplicitParams, ConstraintKinds, KindSignatures #-}
module GHCJS.DOM.JSFFI.Generated.Range
       (js_newRange, newRange, js_setStart, setStart, js_setEnd, setEnd,
        js_setStartBefore, setStartBefore, js_setStartAfter, setStartAfter,
        js_setEndBefore, setEndBefore, js_setEndAfter, setEndAfter,
        js_collapse, collapse, js_selectNode, selectNode,
        js_selectNodeContents, selectNodeContents,
        js_compareBoundaryPoints, compareBoundaryPoints,
        compareBoundaryPoints_, js_deleteContents, deleteContents,
        js_extractContents, extractContents, extractContents_,
        extractContentsUnsafe, extractContentsUnchecked, js_cloneContents,
        cloneContents, cloneContents_, cloneContentsUnsafe,
        cloneContentsUnchecked, js_insertNode, insertNode,
        js_surroundContents, surroundContents, js_cloneRange, cloneRange,
        cloneRange_, cloneRangeUnsafe, cloneRangeUnchecked, js_toString,
        toString, toString_, js_detach, detach, js_getClientRects,
        getClientRects, getClientRects_, getClientRectsUnsafe,
        getClientRectsUnchecked, js_getBoundingClientRect,
        getBoundingClientRect, getBoundingClientRect_,
        getBoundingClientRectUnsafe, getBoundingClientRectUnchecked,
        js_createContextualFragment, createContextualFragment,
        createContextualFragment_, createContextualFragmentUnsafe,
        createContextualFragmentUnchecked, js_intersectsNode,
        intersectsNode, intersectsNode_, js_compareNode, compareNode,
        compareNode_, js_comparePoint, comparePoint, comparePoint_,
        js_isPointInRange, isPointInRange, isPointInRange_, js_expand,
        expand, pattern START_TO_START, pattern START_TO_END,
        pattern END_TO_END, pattern END_TO_START, pattern NODE_BEFORE,
        pattern NODE_AFTER, pattern NODE_BEFORE_AND_AFTER,
        pattern NODE_INSIDE, js_getStartContainer, getStartContainer,
        getStartContainerUnsafe, getStartContainerUnchecked,
        js_getStartOffset, getStartOffset, js_getEndContainer,
        getEndContainer, getEndContainerUnsafe, getEndContainerUnchecked,
        js_getEndOffset, getEndOffset, js_getCollapsed, getCollapsed,
        js_getCommonAncestorContainer, getCommonAncestorContainer,
        getCommonAncestorContainerUnsafe,
        getCommonAncestorContainerUnchecked, Range(..), gTypeRange)
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
 
foreign import javascript unsafe "new window[\"Range\"]()"
        js_newRange :: IO Range

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Range Mozilla Range documentation> 
newRange :: (MonadIO m) => m Range
newRange = liftIO (js_newRange)
 
foreign import javascript unsafe "$1[\"setStart\"]($2, $3)"
        js_setStart :: Range -> Nullable Node -> Int -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Range.setStart Mozilla Range.setStart documentation> 
setStart ::
         (MonadIO m, IsNode refNode) =>
           Range -> Maybe refNode -> Int -> m ()
setStart self refNode offset
  = liftIO
      (js_setStart (self) (maybeToNullable (fmap toNode refNode)) offset)
 
foreign import javascript unsafe "$1[\"setEnd\"]($2, $3)" js_setEnd
        :: Range -> Nullable Node -> Int -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Range.setEnd Mozilla Range.setEnd documentation> 
setEnd ::
       (MonadIO m, IsNode refNode) =>
         Range -> Maybe refNode -> Int -> m ()
setEnd self refNode offset
  = liftIO
      (js_setEnd (self) (maybeToNullable (fmap toNode refNode)) offset)
 
foreign import javascript unsafe "$1[\"setStartBefore\"]($2)"
        js_setStartBefore :: Range -> Nullable Node -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Range.setStartBefore Mozilla Range.setStartBefore documentation> 
setStartBefore ::
               (MonadIO m, IsNode refNode) => Range -> Maybe refNode -> m ()
setStartBefore self refNode
  = liftIO
      (js_setStartBefore (self) (maybeToNullable (fmap toNode refNode)))
 
foreign import javascript unsafe "$1[\"setStartAfter\"]($2)"
        js_setStartAfter :: Range -> Nullable Node -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Range.setStartAfter Mozilla Range.setStartAfter documentation> 
setStartAfter ::
              (MonadIO m, IsNode refNode) => Range -> Maybe refNode -> m ()
setStartAfter self refNode
  = liftIO
      (js_setStartAfter (self) (maybeToNullable (fmap toNode refNode)))
 
foreign import javascript unsafe "$1[\"setEndBefore\"]($2)"
        js_setEndBefore :: Range -> Nullable Node -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Range.setEndBefore Mozilla Range.setEndBefore documentation> 
setEndBefore ::
             (MonadIO m, IsNode refNode) => Range -> Maybe refNode -> m ()
setEndBefore self refNode
  = liftIO
      (js_setEndBefore (self) (maybeToNullable (fmap toNode refNode)))
 
foreign import javascript unsafe "$1[\"setEndAfter\"]($2)"
        js_setEndAfter :: Range -> Nullable Node -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Range.setEndAfter Mozilla Range.setEndAfter documentation> 
setEndAfter ::
            (MonadIO m, IsNode refNode) => Range -> Maybe refNode -> m ()
setEndAfter self refNode
  = liftIO
      (js_setEndAfter (self) (maybeToNullable (fmap toNode refNode)))
 
foreign import javascript unsafe "$1[\"collapse\"]($2)" js_collapse
        :: Range -> Bool -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Range.collapse Mozilla Range.collapse documentation> 
collapse :: (MonadIO m) => Range -> Bool -> m ()
collapse self toStart = liftIO (js_collapse (self) toStart)
 
foreign import javascript unsafe "$1[\"selectNode\"]($2)"
        js_selectNode :: Range -> Nullable Node -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Range.selectNode Mozilla Range.selectNode documentation> 
selectNode ::
           (MonadIO m, IsNode refNode) => Range -> Maybe refNode -> m ()
selectNode self refNode
  = liftIO
      (js_selectNode (self) (maybeToNullable (fmap toNode refNode)))
 
foreign import javascript unsafe "$1[\"selectNodeContents\"]($2)"
        js_selectNodeContents :: Range -> Nullable Node -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Range.selectNodeContents Mozilla Range.selectNodeContents documentation> 
selectNodeContents ::
                   (MonadIO m, IsNode refNode) => Range -> Maybe refNode -> m ()
selectNodeContents self refNode
  = liftIO
      (js_selectNodeContents (self)
         (maybeToNullable (fmap toNode refNode)))
 
foreign import javascript unsafe
        "$1[\"compareBoundaryPoints\"]($2,\n$3)" js_compareBoundaryPoints
        :: Range -> Word -> Nullable Range -> IO Int

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Range.compareBoundaryPoints Mozilla Range.compareBoundaryPoints documentation> 
compareBoundaryPoints ::
                      (MonadIO m) => Range -> Word -> Maybe Range -> m Int
compareBoundaryPoints self how sourceRange
  = liftIO
      (js_compareBoundaryPoints (self) how (maybeToNullable sourceRange))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Range.compareBoundaryPoints Mozilla Range.compareBoundaryPoints documentation> 
compareBoundaryPoints_ ::
                       (MonadIO m) => Range -> Word -> Maybe Range -> m ()
compareBoundaryPoints_ self how sourceRange
  = liftIO
      (void
         (js_compareBoundaryPoints (self) how
            (maybeToNullable sourceRange)))
 
foreign import javascript unsafe "$1[\"deleteContents\"]()"
        js_deleteContents :: Range -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Range.deleteContents Mozilla Range.deleteContents documentation> 
deleteContents :: (MonadIO m) => Range -> m ()
deleteContents self = liftIO (js_deleteContents (self))
 
foreign import javascript unsafe "$1[\"extractContents\"]()"
        js_extractContents :: Range -> IO (Nullable DocumentFragment)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Range.extractContents Mozilla Range.extractContents documentation> 
extractContents ::
                (MonadIO m) => Range -> m (Maybe DocumentFragment)
extractContents self
  = liftIO (nullableToMaybe <$> (js_extractContents (self)))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Range.extractContents Mozilla Range.extractContents documentation> 
extractContents_ :: (MonadIO m) => Range -> m ()
extractContents_ self = liftIO (void (js_extractContents (self)))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Range.extractContents Mozilla Range.extractContents documentation> 
extractContentsUnsafe ::
                      (MonadIO m, HasCallStack) => Range -> m DocumentFragment
extractContentsUnsafe self
  = liftIO
      ((nullableToMaybe <$> (js_extractContents (self))) >>=
         maybe (Prelude.error "Nothing to return") return)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Range.extractContents Mozilla Range.extractContents documentation> 
extractContentsUnchecked ::
                         (MonadIO m) => Range -> m DocumentFragment
extractContentsUnchecked self
  = liftIO
      (fromJust . nullableToMaybe <$> (js_extractContents (self)))
 
foreign import javascript unsafe "$1[\"cloneContents\"]()"
        js_cloneContents :: Range -> IO (Nullable DocumentFragment)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Range.cloneContents Mozilla Range.cloneContents documentation> 
cloneContents :: (MonadIO m) => Range -> m (Maybe DocumentFragment)
cloneContents self
  = liftIO (nullableToMaybe <$> (js_cloneContents (self)))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Range.cloneContents Mozilla Range.cloneContents documentation> 
cloneContents_ :: (MonadIO m) => Range -> m ()
cloneContents_ self = liftIO (void (js_cloneContents (self)))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Range.cloneContents Mozilla Range.cloneContents documentation> 
cloneContentsUnsafe ::
                    (MonadIO m, HasCallStack) => Range -> m DocumentFragment
cloneContentsUnsafe self
  = liftIO
      ((nullableToMaybe <$> (js_cloneContents (self))) >>=
         maybe (Prelude.error "Nothing to return") return)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Range.cloneContents Mozilla Range.cloneContents documentation> 
cloneContentsUnchecked ::
                       (MonadIO m) => Range -> m DocumentFragment
cloneContentsUnchecked self
  = liftIO (fromJust . nullableToMaybe <$> (js_cloneContents (self)))
 
foreign import javascript unsafe "$1[\"insertNode\"]($2)"
        js_insertNode :: Range -> Nullable Node -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Range.insertNode Mozilla Range.insertNode documentation> 
insertNode ::
           (MonadIO m, IsNode newNode) => Range -> Maybe newNode -> m ()
insertNode self newNode
  = liftIO
      (js_insertNode (self) (maybeToNullable (fmap toNode newNode)))
 
foreign import javascript unsafe "$1[\"surroundContents\"]($2)"
        js_surroundContents :: Range -> Nullable Node -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Range.surroundContents Mozilla Range.surroundContents documentation> 
surroundContents ::
                 (MonadIO m, IsNode newParent) => Range -> Maybe newParent -> m ()
surroundContents self newParent
  = liftIO
      (js_surroundContents (self)
         (maybeToNullable (fmap toNode newParent)))
 
foreign import javascript unsafe "$1[\"cloneRange\"]()"
        js_cloneRange :: Range -> IO (Nullable Range)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Range.cloneRange Mozilla Range.cloneRange documentation> 
cloneRange :: (MonadIO m) => Range -> m (Maybe Range)
cloneRange self
  = liftIO (nullableToMaybe <$> (js_cloneRange (self)))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Range.cloneRange Mozilla Range.cloneRange documentation> 
cloneRange_ :: (MonadIO m) => Range -> m ()
cloneRange_ self = liftIO (void (js_cloneRange (self)))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Range.cloneRange Mozilla Range.cloneRange documentation> 
cloneRangeUnsafe :: (MonadIO m, HasCallStack) => Range -> m Range
cloneRangeUnsafe self
  = liftIO
      ((nullableToMaybe <$> (js_cloneRange (self))) >>=
         maybe (Prelude.error "Nothing to return") return)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Range.cloneRange Mozilla Range.cloneRange documentation> 
cloneRangeUnchecked :: (MonadIO m) => Range -> m Range
cloneRangeUnchecked self
  = liftIO (fromJust . nullableToMaybe <$> (js_cloneRange (self)))
 
foreign import javascript unsafe "$1[\"toString\"]()" js_toString
        :: Range -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Range.toString Mozilla Range.toString documentation> 
toString :: (MonadIO m, FromJSString result) => Range -> m result
toString self = liftIO (fromJSString <$> (js_toString (self)))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Range.toString Mozilla Range.toString documentation> 
toString_ :: (MonadIO m) => Range -> m ()
toString_ self = liftIO (void (js_toString (self)))
 
foreign import javascript unsafe "$1[\"detach\"]()" js_detach ::
        Range -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Range.detach Mozilla Range.detach documentation> 
detach :: (MonadIO m) => Range -> m ()
detach self = liftIO (js_detach (self))
 
foreign import javascript unsafe "$1[\"getClientRects\"]()"
        js_getClientRects :: Range -> IO (Nullable ClientRectList)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Range.getClientRects Mozilla Range.getClientRects documentation> 
getClientRects :: (MonadIO m) => Range -> m (Maybe ClientRectList)
getClientRects self
  = liftIO (nullableToMaybe <$> (js_getClientRects (self)))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Range.getClientRects Mozilla Range.getClientRects documentation> 
getClientRects_ :: (MonadIO m) => Range -> m ()
getClientRects_ self = liftIO (void (js_getClientRects (self)))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Range.getClientRects Mozilla Range.getClientRects documentation> 
getClientRectsUnsafe ::
                     (MonadIO m, HasCallStack) => Range -> m ClientRectList
getClientRectsUnsafe self
  = liftIO
      ((nullableToMaybe <$> (js_getClientRects (self))) >>=
         maybe (Prelude.error "Nothing to return") return)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Range.getClientRects Mozilla Range.getClientRects documentation> 
getClientRectsUnchecked :: (MonadIO m) => Range -> m ClientRectList
getClientRectsUnchecked self
  = liftIO
      (fromJust . nullableToMaybe <$> (js_getClientRects (self)))
 
foreign import javascript unsafe "$1[\"getBoundingClientRect\"]()"
        js_getBoundingClientRect :: Range -> IO (Nullable ClientRect)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Range.getBoundingClientRect Mozilla Range.getBoundingClientRect documentation> 
getBoundingClientRect ::
                      (MonadIO m) => Range -> m (Maybe ClientRect)
getBoundingClientRect self
  = liftIO (nullableToMaybe <$> (js_getBoundingClientRect (self)))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Range.getBoundingClientRect Mozilla Range.getBoundingClientRect documentation> 
getBoundingClientRect_ :: (MonadIO m) => Range -> m ()
getBoundingClientRect_ self
  = liftIO (void (js_getBoundingClientRect (self)))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Range.getBoundingClientRect Mozilla Range.getBoundingClientRect documentation> 
getBoundingClientRectUnsafe ::
                            (MonadIO m, HasCallStack) => Range -> m ClientRect
getBoundingClientRectUnsafe self
  = liftIO
      ((nullableToMaybe <$> (js_getBoundingClientRect (self))) >>=
         maybe (Prelude.error "Nothing to return") return)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Range.getBoundingClientRect Mozilla Range.getBoundingClientRect documentation> 
getBoundingClientRectUnchecked ::
                               (MonadIO m) => Range -> m ClientRect
getBoundingClientRectUnchecked self
  = liftIO
      (fromJust . nullableToMaybe <$> (js_getBoundingClientRect (self)))
 
foreign import javascript unsafe
        "$1[\"createContextualFragment\"]($2)" js_createContextualFragment
        :: Range -> JSString -> IO (Nullable DocumentFragment)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Range.createContextualFragment Mozilla Range.createContextualFragment documentation> 
createContextualFragment ::
                         (MonadIO m, ToJSString html) =>
                           Range -> html -> m (Maybe DocumentFragment)
createContextualFragment self html
  = liftIO
      (nullableToMaybe <$>
         (js_createContextualFragment (self) (toJSString html)))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Range.createContextualFragment Mozilla Range.createContextualFragment documentation> 
createContextualFragment_ ::
                          (MonadIO m, ToJSString html) => Range -> html -> m ()
createContextualFragment_ self html
  = liftIO
      (void (js_createContextualFragment (self) (toJSString html)))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Range.createContextualFragment Mozilla Range.createContextualFragment documentation> 
createContextualFragmentUnsafe ::
                               (MonadIO m, ToJSString html, HasCallStack) =>
                                 Range -> html -> m DocumentFragment
createContextualFragmentUnsafe self html
  = liftIO
      ((nullableToMaybe <$>
          (js_createContextualFragment (self) (toJSString html)))
         >>= maybe (Prelude.error "Nothing to return") return)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Range.createContextualFragment Mozilla Range.createContextualFragment documentation> 
createContextualFragmentUnchecked ::
                                  (MonadIO m, ToJSString html) =>
                                    Range -> html -> m DocumentFragment
createContextualFragmentUnchecked self html
  = liftIO
      (fromJust . nullableToMaybe <$>
         (js_createContextualFragment (self) (toJSString html)))
 
foreign import javascript unsafe
        "($1[\"intersectsNode\"]($2) ? 1 : 0)" js_intersectsNode ::
        Range -> Nullable Node -> IO Bool

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Range.intersectsNode Mozilla Range.intersectsNode documentation> 
intersectsNode ::
               (MonadIO m, IsNode refNode) => Range -> Maybe refNode -> m Bool
intersectsNode self refNode
  = liftIO
      (js_intersectsNode (self) (maybeToNullable (fmap toNode refNode)))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Range.intersectsNode Mozilla Range.intersectsNode documentation> 
intersectsNode_ ::
                (MonadIO m, IsNode refNode) => Range -> Maybe refNode -> m ()
intersectsNode_ self refNode
  = liftIO
      (void
         (js_intersectsNode (self) (maybeToNullable (fmap toNode refNode))))
 
foreign import javascript unsafe "$1[\"compareNode\"]($2)"
        js_compareNode :: Range -> Nullable Node -> IO Int

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Range.compareNode Mozilla Range.compareNode documentation> 
compareNode ::
            (MonadIO m, IsNode refNode) => Range -> Maybe refNode -> m Int
compareNode self refNode
  = liftIO
      (js_compareNode (self) (maybeToNullable (fmap toNode refNode)))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Range.compareNode Mozilla Range.compareNode documentation> 
compareNode_ ::
             (MonadIO m, IsNode refNode) => Range -> Maybe refNode -> m ()
compareNode_ self refNode
  = liftIO
      (void
         (js_compareNode (self) (maybeToNullable (fmap toNode refNode))))
 
foreign import javascript unsafe "$1[\"comparePoint\"]($2, $3)"
        js_comparePoint :: Range -> Nullable Node -> Int -> IO Int

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Range.comparePoint Mozilla Range.comparePoint documentation> 
comparePoint ::
             (MonadIO m, IsNode refNode) =>
               Range -> Maybe refNode -> Int -> m Int
comparePoint self refNode offset
  = liftIO
      (js_comparePoint (self) (maybeToNullable (fmap toNode refNode))
         offset)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Range.comparePoint Mozilla Range.comparePoint documentation> 
comparePoint_ ::
              (MonadIO m, IsNode refNode) =>
                Range -> Maybe refNode -> Int -> m ()
comparePoint_ self refNode offset
  = liftIO
      (void
         (js_comparePoint (self) (maybeToNullable (fmap toNode refNode))
            offset))
 
foreign import javascript unsafe
        "($1[\"isPointInRange\"]($2,\n$3) ? 1 : 0)" js_isPointInRange ::
        Range -> Nullable Node -> Int -> IO Bool

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Range.isPointInRange Mozilla Range.isPointInRange documentation> 
isPointInRange ::
               (MonadIO m, IsNode refNode) =>
                 Range -> Maybe refNode -> Int -> m Bool
isPointInRange self refNode offset
  = liftIO
      (js_isPointInRange (self) (maybeToNullable (fmap toNode refNode))
         offset)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Range.isPointInRange Mozilla Range.isPointInRange documentation> 
isPointInRange_ ::
                (MonadIO m, IsNode refNode) =>
                  Range -> Maybe refNode -> Int -> m ()
isPointInRange_ self refNode offset
  = liftIO
      (void
         (js_isPointInRange (self) (maybeToNullable (fmap toNode refNode))
            offset))
 
foreign import javascript unsafe "$1[\"expand\"]($2)" js_expand ::
        Range -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Range.expand Mozilla Range.expand documentation> 
expand :: (MonadIO m, ToJSString unit) => Range -> unit -> m ()
expand self unit = liftIO (js_expand (self) (toJSString unit))
pattern START_TO_START = 0
pattern START_TO_END = 1
pattern END_TO_END = 2
pattern END_TO_START = 3
pattern NODE_BEFORE = 0
pattern NODE_AFTER = 1
pattern NODE_BEFORE_AND_AFTER = 2
pattern NODE_INSIDE = 3
 
foreign import javascript unsafe "$1[\"startContainer\"]"
        js_getStartContainer :: Range -> IO (Nullable Node)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Range.startContainer Mozilla Range.startContainer documentation> 
getStartContainer :: (MonadIO m) => Range -> m (Maybe Node)
getStartContainer self
  = liftIO (nullableToMaybe <$> (js_getStartContainer (self)))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Range.startContainer Mozilla Range.startContainer documentation> 
getStartContainerUnsafe ::
                        (MonadIO m, HasCallStack) => Range -> m Node
getStartContainerUnsafe self
  = liftIO
      ((nullableToMaybe <$> (js_getStartContainer (self))) >>=
         maybe (Prelude.error "Nothing to return") return)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Range.startContainer Mozilla Range.startContainer documentation> 
getStartContainerUnchecked :: (MonadIO m) => Range -> m Node
getStartContainerUnchecked self
  = liftIO
      (fromJust . nullableToMaybe <$> (js_getStartContainer (self)))
 
foreign import javascript unsafe "$1[\"startOffset\"]"
        js_getStartOffset :: Range -> IO Int

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Range.startOffset Mozilla Range.startOffset documentation> 
getStartOffset :: (MonadIO m) => Range -> m Int
getStartOffset self = liftIO (js_getStartOffset (self))
 
foreign import javascript unsafe "$1[\"endContainer\"]"
        js_getEndContainer :: Range -> IO (Nullable Node)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Range.endContainer Mozilla Range.endContainer documentation> 
getEndContainer :: (MonadIO m) => Range -> m (Maybe Node)
getEndContainer self
  = liftIO (nullableToMaybe <$> (js_getEndContainer (self)))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Range.endContainer Mozilla Range.endContainer documentation> 
getEndContainerUnsafe ::
                      (MonadIO m, HasCallStack) => Range -> m Node
getEndContainerUnsafe self
  = liftIO
      ((nullableToMaybe <$> (js_getEndContainer (self))) >>=
         maybe (Prelude.error "Nothing to return") return)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Range.endContainer Mozilla Range.endContainer documentation> 
getEndContainerUnchecked :: (MonadIO m) => Range -> m Node
getEndContainerUnchecked self
  = liftIO
      (fromJust . nullableToMaybe <$> (js_getEndContainer (self)))
 
foreign import javascript unsafe "$1[\"endOffset\"]"
        js_getEndOffset :: Range -> IO Int

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Range.endOffset Mozilla Range.endOffset documentation> 
getEndOffset :: (MonadIO m) => Range -> m Int
getEndOffset self = liftIO (js_getEndOffset (self))
 
foreign import javascript unsafe "($1[\"collapsed\"] ? 1 : 0)"
        js_getCollapsed :: Range -> IO Bool

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Range.collapsed Mozilla Range.collapsed documentation> 
getCollapsed :: (MonadIO m) => Range -> m Bool
getCollapsed self = liftIO (js_getCollapsed (self))
 
foreign import javascript unsafe "$1[\"commonAncestorContainer\"]"
        js_getCommonAncestorContainer :: Range -> IO (Nullable Node)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Range.commonAncestorContainer Mozilla Range.commonAncestorContainer documentation> 
getCommonAncestorContainer ::
                           (MonadIO m) => Range -> m (Maybe Node)
getCommonAncestorContainer self
  = liftIO
      (nullableToMaybe <$> (js_getCommonAncestorContainer (self)))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Range.commonAncestorContainer Mozilla Range.commonAncestorContainer documentation> 
getCommonAncestorContainerUnsafe ::
                                 (MonadIO m, HasCallStack) => Range -> m Node
getCommonAncestorContainerUnsafe self
  = liftIO
      ((nullableToMaybe <$> (js_getCommonAncestorContainer (self))) >>=
         maybe (Prelude.error "Nothing to return") return)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Range.commonAncestorContainer Mozilla Range.commonAncestorContainer documentation> 
getCommonAncestorContainerUnchecked ::
                                    (MonadIO m) => Range -> m Node
getCommonAncestorContainerUnchecked self
  = liftIO
      (fromJust . nullableToMaybe <$>
         (js_getCommonAncestorContainer (self)))