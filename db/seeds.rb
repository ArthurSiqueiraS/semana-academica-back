Faker::Config.locale = 'pt-BR'

n_communities = 3
n_patients = 0
n_providers = 10
n_anamneses = 0

{
  'Afeganistão': 'AFG', 'África do Sul': 'ZAF', 'Albânia': 'ALB', 'Alemanha': 'DEU',
  'Andorra': 'AND', 'Angola': 'AGO', 'Antiga e Barbuda': 'ATG', 'Arábia Saudita': 'SAU',
  'Argélia': 'DZA', 'Argentina': 'ARG', 'Arménia': 'ARM', 'Austrália': 'AUS',
  'Áustria': 'AUT', 'Azerbaijão': 'AZE', 'Bahamas': 'BHS', 'Bangladexe': 'BGD',
  'Barbados': 'BRB', 'Barém': 'BHR', 'Bélgica': 'BEL', 'Belize': 'BLZ',
  'Benim': 'BEN', 'Bielorrússia': 'BLR', 'Bolívia': 'BOL', 'Bósnia e Herzegovina': 'BIH',
  'Botsuana': 'BWA', 'Brasil': 'BRA', 'Brunei': 'BRN', 'Bulgária': 'BGR',
  'Burquina Faso': 'BFA', 'Burúndi': 'BDI', 'Butão': 'BTN', 'Cabo Verde': 'CPV',
  'Camarões': 'CMR', 'Camboja': 'KHM', 'Canadá': 'CAN', 'Catar': 'QAT',
  'Cazaquistão': 'KAZ', 'Chade': 'TCD', 'Chile': 'CHL', 'China': 'CHN',
  'Chipre': 'CYP', 'Colômbia': 'COL', 'Comores': 'COM', 'Congo-Brazzaville': 'COG',
  'Coreia do Norte': 'PRK', 'Coreia do Sul': 'KOR', 'Cosovo': 'COS', 'Costa do Marfim': 'CIV',
  'Costa Rica': 'CRI', 'Croácia': 'HRV', 'Cuaite': 'KWT', 'Cuba': 'CUB',
  'Dinamarca': 'DNK', 'Dominica': 'DMA', 'Egito': 'EGY', 'Emirados Árabes Unidos': 'ARE',
  'Equador': 'ECU', 'Eritreia': 'ERI', 'Eslováquia': 'SVK', 'Eslovénia': 'SVN',
  'Espanha': 'ESP', 'Estado da Palestina': 'PSE', 'Estados Unidos': 'USA', 'Estónia': 'EST',
  'Etiópia': 'ETH', 'Fiji': 'FJI', 'Filipinas': 'PHL', 'Finlândia': 'FIN',
  'França': 'FRA', 'Gabão': 'GAB', 'Gâmbia': 'GMB', 'Gana': 'GHA',
  'Geórgia': 'GEO', 'Granada': 'GRD', 'Grécia': 'GRC', 'Guatemala': 'GTM',
  'Guiana': 'GUY', 'Guiné': 'GIN',  'Guiné Equatorial': 'GNQ',  'Guiné-Bissau': 'GNB',
  'Haiti': 'HTI', 'Honduras': 'HND', 'Hungria': 'HUN', 'Iémen': 'YEM', 'Ilhas Marechal': 'MHL',
  'Índia': 'IND', 'Indonésia': 'IDN', 'Irão': 'IRN', 'Iraque': 'IRQ', 'Irlanda': 'IRL',
  'Islândia': 'ISL', 'Israel': 'ISR', 'Itália': 'ITA', 'Jamaica': 'JAM',
  'Japão': 'JPN', 'Jibuti': 'DJI', 'Jordânia': 'JOR', 'Laus': 'LAO',
  'Lesoto': 'LSO', 'Letónia': 'LVA', 'Líbano': 'LBN', 'Libéria': 'LBR',
  'Líbia': 'LBY', 'Listenstaine': 'LIE', 'Lituânia': 'LTU', 'Luxemburgo': 'LUX',
  'Macedónia': 'MKD', 'Madagáscar': 'MDG', 'Malásia': 'MYS', 'Maláui': 'MWI',
  'Maldivas': 'MDV', 'Mali': 'MLI', 'Malta': 'MLT', 'Marrocos': 'MAR',
  'Maurícia': 'MUS', 'Mauritânia': 'MRT', 'México': 'MEX', 'Mianmar': 'MMR',
  'Micronésia': 'FSM', 'Moçambique': 'MOZ', 'Moldávia': 'MDA', 'Mónaco': 'MCO',
  'Mongólia': 'MNG', 'Montenegro': 'MNE', 'Namíbia': 'NAM', 'Nauru': 'NRU',
  'Nepal': 'NPL', 'Nicarágua': 'NIC', 'Níger': 'NER', 'Nigéria': 'NGA',
  'Noruega': 'NOR', 'Nova Zelândia': 'NZL', 'Omã': 'OMN', 'Países Baixos': 'NLD',
  'Palau': 'PLW', 'Panamá': 'PAN', 'Papua Nova Guiné': 'PNG', 'Paquistão': 'PAK',
  'Paraguai': 'PRY', 'Peru': 'PER', 'Polónia': 'POL', 'Portugal': 'PRT',
  'Quénia': 'KEN', 'Quirguistão': 'KGZ', 'Quiribáti': 'KIR', 'Reino Unido': 'GBR',
  'República Centro-Africana': 'CAF', 'República Checa': 'CZE',
  'República Democrática do Congo': 'COD', 'República Dominicana': 'DOM',
  'Roménia': 'ROU', 'Ruanda': 'RWA', 'Rússia': 'RUS', 'Salomão': 'SLB',
  'Salvador': 'SLV', 'Samoa': 'WSM', 'Santa Lúcia': 'LCA', 'São Cristóvão e Neves': 'KNA',
  'São Marinho': 'SMR', 'São Tomé e Príncipe': 'STP', 'São Vicente e Granadinas': 'VCT',
  'Seicheles': 'SYC', 'Senegal': 'SEN', 'Serra Leoa': 'SLE', 'Sérvia': 'SRB', 'Singapura': 'SGP',
  'Síria': 'SYR', 'Somália': 'SOM', 'Sri Lanca': 'LKA', 'Suazilândia': 'SWZ', 'Sudão': 'SDN',
  'Sudão do Sul': 'SSD', 'Suécia': 'SWE', 'Suíça': 'CHE', 'Suriname': 'SUR', 'Tailândia': 'THA',
  'Taiuã': 'TWN', 'Tajiquistão': 'TJK', 'Tanzânia': 'TZA', 'Timor-Leste': 'TLS', 'Togo': 'TGO',
  'Tonga': 'TON', 'Trindade e Tobago': 'TTO', 'Tunísia': 'TUN', 'Turcomenistão': 'TKM',
  'Turquia': 'TUR', 'Tuvalu': 'TUV', 'Ucrânia': 'UKR', 'Uganda': 'UGA',
  'Uruguai': 'URY', 'Usbequistão': 'UZB', 'Vanuatu': 'VUT', 'Vaticano': 'VAT',
  'Venezuela': 'VEN', 'Vietname': 'VNM', 'Zâmbia': 'ZMB', 'Zimbábue':	'ZWE',
  'Brasil': 'BRA', 'Uruguai': 'URY',
}.map do |name, code|
  Country.create(name: name, code: code)
