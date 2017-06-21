-- file: ch05/PrettyJSON.hs

string :: String -> Doc
string = enclose '"' '"' . hcat . map oneChar

pointyString :: String -> Doc
pointyString s = enclose '"' '"' (hcat (map oneChar s))

enclose :: Char -> Char -> Doc -> Doc
enclose left right x = char left <> x <> char right