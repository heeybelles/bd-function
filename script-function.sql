/*Utilizando o banco de Dados Sakila, crie uma função que exiba 
a seguinte frase:"Eu sou do país X"
O X representa o código do país escolhido, portanto será o 
parâmetro que será utilizado*/

SELECT * FROM sakila.country;

create function fn_mostrarPais3(x smallint)
returns varchar(50) deterministic
return (select concat('Eu sou do país ', country)
from country where country_id=x);
SELECT fn_mostrarPais3(2);

drop function fn_mostrarPais;