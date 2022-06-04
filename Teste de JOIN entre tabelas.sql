SELECT  a.nome  as nome_alunos,
		b.nome  as nome_cursos,
        c.tipo as tipo_areas
FROM escola.alunos a 
JOIN escola.areas c ON a.ano_matricula = c.ano_matricula
JOIN escola.cursos b ON b.area_id = c.id;
-- WHERE nome = 'ana' AND sobrenome = 'silva';