end

Country.find_by(name: 'Brasil') do |country|
  {
    'Acre': 'AC', 'Alagoas': 'AL', 'Amapá': 'AP', 'Amazonas': 'AM', 'Bahia': 'BA',
    'Ceará': 'CE', 'Distrito Federal': 'DF', 'Espírito Santo': 'ES', 'Goiás': 'GO',
    'Maranhão': 'MA', 'Mato Grosso': 'MT', 'Mato Grosso do Sul': 'MS', 'Minas Gerais': 'MG',
    'Pará': 'PA', 'Paraíba': 'PB', 'Paraná': 'PR', 'Pernambuco': 'PE', 'Piauí': 'PI',
    'Rio de Janeiro': 'RJ', 'Rio Grande do Norte': 'RN', 'Rio Grande do Sul': 'RS',
    'Rondônia': 'RO', 'Roraima': 'RR', 'Santa Catarina': 'SC', 'São Paulo': 'SP',
    'Sergipe': 'SE', 'Tocantins': 'TO',
  }.map do |name, uf|
    State.create(name: name, uf: uf, country: country)
  end
end

State.find_by(uf: 'RS') do |state|
  [
    'Aceguá','Água Santa','Agudo','Ajuricaba','Alecrim','Alegrete','Alegria',
    'Almirante Tamandaré do Sul','Alpestre','Alto Alegre','Alto Feliz','Alvorada',
    'Amaral Ferrador','Ametista do Sul','André da Rocha','Anta Gorda',
    'Antônio Prado','Arambaré','Araricá','Aratiba','Arroio do Meio',
    'Arroio do Padre','Arroio do Sal','Arroio do Tigre','Arroio dos Ratos',
    'Arroio Grande','Arvorezinha','Augusto Pestana','Áurea','Bagé',
    'Balneário Pinhal','Barão','Barão de Cotegipe','Barão do Triunfo',
    'Barra do Guarita','Barra do Quaraí','Barra do Ribeiro','Barra do Rio Azul',
    'Barra Funda','Barracão','Barros Cassal','Benjamin Constant do Sul',
    'Bento Gonçalves','Boa Vista das Missões','Boa Vista do Buricá',
    'Boa Vista do Cadeado','Boa Vista do Incra','Boa Vista do Sul',
    'Bom Jesus','Bom Princípio','Bom Progresso','Bom Retiro do Sul',
    'Boqueirão do Leão','Bossoroca','Bozano','Braga','Brochier','Butiá',
    'Caçapava do Sul','Cacequi','Cachoeira do Sul','Cachoeirinha',
    'Cacique Doble','Caibaté','Caiçara','Camaquã','Camargo','Cambará do Sul',
    'Campestre da Serra','Campina das Missões','Campinas do Sul','Campo Bom',
    'Campo Novo','Campos Borges','Candelária','Cândido Godói','Candiota',
    'Canela','Canguçu','Canoas','Canudos do Vale','Capão Bonito do Sul',
    'Capão da Canoa','Capão do Cipó','Capão do Leão','Capela de Santana','Capitão',
    'Capivari do Sul','Caraá','Carazinho','Carlos Barbosa','Carlos Gomes','Casca',
    'Caseiros','Catuípe','Caxias do Sul','Centenário','Cerrito','Cerro Branco',
    'Cerro Grande','Cerro Grande do Sul','Cerro Largo','Chapada','Charqueadas','Charrua',
    'Chiapeta','Chuí','Chuvisca','Cidreira','Ciríaco','Colinas','Colorado','Condor','Constantina',
    'Coqueiro Baixo','Coqueiros do Sul','Coronel Barros','Coronel Bicaco','Coronel Pilar',
    'Cotiporã','Coxilha','Crissiumal','Cristal','Cristal do Sul','Cruz Alta','Cruzaltense',
    'Cruzeiro do Sul','David Canabarro','Derrubadas','Dezesseis de Novembro','Dilermando de Aguiar',
    'Dois Irmãos','Dois Irmãos das Missões','Dois Lajeados','Dom Feliciano','Dom Pedrito',
    'Dom Pedro de Alcântara','Dona Francisca','Doutor Maurício Cardoso','Doutor Ricardo',
    'Eldorado do Sul','Encantado','Encruzilhada do Sul','Engenho Velho','Entre Rios do Sul',
    'Entre-Ijuís','Erebango','Erechim','Ernestina','Erval Grande','Erval Seco','Esmeralda',
    'Esperança do Sul','Espumoso','Estação','Estância Velha','Esteio','Estrela','Estrela Velha',
    'Eugênio de Castro','Fagundes Varela','Farroupilha','Faxinal do Soturno','Faxinalzinho',
    'Fazenda Vilanova','Feliz','Flores da Cunha','Floriano Peixoto','Fontoura Xavier',
    'Formigueiro','Forquetinha','Fortaleza dos Valos','Frederico Westphalen','Garibaldi',
    'Garruchos','Gaurama','General Câmara','Gentil','Getúlio Vargas','Giruá','Glorinha',
    'Gramado','Gramado dos Loureiros','Gramado Xavier','Gravataí','Guabiju','Guaíba','Guaporé',
    'Guarani das Missões','Harmonia','Herval','Herveiras','Horizontina','Hulha Negra','Humaitá',
    'Ibarama','Ibiaçá','Ibiraiaras','Ibirapuitã','Ibirubá','Igrejinha','Ijuí','Ilópolis','Imbé',
    'Imigrante','Independência','Inhacorá','Ipê','Ipiranga do Sul','Iraí','Itaara','Itacurubi',
    'Itapuca','Itaqui','Itati','Itatiba do Sul','Ivorá','Ivoti','Jaboticaba','Jacuizinho',
    'Jacutinga','Jaguarão','Jaguari','Jaquirana','Jari','Jóia','Júlio de Castilhos',
    'Lagoa Bonita do Sul','Lagoa dos Três Cantos','Lagoa Vermelha','Lagoão','Lajeado',
    'Lajeado do Bugre','Lavras do Sul','Liberato Salzano','Lindolfo Collor','Linha Nova',
    'Maçambara','Machadinho','Mampituba','Manoel Viana','Maquiné','Maratá','Marau','Marcelino Ramos',
    'Mariana Pimentel','Mariano Moro','Marques de Souza','Mata','Mato Castelhano','Mato Leitão',
    'Mato Queimado','Maximiliano de Almeida','Minas do Leão','Miraguaí','Montauri',
    'Monte Alegre dos Campos','Monte Belo do Sul','Montenegro','Mormaço','Morrinhos do Sul',
    'Morro Redondo','Morro Reuter','Mostardas','Muçum','Muitos Capões','Muliterno','Não-Me-Toque',
    'Nicolau Vergueiro','Nonoai','Nova Alvorada','Nova Araçá','Nova Bassano','Nova Boa Vista',
    'Nova Bréscia','Nova Candelária','Nova Esperança do Sul','Nova Hartz','Nova Pádua',
    'Nova Palma','Nova Petrópolis','Nova Prata','Nova Ramada','Nova Roma do Sul','Nova Santa Rita',
    'Novo Barreiro','Novo Cabrais','Novo Hamburgo','Novo Machado','Novo Tiradentes','Novo Xingu',
    'Osório','Paim Filho','Palmares do Sul','Palmeira das Missões','Palmitinho','Panambi',
    'Pantano Grande','Paraí','Paraíso do Sul','Pareci Novo','Parobé','Passa Sete','Passo do Sobrado',
    'Passo Fundo','Paulo Bento','Paverama','Pedras Altas','Pedro Osório','Pejuçara','Pelotas',
    'Picada Café','Pinhal','Pinhal da Serra','Pinhal Grande','Pinheirinho do Vale','Pinheiro Machado',
    'Pirapó','Piratini','Planalto','Poço das Antas','Pontão','Ponte Preta','Portão','Porto Alegre',
    'Porto Lucena','Porto Mauá','Porto Vera Cruz','Porto Xavier','Pouso Novo','Presidente Lucena',
    'Progresso','Protásio Alves','Putinga','Quaraí','Quatro Irmãos','Quevedos','Quinze de Novembro',
    'Redentora','Relvado','Restinga Seca','Rio dos Índios','Rio Grande','Rio Pardo','Riozinho',
    'Roca Sales','Rodeio Bonito','Rolador','Rolante','Ronda Alta','Rondinha','Roque Gonzales',
    'Rosário do Sul','Sagrada Família','Saldanha Marinho','Salto do Jacuí','Salvador das Missões',
    'Salvador do Sul','Sananduva','Santa Bárbara do Sul','Santa Cecília do Sul','Santa Clara do Sul',
    'Santa Cruz do Sul','Santa Margarida do Sul','Santa Maria','Santa Maria do Herval','Santa Rosa',
    'Santa Tereza','Santa Vitória do Palmar','Santana da Boa Vista','Santana do Livramento','Santiago',
    'Santo Ângelo','Santo Antônio da Patrulha','Santo Antônio das Missões','Santo Antônio do Palma',
    'Santo Antônio do Planalto','Santo Augusto','Santo Cristo','Santo Expedito do Sul','São Borja',
    'São Domingos do Sul','São Francisco de Assis','São Francisco de Paula','São Gabriel','São Jerônimo',
    'São João da Urtiga','São João do Polêsine','São Jorge','São José das Missões','São José do Herval',
    'São José do Hortêncio','São José do Inhacorá','São José do Norte','São José do Ouro','São José do Sul',
    'São José dos Ausentes','São Leopoldo','São Lourenço do Sul','São Luiz Gonzaga','São Marcos',
    'São Martinho','São Martinho da Serra','São Miguel das Missões','São Nicolau','São Paulo das Missões',
    'São Pedro da Serra','São Pedro das Missões','São Pedro do Butiá','São Pedro do Sul','São Sebastião do Caí',
    'São Sepé','São Valentim','São Valentim do Sul','São Valério do Sul','São Vendelino','São Vicente do Sul',
    'Sapiranga','Sapucaia do Sul','Sarandi','Seberi','Sede Nova','Segredo','Selbach','Senador Salgado Filho',
    'Sentinela do Sul','Serafina Corrêa','Sério','Sertão','Sertão Santana','Sete de Setembro','Severiano de Almeida',
    'Silveira Martins','Sinimbu','Sobradinho','Soledade','Tabaí','Tapejara','Tapera','Tapes','Taquara','Taquari',
    'Taquaruçu do Sul','Tavares','Tenente Portela','Terra de Areia','Teutônia','Tio Hugo','Tiradentes do Sul',
    'Toropi','Torres','Tramandaí','Travesseiro','Três Arroios','Três Cachoeiras','Três Coroas','Três de Maio',
    'Três Forquilhas','Três Palmeiras','Três Passos','Trindade do Sul','Triunfo','Tucunduva','Tunas',
    'Tupanci do Sul','Tupanciretã','Tupandi','Tuparendi','Turuçu','Ubiretama','União da Serra','Unistalda',
    'Uruguaiana','Vacaria','Vale do Sol','Vale Real','Vale Verde','Vanini','Venâncio Aires','Vera Cruz',
    'Veranópolis','Vespasiano Correa','Viadutos','Viamão','Vicente Dutra','Victor Graeff','Vila Flores',
    'Vila Lângaro','Vila Maria','Vila Nova do Sul','Vista Alegre','Vista Alegre do Prata','Vista Gaúcha',
    'Vitória das Missões','Westfália','Xangri-lá',
  ].map do |city|
    City.create(name: city, state: state)
  end
