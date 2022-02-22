# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

u = User.new(name:"Lucas", email: "admin4@admin.com", password: "12345678",password_confirmation: "12345678", role: :admin)
u.save!

o = User.new(name:"Hugo", email: "otaku444@otaku.com", password: "12345678",password_confirmation: "12345678", role: :otaku)
o.save

anime1 = Anime.new(name: "One Piece", description: "Gol D. Roger was known as the Pirate King, the stron
gest and most infamous being to have sailed the Grand Line. The capture and execution of Roger by the World Govern ment brought a change throughout the world. His last words before his death revealed the existence of the greatest treasure in the world, One Piece. It was this revelation that brought about the Grand Age of Pirates, men who dreamed of finding One Piece—which promises an unlimited amount of riches and fame—and quite possibly the pinnacle of glory and the title of the Pirate King. Enter Monkey D. Luffy, a 17-year-old boy who defies your standard definition of a pirate",image_url:"https://cdn.myanimelist.net/images/anime/6/73245.jpg",genres: "Acao e aventura",episodes: 300,studios: "Toey Animation",duration: 21, situation: "Em andamento",user_id: 2)

anime1.save

anime2 = Anime.new(name: "Youjo Senki II", description: "Saga of Tanya the Evil, ou no Japão Yōjo Senki (幼女戦記?, lit. \"Crônicas Militares de uma Pequena Garota\"), é uma light novel japonesa escrita por Carlo Zen e ilustrada por Shinobu Shinotsuki. A publicadora Enterbrain publicou doze volumes a partir de 31 de outubro de 2013. Uma adaptação para mangá com arte de Chika Tōjō começou a serialização em Kadokawa Shoten Comp Ace Magazine em 26 de abril de 2016. Uma adaptação de anime pela NUT estreou em 6 de janeiro de 2017."",image_url:"https://cdn.myanimelist.net/images/anime/1437/115925.jpg",genres: "Acao e aventura",episodes: 500,studios: "Toey Animation",duration: 21, situation: "Em andamento",user_id: 2)
anime2.save

anime3 = Anime.new(name: "Shingeki no Kyojin", description: "Turning against his former allies and enemies alike, Eren Yeager sets a disastrous plan in motion. Under the guidance of the Beast Titan, Zeke, Eren takes extreme measures to end the ancient conflict between Marley and Eldia—but his true intentions remain a mystery. Delving deep into his familys past, Eren fights to control his own destiny. Meanwhile, the long-feuding nations of Marley and Eldia utilize both soldiers and Titans in a brutal race to eliminate the other. Reiner Braun uses his own powers in a desperate bid to hold off Erens own militaristic force, and his fellow Eldians—children Falco Grice and Gabi Braun—struggle to survive in the unfolding chaos.",image_url:"https://cdn.myanimelist.net/images/anime/1948/120625.jpg",genres: "Acao e aventura",episodes: 245,studios: "Toey Animation",duration: 21, situation: "Em andamento",user_id: 2)
anime3.save

anime4 = Anime.new(name: "One Piece", description: "Gol D. Roger was known as the Pirate King, the strongest and most infamous being to have sailed the Grand Line. The capture and execution of Roger by the World Government brought a change throughout the world. His last words before his death revealed the existence of the greatest treasure in the world, One Piece. It was this revelation that brought about the Grand Age of Pirates, men who dreamed of finding One Piece—which promises an unlimited amount of riches and fame—and quite possibly the pinnacle of glory and the title of the Pirate King. Enter Monkey D. Luffy, a 17-year-old boy who defies your standard definition of a pirate",image_url:"https://cdn.myanimelist.net/images/manga/2/253146.jpg",genres: "Acao e aventura",episodes: 1005,studios: "Toey Animation",duration: 21, situation: "Em andamento",user_id: 2)
anime4.save

anime5 = Anime.new(name: "Kimetsu no yaba", description: "Kimetsu no Yaiba, é uma série japonesa de mangá shōnen escrita e ilustrada por Koyoharu Gotōge. O mangá é serializado desde 15 de fevereiro de 2016 e foi encerrado em 18 de maio de 2020 na revista semanal Weekly Shōnen Jump, com seus capítulos sendo reunidos em 23 volumes tankōbon pela editora Shueisha.",image_url:"https://s4.anilist.co/file/anilistcdn/media/anime/cover/large/bx101922-PEn1CTc93blC.jpg",genres: "Acao e aventura",episodes: 175,studios: "Toey Animation",duration: 21, situation: "Em andamento",user_id: 2)
anime5.save

anime6 = Anime.new(name: "Dragon Ball Z", description: "Dragon Ball Z (ドラゴンボールZ Doragon Bōru Zetto?) (geralmente abreviado como DBZ) foi uma série de animação produzida pela Toei Animation. Baseada na série de mangá Dragon Ball escrita por Akira Toriyama, Dragon Ball Z corresponde aos volumes 17 ao 42 do mangá que foi publicado na revista, Weekly Shonen Jump, de 1988 a 1995, e estreou no Japão na Fuji TV em 26 de abril de 1989, e terminou dia 31 de janeiro de 1996 com o total de 291 episódios,[3] antes de ser dublada em diversos territórios ao redor do globo, incluindo Estados Unidos, Austrália, Europa, Índia e América Latina. A série já foi exibida em mais de 80 países ao redor do mundo",image_url:"https://tm.ibxk.com.br/ms/images/highlights/000/053/748/2132.jpg",genres: "Acao e aventura",episodes: 175,studios: "Toey Animation",duration: 21, situation: "Em andamento",user_id: 2)
anime6.save

anime7 = Anime.new(name: "Belzebub", description: "Beelzebub (べるぜバブ Beruzebabu?) é um mangá escrito e ilustrado por Ryuhei Tamura. Beelzebub foi publicado pela primeira vez em 2008 como um \"one-shot\" por Tamura na Shōnen Jump, onde conquistou a quarta edição da Gold Future Cup, passando a ser publicado regularmente em fevereiro de 2009, pela Shueisha na revista semanal Weekly Shōnen Jump.  Um OVA, foi produzido pelo Studio Pierrot que foi transmitido durante o Tour Anime Super Jump no 23 de Outubro de 2010. Em Janeiro de 2011, foi ao ar no Japão um anime da série, que foi transmitida até o dia 25 de março de 2012.",image_url:"https://animefire.net/img/animes/beelzebub-large.webp?v=1",genres: "Acao e aventura",episodes: 245,studios: "Toey Animation",duration: 21, situation: "Em andamento",user_id: 2)
anime7.save

anime8 = Anime.new(name: "Fullmetal Alchemist", description: "Fullmetal Alchemist (鋼の錬金術師 Hagane no Renkinjutsushi?, lit. \"Alquimista de Aço\") é um anime baseado no mangá shōnen escrito e ilustrado por Hiromu Arakawa. O mangá foi serializado na revista mensal japonesa Monthly Shōnen Gangan entre agosto de 2001 e junho de 2010, com os seus 108 capítulos individuais compilados em 27 volumes em formato tankōbon e publicados pela editora Square Enix. O mundo de Fullmetal Alchemist é baseado no período após a Revolução Industrial Europeia. Situado em um universo ficcional em que a alquimia é uma das mais avançadas técnicas científicas conhecidas pelo homem, a história centra-se nos irmãos Edward Elric e Alphonse Elric, que estão procurando a pedra filosofal para restaurar seus corpos após uma desastrosa tentativa de trazer a mãe falecida de volta à vida através da alquimia.",image_url:"https://cdn.myanimelist.net/images/manga/3/243675.jpg",genres: "Acao e aventura",episodes: 223,studios: "Toey Animation",duration: 21, situation: "Em andamento",user_id: 2,status: "ativo")
anime8.save



