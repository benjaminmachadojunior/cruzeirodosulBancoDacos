Projeto de Banco de Dados Escolar
Este projeto define e manipula um banco de dados escolar fictício utilizando MySQL. Ele inclui tabelas para armazenar informações sobre pessoas, alunos, professores, matérias, turmas e matrículas, além de realizar diversas operações CRUD (Create, Read, Update, Delete) para gerenciar esses dados.

Estrutura do Banco de Dados
Banco de Dados benja:
Conjunto de tabelas para gerenciar informações escolares.

Tabelas:

Pessoa: Armazena dados pessoais, incluindo nome, sobrenome, data de nascimento, endereço, telefone e email.
Aluno: Relaciona pessoas que são alunos pela chave estrangeira id_pessoa.
Professor: Relaciona pessoas que são professores e inclui a disciplina ensinada.
Materia: Define matérias disponíveis, incluindo seus nomes e descrições.
Turma: Associa professores e matérias em uma turma específica por ano e semestre.
Matricula: Registra os alunos matriculados em turmas específicas e suas notas.
Operações de Manipulação
Inserção de Dados:

População inicial das tabelas com registros de exemplo.
Consultas:

Seleção de pessoas com sobrenome específico.
Listagem ordenada de pessoas por data de nascimento.
Top 5 melhores notas com os nomes dos alunos.
Consulta de alunos e respectivas disciplinas lecionadas.
Consulta de alunos matriculados em uma matéria específica.
Atualizações:

Atualização de endereço e telefone de um aluno específico.
Atualização do email de um professor.
Atualização de disciplinas ensinadas por professores.
Exclusão:

Remoção de matrículas de um aluno específico.
Remoção de alunos inativos.
Remoção de registro de pessoas com base em condição de email específico.
Requisitos
MySQL: Certifique-se de ter uma instalação MySQL ativa para utilizar este projeto.
Instruções
Configuração do Banco de Dados:

Execute o script de criação do banco de dados e das tabelas.
Popule o banco de dados utilizando os scripts de inserção fornecidos.
Consultas e Atualizações:

Utilize os scripts de consulta para extrair os dados desejados.
Use os scripts de atualização e exclusão para modificar ou remover dados.
Aviso
Segurança dos Dados: Sempre faça backups antes de executar operações de atualização ou exclusão em um ambiente real.
Contribuições
Contribuições e sugestões são bem-vindas. Sinta-se à vontade para fazer um fork do repositório e abrir uma solicitação de pull.

Este README fornece um resumo geral do projeto, ajudando a entender o propósito e como utilizar o banco de dados descrito nos scripts SQL fornecidos.