end

medical_unit_color = '#70470e'

City.find_by(name: 'Pelotas') do |city|
  [
    'Arco Íris', 'Tres Vendas', 'Balneário dos Prazeres', '7 Distrito',
    'Sitio Floresta', 'Fragata', 'Areal', 'Sanga Funda', 'Colônia',
    'Santos Dumont', 'Laranjal', 'Simões Lopes', 'Getúlio Vargas',
    'Dunas', 'Vila Princesa', 'Guabiroba', 'Navegantes', 'Nossa Sra. de Fátima',
    'Centro', 'Colonia Z3', 'Cohab Lindóia', '8 Distrito', '10 Distrito',
  ].map do |name|
    Community.create(name: name, city: city)
  end

  [
    'UPA Areal', 'Posto de Saúde Areal Fundos', 'Posto de Saúde da Sansca', 'Centro Social Urbano Cruzeiro do Sul',
    'Posto de Saúde Areal I', 'Posto de Puericultura', 'Posto de Saúde Navegantes', 'Posto de Saúde da Balsa',
    'Posto de Saúde Leocadia', 'Posto de Saúde Simões Lopes', 'Centro Social Urbano do Areal', 'Posto de Saúde Bom Jesus',
    'Posto de Saúde Cohab Tablada I', 'Posto de Saúde Fraget', 'Posto de Saúde do Dunas', 'Posto de Saúde Cohab Guabiroba',
    'Posto de Saúde Dom Pedro I', 'Posto de Saúde Cohab Tablada II', 'Posto de Saúde Vila Municipal', 'Posto de Saúde do Obelisco',
    'PAM Fragata', 'Posto de Saúde Cohab Fragata', 'Posto de Saúde Arco Íris', 'Posto de Saúde Virgílio Costa',
    'Posto de Saúde Cohab Lindóia', 'Posto de Saúde Cohab Pestano', 'Posto de Saúde Getúlio Vargas', 'Posto de Saúde Sítio Floresta',
    'Posto de Saúde Jardim Allah', 'Posto de Saúde Sanga Funda', 'Posto de Saúde Laranjal', 'Posto de Saúde Barro Duro',
    'Posto de Saúde Vila Princesa', 'Posto de Saúde Pedreiras', 'Posto de Saúde Vila Nova', 'Posto de Saúde Colônia Maciel',
    'Posto de Saúde da Cascata', 'Posto de Saúde Grupelli', 'Posto de Saúde Monte Bonito', 'Posto de Saúde Cerrito Alegre',
    'Posto de Saúde Cordeiro de Farias', 'Posto de Saúde Corrientes', 'Posto de Saúde Colônia Osório', 'Posto de Saúde Colônia Z3',
    'Posto de Saúde Santa Silvana', 'Posto de Saúde Colônia Triunfo',
  ].map do |name|
    MedicalUnit.create(name: name, color: medical_unit_color, city: city)
  end
