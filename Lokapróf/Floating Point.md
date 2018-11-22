#Floating Point
## 1. Bias = 2^(e-1)-1
## 2.log2^(Nefnari) = Fjöldi færsla
	0, _*(Fjöldi færsla)
	Setur Teljara í Binary á strikin (Lengst til vinstri)
	Færir kommuna að fyrsta ás(1)
	e  = hversu oft þú færir kommuna að ás
## 3. Ef e >= Bias þá er talan DeNormalized else: Normalized
 
## DeNormalized
## 4. Finna f
	f = Teljarinn í bin + 0 til að fylla í fraction bita

## 5. s = 0 ef talan er jákvæð
   s = 1 ef talan er neikvæð
   e = 0 * e
   f = f

## 6. Setja tölurnar saman
	s e f

## Normalized
## 4. 
	f = binary eftir kommuna og fyllir bitana með 0

## 5. Finna E
	E = e - Bias

## 6.
	E í binary og fyllir bitana með 0

## 7. 
	s = 0 ef talan er jákvæð
   s = 1 ef talan er neikvæð
   e = 5. liður
   f = 4. liður