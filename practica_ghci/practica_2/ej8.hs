data ColorPrimario = Rojo | Amarillo | Azul deriving Show
data ColorSecundario = Naranja | Verde | Violeta deriving Show

mezclar Rojo Amarillo = Naranja
mezclar Amarillo Rojo = Naranja
mezclar Rojo Azul = Violeta
mezclar Azul Rojo = Violeta
mezclar Azul Amarillo = Verde
mezclar Amarillo Azul = Verde

data Punto2D = Punto Float Float

modulo :: Punto2D -> Float
modulo (Punto x y) = sqrt ((x * x) + (y * y))

distanciaA (Punto x y, Punto x2 y2) = sqrt (((x - x2) * (x - x2)) + ((y - y2) * (y - y2)))
