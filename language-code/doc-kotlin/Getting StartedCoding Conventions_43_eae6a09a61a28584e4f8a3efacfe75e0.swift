private let defaultCharset: Charset? = {
    EncodingRegistry.getInstance().getDefaultCharsetForPropertiesFiles(file)
}()