end

City.find_by(name: 'Rio Grande') do |city|
  [
    'Quintinha', 'Jardim Humaitá I', 'Cidade d Águeda', 'Castelo Branco',
    'Cassino', 'Quinta', 'Parque Marinha', 'Parque Marluz', 'Profilurb I',
    'Povo Novo', 'São Miguel', 'Querência', '4 Seccao da Barra',
    'Bolaxa', 'Ilha dos Marinheiros', 'Parque São Pedro',
    'Ilha da Torotama', 'Miguel d Castro', 'Junção', 'Centro',
    'Bernadeth', 'Getúlio Vargas', 'São João', 'Santa Rosa',
    'Taim', 'Santa Tereza', 'Vila Maria', 'Domingos Petrolini',
  ].map do |name|
    Community.create(name: name, city: city)
  end

  [
    'UPA Cassino', 'UBFS Bolaxa', 'Posto de Saúde Dr. Sérgio Brodt', 'Centro de Saúde Dr. Pedro Gatti',
    'Posto de Puericultura Dra. Rita Lobato', 'Posto de Saúde Getúlio Vargas BGV', 'Posto de Saúde Santa Teresa',
    'UBSF Ilha dos Marinheiros', 'Posto de Saúde da Junção', 'UBSF Bernadethe', 'UBSF São Miguel 2 Area 15',
    'UBAF Dr. Vicente Mariano Pias', 'UBSF Marluz Rio Grande', 'UBSF São João Rio Grande', 'Estratégia Saúde Hélio Rossano',
    'Estratégia Saúde Carlos Santos', 'Centro de Saúde São José do Norte', 'Estratégia Saúde Cidade Baixa',
    'UBSF José Salomão Profilurb', 'Estratégia Saúde da Família Veneza', 'UBSF Caic Rio Grande', 'UBSF Dr. Jaime Copstein',
    'UBSF Dr. Luiz Gonzaga Dora', 'UBSF Dr. Carlos Robeira Riet Vargas', 'UBSF Santa Rosa', 'Posto de Saúde do Parque São Pedro',
    'Posto de Saúde da Barra', 'UBSF Torotama', 'UBSF Quinta', 'UBSF ACS Evanilde Nogueira', 'Centro de Saúde Newton Azevedo',
    'UBSF Povo Novo', 'UBSF Querência', 'UBSF Taim', 'UBSF DOmingos Petroline',
  ].map do |name|
    MedicalUnit.create(name: name, color: medical_unit_color, city: city)
  end
