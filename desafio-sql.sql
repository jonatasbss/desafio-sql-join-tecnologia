-- 1. Retorne por ordem crescente de admissão o nome dos funcionários e seus respectivos cargos na
-- empresa
SELECT p.nome_pessoa as nome, to_char(p.data_admissao, 'DD/MM/YYYY') as data_admissao, cg.nome_cargo as cargo
FROM pessoas p
         LEFT JOIN cargos cg on cg.cod_cargo = p.cod_cargo
ORDER BY p.data_admissao;

-- 2. Considerando que a tabela Pessoas possua mais registros que o ilustrado acima, retorne o nome do
-- funcionário e o nome do cargo do funcionário mais antigo na empresa.
SELECT p.nome_pessoa as funcionario, c.nome_cargo as cargo
FROM pessoas p
         LEFT JOIN cargos c on c.cod_cargo = p.cod_cargo
WHERE p.data_admissao <= '1998-04-05'
ORDER BY p.data_admissao;

-- 3. Retorne todos os nomes dos cargos com a quantidade de funcionários em cada um deles.
SELECT c.nome_cargo as cargo, count(p.cod_cargo) as quantidade_funcionarios
FROM pessoas p
         LEFT JOIN cargos c on c.cod_cargo = p.cod_cargo
group by c.nome_cargo;



