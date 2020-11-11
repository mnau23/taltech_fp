{- Write a program in Haskell to add a record for a book -}

-- book_name, author_name, ISBN, year_publishing, version_number
data Book = Book String String String Int Int deriving (Show)

main = do
    let sample = Book "Learn You a Haskell for Great Good!" "Miran Lipovaca" "978-1593272838" 2011 1
    print sample 
