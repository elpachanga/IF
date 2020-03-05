SET a=1
SET b=1
:A
md %a%
SET b=1
:B
IF NOT %b% == %a% (
	md %a%\%b%
	SET /a b+=1
	goto B
	)
SET /a a+=1
goto A
