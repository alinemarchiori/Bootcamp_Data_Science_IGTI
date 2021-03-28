
use TrabalhoPraticoModulo2ok;

select * from pesquisa;
select * from pessoa;
select * from clima;
select * from animal_estimacao;

insert into pesquisa (data_pesquisa, cod_pessoa, cod_animal_estimacao, 
							cod_bebida, cod_hobbie, cod_clima)
(
    select stg.data_coleta as data_pesquisa, 
			stg.cod_pessoa,
            aes.cod_animal_estimacao,
            beb.cod_bebida,
            hob.cod_hobbie,
            cli.cod_clima
	from stg_pesquisa as stg
    join animal_estimacao aes
		on stg.animal_estimacao = aes.animal
	join bebida as beb
		on beb.bebida = bebida_favorita
	join hobbie as hob
		on hob.hobbie = stg.hobbies
	join clima as cli
		on cli.clima = stg.clima
);