end

symptoms = [
  'Febre', 'Tosse', 'Dor de garganta', 'Mialgia/artralgia', 'Diarreia',
  'Cefaleia (dor de cabeça)', 'Coriza', 'Irritabilidade/confusão', 'Adinamia (fraqueza)',
  'Produção de escarro', 'Calafrios', 'Congestão conjuntival', 'Congestão nasal',
  'Triagem intercostal', 'Dispineia', 'Manhcas vermelhas pelo corpo',
  'Glânglios linfáticos aumentados', 'Batimento das asas nasais',
].map do |symptom|
  Symptom.create(name: symptom)
end

diseases = [
  'Doença cardiovascular incluindo hipertensão', 'Diabetes', 'Doença hepática',
  'Doença pulmonar crônica', 'Doença neurológica crônica ou neuromuscular', 'Imunodeficiência',
  'Infecção pelo HIV', 'Doença renal', 'Neoplasia (tumor sólido ou hematolófico)'
].map do |disease|
  Disease.create(name: disease, covid: [true, false].sample, general: [true, false].sample)
end

medical_referrals = [
  {
    type: 'orientação telefônica',
    color: '#FF93C0',
    general: true,
    covid: true,
    status: {
      'orientado por telefone': nil,
      'aguardando orientação whatsapp': nil,
      'orientado via whatsapp': nil
    }
  },
  {
    type: 'monitoramento',
    color: '#FF3B98',
    general: true,
    covid: true,
    status: {
      'em monitoramento': nil,
      'encerrado': nil,
      'encaminhado': nil,
      'monitoramento cancelado': nil
    }
  },
  {
    type: 'teleorientação',
    color: '#B10059',
    general: true,
    covid: true,
    status: {
      'aguardando teleorientação': nil,
      'telorientação realizada': nil,
      'aguardando retorno do paciente': nil,
      'teleorientação não realizada pelo paciente': nil
    }
  },
  {
    type: 'telemedicina',
    color: nil,
    general: true,
    covid: true,
    status: {
      'aguardando telemedicina': nil,
      'telemedicina realizada': nil,
      'aguardando retorno do profissional de saúde': nil
    }
  },
  {
    type: 'encaminhamento à vigilância',
    color: '#A181DF',
    general: false,
    covid: true,
    status: {
      'aguardando coleta': nil,
      'coleta cancelada': nil,
      'paciente não encontrado': nil,
      'coleta realizada': nil,
    }
  },
  {
    type: I18n.t(:encaminhado_unidade),
    color: '#673AB7',
    general: true,
    covid: true,
    status: {
      'encaminhado': nil,
      'internado': '#00695C',
      'alta': '#26A69A',
      'transferência': '#B2DFDB',
      'óbito': '#C4C4C4'
    }
  }
].map do |referral|
  referral[:color] ||= Faker::Color.unique.hex_color
  ref = MedicalReferral.create(referral.except(:status))

  referral[:status].each do |type, color|
    Status.create(type: type, color: color || Faker::Color.unique.hex_color, medical_referral: ref)
  end

  ref
