--#ENDPOINT GET /pets
--#TAGS schema
--#SECURITY none
return 'OK'

--#ENDPOINT POST /pets
--#TAGS schema
--#SECURITY none
return { name="aaabbbbcccc", id="a1" }

--#ENDPOINT GET /pets/{id}
--#TAGS schema
--#SECURITY none
return { name="cat kev", id="b1" }

--#ENDPOINT DELETE /pets/{id}
--#TAGS schema
--#SECURITY none
return
