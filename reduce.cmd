convert Boot_Close.jpg -quality 50 Boot_Close_

for /r . %i in (*.jpg) do convert %i -quality 25  %~ni_reduced.jpg