end

providers = Array(1..n_providers).map { HealthcareProvider.create(name: Faker::Name.name) }

country = Country.find_by(name: 'Brasil')

state = State.find_by(name: 'Rio Grande do Sul', country: country)

special_conditions = ['Idoso', 'Gestante', 'Portador de deficiência']

['Pelotas', 'Rio Grande'].each do |city_name|
  city = City.find_by(name: city_name, state: state)

  Array(1 .. n_communities).each do
    community = Community.where(city: city).sample
    unit = MedicalUnit.where(city: city).sample

    Array(1..n_patients/n_communities).each do
      Patient.create(
        name: Faker::Name.name,
        phone: Faker::PhoneNumber.cell_phone,
        cpf: Faker::Code.isbn,
        sex: ['M', 'F', nil].sample,
        birth_date: Faker::Date.between(from: 80.years.ago, to: 5.years.ago),
        sus_id: Faker::NationalHealthService.british_number,
        email: Faker::Internet.email,
        disease_ids: diseases.sample(rand(0..3)).pluck(:id),
        special_conditions: special_conditions.sample(rand(0..2)),
        address: {
          street: Faker::Address.street_name,
          number: rand(1..5000),
          postcode: Faker::Address.postcode,
          complement: ['Casa', 'Apartamento', nil].sample,
          community_id: community.id
        },
        city: city,
        medical_unit: unit,
      )
    end
  end
