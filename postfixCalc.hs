{-	This is how I would actually do it. But turns out, since the second function
	is a helper function, it is good practice to use the where keyword and put
	these two functions together.

calc :: (Num a, Read a) =>String -> a
calc x = head (foldl stacker [] (words x))

stacker :: (Num a, Read a) => [a] -> String -> [a]
stacker (x:y:xs) "+" = (x+y):xs
stacker (x:y:xs) "-" = (x-y):xs
stacker (x:y:xs) "*" = (x*y):xs
stacker xs y = (read y):xs

	
-}

calc :: (Num a, Read a) => String -> a
calc xs = head (foldl stacker [] (words xs))
	where
		stacker (x:y:xs) "+" = (x+y):xs
		stacker (x:y:xs) "-" = (x-y):xs
		stacker (x:y:xs) "*" = (x*y):xs
		stacker xs y = (read y):xs