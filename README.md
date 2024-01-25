# robot-framework
Fluxo de compra na Amazon com Robot Framework

# Para instalar o Cypress no Windows 11, siga os seguintes passos:

1. Instale o Python:
Certifique-se de ter o Python instalado no seu sistema. Você pode baixar a versão mais recente do Python em python.org.

2. Instale o pip:
O pip é o sistema de gerenciamento de pacotes para Python. 
Verifique se o pip está instalado e atualizado. 
Você pode usar o seguinte comando no prompt de comando:

python -m ensurepip --default-pip
python -m pip install --upgrade pip

3. Instale o Robot Framework:
Abra o prompt de comando e digite o seguinte comando para instalar o Robot Framework:

pip install robotframework

4. Instale o Robot Framework Ride (opcional):
O Ride é uma interface gráfica de usuário para o Robot Framework que facilita a criação e execução de testes. 
Para instalar o Ride, execute o seguinte comando:

pip install robotframework-ride

5. Instale a biblioteca de Selenium para automação web:
Se você estiver planejando fazer automação de testes web com o Robot Framework, instale a biblioteca do Selenium usando o seguinte comando:

pip install robotframework-seleniumlibrary

5. Teste a instalação:
Após a instalação, você pode testar se o Robot Framework foi instalado corretamente executando o seguinte comando no prompt de comando:

robot --version

Isso deverá exibir a versão do Robot Framework instalada no seu sistema.

Agora você deve ter o Robot Framework instalado no seu sistema Windows. 
Você pode começar a criar e executar testes usando o Robot Framework. 
Certifique-se de consultar a documentação oficial do Robot Framework para obter informações mais detalhadas e exemplos de uso: https://robotframework.org/robotframework/latest/RobotFrameworkUserGuide.html

# Comando para executar os testes no Robot

Para executar os testes no Robot Framework, você usa o comando robot no prompt de comando. 
Aqui está a estrutura básica do comando de execução:

robot nome_do_arquivo_teste.robot
Substitua "nome_do_arquivo_teste.robot" pelo nome do seu arquivo de teste. 
Se o arquivo estiver no mesmo diretório do prompt de comando, você só precisa especificar o nome do arquivo. Se estiver em um diretório diferente, forneça o caminho completo ou navegue até o diretório antes de executar o comando.

Além disso, você pode incluir várias opções e argumentos para personalizar a execução dos testes. 
Algumas opções comuns incluem:

-d <diretório>: Define o diretório de saída para os relatórios e logs.
-v <variável>:<valor>: Define variáveis para serem usadas nos testes.
--loglevel <nível>: Define o nível de detalhes do log (INFO, DEBUG, etc.).
--output <arquivo>: Especifica o nome do arquivo para salvar o relatório de saída.
--variablefile <arquivo>: Especifica um arquivo contendo variáveis a serem usadas nos testes.

Aqui está um exemplo básico de comando de execução:

robot --outputdir results tests
Neste exemplo, o comando executa todos os testes no diretório "tests" e armazena os resultados no diretório "results". 
Certifique-se de substituir "tests" e "results" pelos nomes reais dos seus diretórios.

Lembre-se de que, se você estiver usando o Robot Framework Ride (interface gráfica), também pode executar os testes diretamente a partir da interface.
Adapte os comandos conforme necessário com base na estrutura do seu projeto e nos requisitos específicos do seu teste.

![image](https://github.com/jonathanmotta/robot-framework/assets/43069521/031adc0b-c232-4dcf-8eb9-0132e62ad5ac)
