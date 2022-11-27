{-
FÍSICA-HASKELL
--------------
Curso sobre a linguagem haskell baseado nos livros:
(1) '' by Graham Hutton
(2) 'The Craft of Functional Programming' by Simon Thompson
-----------------------------------------------
(Aula 00): Informações técnicas e contextualização sobre a linguagem.
(Aula 01): Tipos básicos, definições, operadores e funções primitivas.
- 
-}

--Aula 01: Bool, Int, Overloading, Guards, Char, Float, Syntax

--Booleans
-- && : and
-- || : or
-- not : not
-- == : equality operator
-- /= : inequality operator

-- Exemplos p.34 referência (2)
-- Função testa ops booleanos 
testaBool :: Bool -> Bool -> Bool
testaBool x y = (x || y) && not (x && y)

-- Função Not
myNot :: Bool -> Bool
myNot True = False
myNot False = True

-- Exercícios p.35 referência (2)
{-
(Ex 3.1)
Give another version of the definition of 'exclusive or' which works informally
thus: 'exclusive or of x and y will be True if either x is True and y is False. or
vice versa'
-}

excOr :: Bool -> Bool -> Bool
excOr False False = True
excOr _ True = False
excOr True _ = False 

{-
(Ex. 3.2) 
Give the 'box and line' diagram corresponding to your answer to the previous
question.
RESP: in paper
-}


{-
(Ex. 3.3) 
Using literals on the left-hand side we can make the truth table for a function into its Haskell definition. Complete the following definition of exOr in this style.
RESP.:
  exOr True True = False
  exOr True False = False
  exOr False True = False
  exOr False False = True
-}
--Uso de exaustão de padrões. 
excOr33 :: Bool -> Bool -> Bool
excOr33 True True = False
excOr33 True False = False
excOr33 False True = False
excOr33 False False = True

{-
(Ex. 3.4)
Give two different definitions of the nAnd function
nAnd :: Bool -> Bool -> Bool
which returns the result True except when both its arguments are True. Give a diagram illustrating one of your definitions. 
-}
--Uso de Guardas e operadores booleanos.
nAnd :: Bool -> Bool -> Bool
nAnd x y
  | (x == True) && (y == True) = True
  | otherwise = False

{-
(Ex. )
-}