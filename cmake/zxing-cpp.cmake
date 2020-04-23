if(QV2RAY_ZXING_PROVIDER STREQUAL "module")
    set(ZXING_DIR ${CMAKE_SOURCE_DIR}/3rdparty/zxing-cpp/core)
    set(ZXING_SOURCES
        ${ZXING_DIR}/src/qrcode/QRMatrixUtil.cpp
        ${ZXING_DIR}/src/qrcode/QRBitMatrixParser.cpp
        ${ZXING_DIR}/src/qrcode/QRCodecMode.cpp
        ${ZXING_DIR}/src/qrcode/QRFinderPatternFinder.cpp
        ${ZXING_DIR}/src/qrcode/QRVersion.cpp
        ${ZXING_DIR}/src/qrcode/QRWriter.cpp
        ${ZXING_DIR}/src/qrcode/QRDataBlock.cpp
        ${ZXING_DIR}/src/qrcode/QRDecoder.cpp
        ${ZXING_DIR}/src/qrcode/QRDataMask.cpp
        ${ZXING_DIR}/src/qrcode/QRFormatInformation.cpp
        ${ZXING_DIR}/src/qrcode/QRErrorCorrectionLevel.cpp
        ${ZXING_DIR}/src/qrcode/QRAlignmentPattern.cpp
        ${ZXING_DIR}/src/qrcode/QRDetector.cpp
        ${ZXING_DIR}/src/qrcode/QREncoder.cpp
        ${ZXING_DIR}/src/qrcode/QRMaskUtil.cpp
        ${ZXING_DIR}/src/qrcode/QRFinderPattern.cpp
        ${ZXING_DIR}/src/qrcode/QRReader.cpp
        ${ZXING_DIR}/src/qrcode/QRAlignmentPatternFinder.cpp
        ${ZXING_DIR}/src/HybridBinarizer.cpp
        ${ZXING_DIR}/src/ResultPoint.cpp
        ${ZXING_DIR}/src/MultiFormatReader.cpp
        ${ZXING_DIR}/src/BarcodeFormat.cpp
        ${ZXING_DIR}/src/LuminanceSource.cpp
        ${ZXING_DIR}/src/TextEncoder.cpp
        ${ZXING_DIR}/src/ReadBarcode.cpp
        ${ZXING_DIR}/src/GenericGFPoly.cpp
        ${ZXING_DIR}/src/ResultMetadata.cpp
        ${ZXING_DIR}/src/GenericLuminanceSource.cpp
        ${ZXING_DIR}/src/GenericGF.cpp
        ${ZXING_DIR}/src/maxicode/MCReader.cpp
        ${ZXING_DIR}/src/maxicode/MCDecoder.cpp
        ${ZXING_DIR}/src/maxicode/MCBitMatrixParser.cpp
        ${ZXING_DIR}/src/TextUtfEncoding.cpp
        ${ZXING_DIR}/src/DecodeHints.cpp
        ${ZXING_DIR}/src/BitArray.cpp
        ${ZXING_DIR}/src/PerspectiveTransform.cpp
        ${ZXING_DIR}/src/textcodec/Big5TextEncoder.cpp
        ${ZXING_DIR}/src/textcodec/KRTextDecoder.cpp
        ${ZXING_DIR}/src/textcodec/KRTextEncoder.cpp
        ${ZXING_DIR}/src/textcodec/KRHangulMapping.cpp
        ${ZXING_DIR}/src/textcodec/JPTextDecoder.cpp
        ${ZXING_DIR}/src/textcodec/Big5MapTable.cpp
        ${ZXING_DIR}/src/textcodec/Big5TextDecoder.cpp
        ${ZXING_DIR}/src/textcodec/GBTextEncoder.cpp
        ${ZXING_DIR}/src/textcodec/GBTextDecoder.cpp
        ${ZXING_DIR}/src/textcodec/JPTextEncoder.cpp
        ${ZXING_DIR}/src/ReedSolomonDecoder.cpp
        ${ZXING_DIR}/src/CharacterSetECI.cpp
        ${ZXING_DIR}/src/aztec/AZEncoder.cpp
        ${ZXING_DIR}/src/aztec/AZHighLevelEncoder.cpp
        ${ZXING_DIR}/src/aztec/AZReader.cpp
        ${ZXING_DIR}/src/aztec/AZWriter.cpp
        ${ZXING_DIR}/src/aztec/AZDecoder.cpp
        ${ZXING_DIR}/src/aztec/AZToken.cpp
        ${ZXING_DIR}/src/aztec/AZDetector.cpp
        ${ZXING_DIR}/src/TextDecoder.cpp
        ${ZXING_DIR}/src/Result.cpp
        ${ZXING_DIR}/src/MultiFormatWriter.cpp
        ${ZXING_DIR}/src/ReedSolomonEncoder.cpp
        ${ZXING_DIR}/src/BitMatrix.cpp
        ${ZXING_DIR}/src/DecodeStatus.cpp
        ${ZXING_DIR}/src/WhiteRectDetector.cpp
        ${ZXING_DIR}/src/ZXBigInteger.cpp
        ${ZXING_DIR}/src/datamatrix/DMVersion.cpp
        ${ZXING_DIR}/src/datamatrix/DMDefaultPlacement.cpp
        ${ZXING_DIR}/src/datamatrix/DMReader.cpp
        ${ZXING_DIR}/src/datamatrix/DMDataBlock.cpp
        ${ZXING_DIR}/src/datamatrix/DMECEncoder.cpp
        ${ZXING_DIR}/src/datamatrix/DMWriter.cpp
        ${ZXING_DIR}/src/datamatrix/DMSymbolInfo.cpp
        ${ZXING_DIR}/src/datamatrix/DMHighLevelEncoder.cpp
        ${ZXING_DIR}/src/datamatrix/DMDecoder.cpp
        ${ZXING_DIR}/src/datamatrix/DMDetector.cpp
        ${ZXING_DIR}/src/datamatrix/DMBitMatrixParser.cpp
        ${ZXING_DIR}/src/GlobalHistogramBinarizer.cpp
        ${ZXING_DIR}/src/GridSampler.cpp
        ${ZXING_DIR}/src/oned/ODWriterHelper.cpp
        ${ZXING_DIR}/src/oned/ODRSSExpandedReader.cpp
        ${ZXING_DIR}/src/oned/ODUPCAWriter.cpp
        ${ZXING_DIR}/src/oned/ODEANManufacturerOrgSupport.cpp
        ${ZXING_DIR}/src/oned/ODCode39Writer.cpp
        ${ZXING_DIR}/src/oned/ODCodabarReader.cpp
        ${ZXING_DIR}/src/oned/ODCodabarWriter.cpp
        ${ZXING_DIR}/src/oned/ODCode128Patterns.cpp
        ${ZXING_DIR}/src/oned/ODCode128Reader.cpp
        ${ZXING_DIR}/src/oned/ODUPCEANReader.cpp
        ${ZXING_DIR}/src/oned/ODUPCEANCommon.cpp
        ${ZXING_DIR}/src/oned/ODReader.cpp
        ${ZXING_DIR}/src/oned/ODRSS14Reader.cpp
        ${ZXING_DIR}/src/oned/ODCode128Writer.cpp
        ${ZXING_DIR}/src/oned/ODEAN13Reader.cpp
        ${ZXING_DIR}/src/oned/ODUPCEWriter.cpp
        ${ZXING_DIR}/src/oned/ODITFWriter.cpp
        ${ZXING_DIR}/src/oned/ODUPCEANExtensionSupport.cpp
        ${ZXING_DIR}/src/oned/ODRowReader.cpp
        ${ZXING_DIR}/src/oned/ODEAN8Reader.cpp
        ${ZXING_DIR}/src/oned/ODCode93Reader.cpp
        ${ZXING_DIR}/src/oned/ODMultiUPCEANReader.cpp
        ${ZXING_DIR}/src/oned/ODCode39Reader.cpp
        ${ZXING_DIR}/src/oned/ODITFReader.cpp
        ${ZXING_DIR}/src/oned/ODCode93Writer.cpp
        ${ZXING_DIR}/src/oned/ODEAN8Writer.cpp
        ${ZXING_DIR}/src/oned/ODUPCEReader.cpp
        ${ZXING_DIR}/src/oned/ODUPCAReader.cpp
        ${ZXING_DIR}/src/oned/rss/ODRSSGenericAppIdDecoder.cpp
        ${ZXING_DIR}/src/oned/rss/ODRSSExpandedBinaryDecoder.cpp
        ${ZXING_DIR}/src/oned/rss/ODRSSReaderHelper.cpp
        ${ZXING_DIR}/src/oned/rss/ODRSSFieldParser.cpp
        ${ZXING_DIR}/src/oned/ODEAN13Writer.cpp
        ${ZXING_DIR}/src/BitSource.cpp
        ${ZXING_DIR}/src/pdf417/PDFBoundingBox.cpp
        ${ZXING_DIR}/src/pdf417/PDFDetectionResult.cpp
        ${ZXING_DIR}/src/pdf417/PDFCodewordDecoder.cpp
        ${ZXING_DIR}/src/pdf417/PDFDetectionResultColumn.cpp
        ${ZXING_DIR}/src/pdf417/PDFBarcodeValue.cpp
        ${ZXING_DIR}/src/pdf417/PDFModulusGF.cpp
        ${ZXING_DIR}/src/pdf417/PDFDecodedBitStreamParser.cpp
        ${ZXING_DIR}/src/pdf417/PDFReader.cpp
        ${ZXING_DIR}/src/pdf417/PDFEncoder.cpp
        ${ZXING_DIR}/src/pdf417/PDFDetector.cpp
        ${ZXING_DIR}/src/pdf417/PDFWriter.cpp
        ${ZXING_DIR}/src/pdf417/PDFScanningDecoder.cpp
        ${ZXING_DIR}/src/pdf417/PDFHighLevelEncoder.cpp
        ${ZXING_DIR}/src/pdf417/PDFModulusPoly.cpp
    )
    set(ZXING_INCLUDE_PATH
        ${ZXING_DIR}/src
        ${ZXING_DIR}/src/aztec
        ${ZXING_DIR}/src/datamatrix
        ${ZXING_DIR}/src/maxicode
        ${ZXING_DIR}/src/oned
        ${ZXING_DIR}/src/oned/rss
        ${ZXING_DIR}/src/pdf417
        ${ZXING_DIR}/src/qrcode
        ${ZXING_DIR}/src/textcodec
    )
elseif(QV2RAY_ZXING_PROVIDER STREQUAL "package")
    find_package(PkgConfig REQUIRED)
    pkg_check_modules(ZXING REQUIRED zxing)
    set(ZXING_LIBRARY ${ZXING_LIBRARIES})
    set(ZXING_INCLUDE_PATH ${ZXING_INCLUDE_DIRS})
endif()