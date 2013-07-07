{-# LANGUAGE ForeignFunctionInterface, JavaScriptFFI, CPP #-}
module GHCJS.DOM.DocumentType
       (ghcjs_dom_document_type_get_name, documentTypeGetName,
        ghcjs_dom_document_type_get_entities, documentTypeGetEntities,
        ghcjs_dom_document_type_get_notations, documentTypeGetNotations,
        ghcjs_dom_document_type_get_public_id, documentTypeGetPublicId,
        ghcjs_dom_document_type_get_system_id, documentTypeGetSystemId,
        ghcjs_dom_document_type_get_internal_subset,
        documentTypeGetInternalSubset)
       where
import GHCJS.Types
import GHCJS.Foreign
import Data.Word
import GHCJS.DOM.Types
import Control.Applicative ((<$>))
import GHCJS.DOM.EventM
import GHCJS.Types
import GHCJS.Foreign
import Data.Word
import GHCJS.DOM.Types
import Control.Applicative ((<$>))
import GHCJS.DOM.EventM



#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"name\"]"
        ghcjs_dom_document_type_get_name ::
        JSRef DocumentType -> IO JSString
#else 
ghcjs_dom_document_type_get_name ::
                                   JSRef DocumentType -> IO JSString
ghcjs_dom_document_type_get_name = undefined
#endif
 
documentTypeGetName ::
                    (IsDocumentType self, FromJSString result) => self -> IO result
documentTypeGetName self
  = fromJSString <$>
      (ghcjs_dom_document_type_get_name
         (unDocumentType (toDocumentType self)))


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"entities\"]"
        ghcjs_dom_document_type_get_entities ::
        JSRef DocumentType -> IO (JSRef NamedNodeMap)
#else 
ghcjs_dom_document_type_get_entities ::
                                       JSRef DocumentType -> IO (JSRef NamedNodeMap)
ghcjs_dom_document_type_get_entities = undefined
#endif
 
documentTypeGetEntities ::
                        (IsDocumentType self) => self -> IO (Maybe NamedNodeMap)
documentTypeGetEntities self
  = fmap NamedNodeMap . maybeJSNull <$>
      (ghcjs_dom_document_type_get_entities
         (unDocumentType (toDocumentType self)))


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"notations\"]"
        ghcjs_dom_document_type_get_notations ::
        JSRef DocumentType -> IO (JSRef NamedNodeMap)
#else 
ghcjs_dom_document_type_get_notations ::
                                        JSRef DocumentType -> IO (JSRef NamedNodeMap)
ghcjs_dom_document_type_get_notations = undefined
#endif
 
documentTypeGetNotations ::
                         (IsDocumentType self) => self -> IO (Maybe NamedNodeMap)
documentTypeGetNotations self
  = fmap NamedNodeMap . maybeJSNull <$>
      (ghcjs_dom_document_type_get_notations
         (unDocumentType (toDocumentType self)))


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"publicId\"]"
        ghcjs_dom_document_type_get_public_id ::
        JSRef DocumentType -> IO JSString
#else 
ghcjs_dom_document_type_get_public_id ::
                                        JSRef DocumentType -> IO JSString
ghcjs_dom_document_type_get_public_id = undefined
#endif
 
documentTypeGetPublicId ::
                        (IsDocumentType self, FromJSString result) => self -> IO result
documentTypeGetPublicId self
  = fromJSString <$>
      (ghcjs_dom_document_type_get_public_id
         (unDocumentType (toDocumentType self)))


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"systemId\"]"
        ghcjs_dom_document_type_get_system_id ::
        JSRef DocumentType -> IO JSString
#else 
ghcjs_dom_document_type_get_system_id ::
                                        JSRef DocumentType -> IO JSString
ghcjs_dom_document_type_get_system_id = undefined
#endif
 
documentTypeGetSystemId ::
                        (IsDocumentType self, FromJSString result) => self -> IO result
documentTypeGetSystemId self
  = fromJSString <$>
      (ghcjs_dom_document_type_get_system_id
         (unDocumentType (toDocumentType self)))


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"internalSubset\"]"
        ghcjs_dom_document_type_get_internal_subset ::
        JSRef DocumentType -> IO JSString
#else 
ghcjs_dom_document_type_get_internal_subset ::
                                              JSRef DocumentType -> IO JSString
ghcjs_dom_document_type_get_internal_subset = undefined
#endif
 
documentTypeGetInternalSubset ::
                              (IsDocumentType self, FromJSString result) => self -> IO result
documentTypeGetInternalSubset self
  = fromJSString <$>
      (ghcjs_dom_document_type_get_internal_subset
         (unDocumentType (toDocumentType self)))