end

Array(1..n_anamneses).each do |protocol|
  covid_suspect = [true, true, nil].sample
  situations = covid_suspect ?
    ['light', 'serious', 'uncertain'] :
    ['emergency', 'very_urgent', 'urgent', 'almost_urgent', 'not_urgent']

  referral = medical_referrals.sample
  patient = Patient.all.sample
  unit = referral.type.downcase == I18n.t(:encaminhado_unidade) ? MedicalUnit.where(city: patient.city).sample : nil

  Anamnese.create(
    protocol: protocol,
    covid_suspect: !covid_suspect.nil?,
    first_symptoms_date: covid_suspect && Faker::Date.between(from: 2.weeks.ago, to: Date.today),
    travel_history: covid_suspect & [true, false].sample,
    contact_with_suspect: covid_suspect && [true, false].sample,
    contact_with_confirmed: covid_suspect && [true, false].sample,
    subjective: symptoms.sample(rand(0..5)).pluck(:id),
    objective: diseases.sample(rand(0..3)).pluck(:id),
    assessment: Faker::Quote.most_interesting_man_in_the_world,
    plan: Faker::Movie.quote,
    situation: situations.sample,
    medical_referral: referral,
    medical_unit: unit,
    patient: patient,
    healthcare_provider: providers.sample.name,
  )

  hospitalized = referral.type == I18n.t(:encaminhado_unidade)

  status = Status.where(medical_referral: referral).all.sample

  patient.update(
    medical_referral: referral,
    medical_referral_unit: hospitalized && MedicalUnit.all.sample.id,
    medical_referral_status: status
  )
end