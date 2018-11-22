# Floating Point
## 1. Finna Bias
	Bias = 2^(e-1)-1
## 2. log2^(Nefnari) = Fjöldi færsla
	0, _*(Fjöldi færsla)
	Setur Teljara í Binary á strikin (Lengst til vinstri)
	Færir kommuna að fyrsta ás(1)
	e  = hversu oft þú færir kommuna að ás
## 3. DeNormalized eða Normalized?
	Ef e >= Bias þá er talan DeNormalized else: Normalized
 
## DeNormalized
## 4. Finna f
	f = Teljarinn í bin + 0 til að fylla í fraction bita

## 5. Setja
	s = 0 ef talan er jákvæð
	s = 1 ef talan er neikvæð
	e = 0 * e
	f = f

## Normalized
## 4. Finna f
	f = binary eftir kommuna og fyllir bitana með 0

## 5. Finna E
	E = e - Bias

## 6. Finna e
	E í binary og fyllir bitana með 0

## 7. Setja tölurnar saman
	s = 0 ef talan er jákvæð
	s = 1 ef talan er neikvæð
	e = 6. liður
	f = 4. liður


# Reverse Floating Point
## Dæmi:
## 1.
	s 	exp 				frac
	   16 8 4 2 1  1/2 1/4 1/8 1/16  1/32 1/64
	0	0 0 0 1 1 	0   1   1    0    0    0

## 2. Finna Bias
	Bias = 2^(e-1)-1
	Bias = 2^(5-1)-1 = 15

## 3. Finna E
	e = (exp to Binary) = 3
	E = e - Bias
	E = 3 - 15 = -12

## 4. Finna M
	M = þar sem ás er fyrir neðan + 1
	M = 1/4 + 1/8 + 1 = 11/8

## 5. Formúla
	V = (-1)^s * M * 2^E
	V = (-1)^0 * 11/8 * 2^(-12)
	V = 11/32768

# Special
	-Infinity > 1 11111 000000

	+Infinity > 0 11111 000000
	 NaN 	  > 1 11111 111111
