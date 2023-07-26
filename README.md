# Descrição do projeto

Esse projeto fornece ao usuário uma forma de organizar suas tarefas e utilizar de gamificação. Nesta versão simplificada, já é possível cadastrar tarefas possuindo nome, grau de dificuldade de 1 a 5 e uma url de uma imagem que faça referência a essa tarefa. Após cadastrar suas tarefas, o usuário poderá monitorá-las na página inicial e acrescentar sua evolução em relação a cada uma delas através de um campo de nível. A quantidade máxima de níveis para cada tarefa é calculada pelo app levando em consideração a dificuldade atribuída pelo usuário na hora do cadastro.


# Tecnologias utilizadas

Linguagem Dart e framework Flutter.
Foi utilizado o StatefulWidgets para mudança de estado e o banco de dados sqlite para armazenamento interno.


# Instruções para compilar e executar o projeto:


- Execute o aplicativo no android.

- A tela inicial não terá nenhuma tarefa, por isso tem uma mensagem: “Não há nenhuma Tarefa” e um ícone em cima, de atenção.

- Nessa tela tem um botão + que ao ser acionado abre uma nova tela de formulário.

- Nessa tela de formulário, podemos criar uma nova tarefa preenchendo os campos de nome, dificuldade (1 a 5) e URL de uma imagem.

- Se o botão de adicionar for acionado antes de serem preenchidos todos os campos, uma validação será lançada informando abaixo de cada campo como ele deverá ser preenchido.

- Ao preencher corretamente os campos, uma nova tarefa será criada e o aplicativo voltará para a tela inicial.

- Note que a princípio a tela vai continuar sem a tarefa que acabou de ser criada. Pois o widget não foi reconstruído. No AppBar ao lado direto consta um ícone de refresh.

- Clicando no ícone de refresh a nova tarefa será exibida na tela.

- Cada tarefa na tela principal terá a foto, nome e a dificuldade representada pelas estrelas pintadas em azul mais forte.

- O Botão de UP tem duas funções:
    - Um clique rápido aumenta o nível de aprendizado. Esse nível representa o quanto executou a sua atividade. Quanto menor a dificuldade, mais rápido a barra de nível será preenchida.
    - Um clique longo deleta a tarefa. Para refletir essa deleção na lista de tarefas terá que clicar novamente no ícone de refresh no AppBar.


# Lista de membros da equipe

- Jamile Ferreira Rocha
- Maria Vitória de Jesus Damasceno
- Caio Silva Pontes
- Diego Silva dos Santos.

