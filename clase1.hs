doubleMe x = x + x

f :: Integer-> Integer
f 1 = 8 
f 4 = 131
f 16 = 16

g :: Integer -> Integer
g 8 = 16 
g 16 = 4
g 131 = 1

fog :: Integer -> Integer
fog x = f (g (x))

maximo3 :: Integer -> Integer -> Integer -> Integer
maximo3 x1 x2 x3 | x1 >= x2 && x1 >= x3 = x1
                 | x1 < x2 && x2>= x3 = x2
                 | x3 >= x2 && x3>= x1 = x3

sumaDistintos :: Integer -> Integer -> Integer -> Integer
sumaDistintos x1 x2 x3 = x1 + x2 + x3

sumaDistintos1 :: Integer -> Integer -> Integer -> Integer
sumaDistintos1 x1 x2 x3 | x1 == x2 && x2 == x3 = x1 
                        | x1 == x2 = x1 + x3
                        | x1 == x3 = x1 + x2
                        | x2 == x3 = x1 + x2
                        | otherwise = x1 + x2 + x3 -- para escribir diferentes es /= y solo puedo comparar o diferenciar hasta 2 elementos. Otra forma de escribir el otherwise es x1 /= x2 && x2 /= x3 && x1/= x3

digitoUnidades :: Integer -> Integer
digitoUnidades n = mod n 10

todoMenor :: (Integer,Integer) -> (Integer,Integer) -> Bool
todoMenor (m,n) (m1,n1) | m > m1 && n > n1 = True 
                        | m < m1 || n < n1 = False
                        
--otra forma de escribirlo es con fst y snd

--ej2, Prctico3 : Haskell

absoluto :: Integer -> Integer
absoluto n | n >= 0 = n
           | n < 0 = -n

maximoAbs :: Integrer -> Integer -> Integer
maximoAbs n w | n >= 0 && w >= 0 n >= w = n
              | n < w && w >= 0 && n >= 0 = w
