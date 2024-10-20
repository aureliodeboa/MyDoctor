# 💊 MyDoctor: Gerenciamento Inteligente de Medicamentos 💊
## Projeto Hackatruck
Este projeto foi desenvolvido como parte da iniciativa **Hackatruck**, promovida pelo Instituto Eldorado em parceria com a IBM. O objetivo é incentivar a criação de soluções tecnológicas que atendam às necessidades da sociedade.

## Descrição
O **MyDoctor** é um aplicativo focado no gerenciamento de medicamentos, desenvolvido para facilitar a vida de pacientes, especialmente idosos, e de seus cuidadores. A solução integra notificações, organização de tratamentos e um sistema de controle remoto de gaveteiros inteligentes, proporcionando mais segurança e tranquilidade para o usuário e seus familiares.

![WhatsApp Image 2024-10-20 at 14 33 27_31ccd5bb](https://github.com/user-attachments/assets/10a601af-2e81-43eb-8659-6f6912f5aa6e)

## Equipe
![image](https://github.com/user-attachments/assets/ef92f20e-7b6a-41c8-a52e-509de41792e6)


- Aurelio Ribeiro
- Alysson de Jesus Alves
- Gabrielle
- Andressa Carvalho

## Tecnologias Utilizadas
- **SwiftUI**: Framework para construção de uma interface amigável e acessível, focada em uma ótima experiência de usuário.
- **Node-RED**: Ferramenta utilizada para automação e integração com dispositivos IoT, permitindo a comunicação eficiente entre o aplicativo e os componentes físicos.
- **ESP32**: Dispositivo responsável pela conexão do aplicativo ao gaveteiro inteligente, possibilitando o controle remoto do armazenamento de medicamentos.
- **Arduino IDE**: Plataforma utilizada para programar o controle dos indicadores LED, que auxiliam no gerenciamento do armazenamento físico dos remédios.
- **IBM Cloudant**: Banco de dados utilizado para armazenar informações de forma segura, garantindo a confidencialidade e integridade dos dados dos pacientes.
![WhatsApp Image 2024-10-20 at 14 33 20_4ac7db0d](https://github.com/user-attachments/assets/c2deb56e-ca6b-4997-8cb6-3ca7b60a32d6)
![WhatsApp Image 2024-10-20 at 14 33 20_4ac7db0d](https://github.com/user-attachments/assets/e8720382-b9bd-44c5-ac42-7eb72c3e2df0)

## Funcionalidades
- **Alarmes Inteligentes**: Sistema de notificações que lembra os usuários de tomarem seus medicamentos nos horários corretos.
- **Gestão de Estoque de Medicamentos**: Controle completo dos medicamentos, com informações sobre doses, horários e reposição.
- **Gaveteiro Inteligente**: Integração com hardware que permite organizar e localizar medicamentos de forma eficiente por meio de luzes indicadoras.
- **Interface Amigável**: Design simples e acessível, pensado para facilitar a navegação, mesmo para pessoas com pouca experiência em tecnologia.

## Objetivo
O projeto tem como objetivo melhorar a qualidade de vida das pessoas, especialmente idosos e seus cuidadores, oferecendo uma solução inovadora e eficaz para a gestão de medicamentos, minimizando esquecimentos e garantindo mais segurança.

## Estrutura do Projeto

### Arquivos Principais

- **Alarmes.swift**: Gerencia o sistema de notificações para lembrar os usuários dos horários dos medicamentos.
- **Estoque.swift**: Controla o estoque dos medicamentos e as doses que precisam ser tomadas.
- **RegistrarRemedio.swift**: Responsável pelo registro de novos medicamentos no sistema.
- **UpdateRemedio.swift**: Realiza a atualização das informações dos medicamentos.
- **ScreenIdoso.swift**: Tela principal voltada para a experiência do usuário idoso, garantindo simplicidade.
- **backend-final-gaveta-update.json**: Contém o código para a integração e controle remoto das gavetas inteligentes.

### Pastas e Arquivos
- **MyDoctor.xcodeproj**: Projeto Xcode para rodar o aplicativo.
- **MyDoctor**: Contém os arquivos principais do aplicativo.

## Como Executar o Projeto

1. Clone o repositório:
   ```bash
   git clone https://github.com/aureliodeboa/MyDoctor.git
   ```

2. Navegue até o diretório do projeto:
   ```bash
   cd MyDoctor
   ```

3. Abra o projeto no Xcode:
   ```bash
   open MyDoctor.xcodeproj
   ```

4. Execute o aplicativo em um dispositivo ou simulador iOS.

## Contribuições
Contribuições são sempre bem-vindas! Se você deseja melhorar o projeto, sinta-se à vontade para abrir uma *issue* ou enviar um *pull request*.

