# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end
Psychologist.create user_name: "fernando"

Instrument.create \
  name: "Perfil de personalidade 1",
  question_1: "Como você descreveria seu nível de estresse no momento? 1-Baixo; 2-Moderado; 3-Alto; 4-Muito alto",
  question_2: "Com que frequência você se sente triste ou deprimido recentemente? 1-Nunca; 2-Raramente; 3-Às vezes; 4-Frequentemente",
  question_3: "Quão satisfeito você está com seus relacionamentos pessoais atualmente? 1-Muito satisfeito; 2-Satisfeito; 3-Insatisfeito; 4-Muito insatisfeito",
  question_4: "Com que frequência você experimenta sentimentos de ansiedade ou nervosismo? 1-Raramente; 2-Algumas vezes por semana; 3-Quase todos os dias;  4-O tempo todo",
  question_5: "Você sente que tem habilidades eficazes para lidar com o estresse e as dificuldades da vida? 1-Sim, sempre consigo lidar bem; 2-Na maioria das vezes; 3-Às vezes, mas nem sempre; 4-Não, tenho dificuldades em lidar com isso"

Instrument.create \
  name: "Perfil de personalidade 2",
  question_1: "Como você descreveria sua disposição emocional no momento? 1-Positiva e otimista; 2-Neutra e equilibrada; 3-Um pouco preocupada ou ansiosa; 4-Muito negativa ou pessimista",
  question_2: "Qual é o nível de energia que você sente atualmente? 1-Alto e cheio de energia; 2-Moderado, nem alto nem baixo; 3-Um pouco baixo ou cansado; 4- Muito baixo, com dificuldade de se motivar",
  question_3: "Como você avaliaria sua autoestima no momento? 1-Alta, confio plenamente em mim mesmo; 2-Moderada, às vezes me sinto bem comigo mesmo; 3-Um pouco baixa, tenho dúvidas sobre meu valor; 4-Muito baixa, sinto-me inadequado ou sem valor",
  question_4: "Com que frequência você se sente sobrecarregado(a) pelas responsabilidades da vida 1-Raramente ou nunca me sinto sobrecarregado(a); 2-Às vezes me sinto um pouco sobrecarregado(a); 3-Com frequência me sinto sobrecarregado(a); 4-Constantemente me sinto sobrecarregado(a)",
  question_5: "Como você avalia seu nível de conexão com os outros? 1-Tenho relacionamentos fortes e de apoio; 2-enho alguns bons relacionamentos, mas poderia ser melhor; 3-Sinto-me isolado(a) ou desconectado(a) dos outros; 4-Sinto-me completamente sozinho(a) e sem apoio"