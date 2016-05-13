module Lib
    ( extractPalette
    ) where

import Codec.Picture

mkPalOpt :: Int -> PaletteOptions
mkPalOpt n = PaletteOptions {
         paletteCreationMethod = MedianMeanCut,
         enableImageDithering = True,
         paletteColorCount = n}

extractPalette :: Int -> FilePath -> FilePath -> IO ()
extractPalette n infile outfile = do dynimg <- readImage infile
                                     let img = fmap convertRGB8 dynimg
                                     let palOpt = mkPalOpt n
                                     let pal = fmap (snd . (palettize palOpt)) img
                                     either putStrLn (writeBitmap outfile) pal
