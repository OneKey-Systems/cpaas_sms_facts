--
-- PostgreSQL database dump
--

-- Dumped from database version 13.2 (Debian 13.2-1)
-- Dumped by pg_dump version 13.2 (Debian 13.2-1)

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- Name: random_facts; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.random_facts (
    id bigint NOT NULL,
    message character varying
);


--
-- Name: random_facts_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.random_facts_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: random_facts_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.random_facts_id_seq OWNED BY public.random_facts.id;


--
-- Name: random_facts id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.random_facts ALTER COLUMN id SET DEFAULT nextval('public.random_facts_id_seq'::regclass);


--
-- Data for Name: random_facts; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.random_facts (id, message) FROM stdin;
112	Las tarántulas pueden pasar dos años sin comer.
113	Los pepinos de mar expulsan sus vísceras para distraer a sus depredadores y escapar. Son capaces de regenerarse.
114	Los guepardos alcanzan velocidades de 120 kilómetros por hora en carreras cortas.
115	Las irregularidades en la nariz de un perro pueden servir como identificación del mismo modo que nuestras huellas digitales.
116	Las serpientes no parpadean.
117	Las gacelas saltarinas de El Cabo pueden saltar hasta 4 metros. También se les conoce como springbok.
118	Los pájaros carpinteros pueden picotear un árbol 20 veces por segundo.
119	El elefante africano llega a pesar 6 toneladas.
120	El cerebro de los elefantes pesa 5 kilogramos, es el más grande de todos los animales terrestres.
121	Las medusas expuestas al sol se evaporan ya que son 98% agua.
122	Las jorobas de los camellos son de grasa que usan cuando no se han alimentado por mucho tiempo.
123	Los camellos tienen dos jorobas y los dromedarios solo una.
124	Un camello sediento puede beber casi 200 litros de agua.
125	Los hipopótamos sudan de color rosa, esto es debido a secretan un aceite que los protege del sol y tiene propiedades antibióticas.
126	Las ranas no necesitan tomar agua porque la absorben por la piel.
127	El gusano cordón de bota llega a medir mil metros de largo, algunos han sido encontrados en la costa.
128	Los humanos compartimos 70% de nuestro DNA con babosas.
129	Los canguros rojos pueden saltar 3 metros en vertical y hasta 10 metros a lo largo, alcanzan velocidades de 50 kilómetros por hora.
130	Los gorilas pueden comer alrededor de 18 kilogramos al día.
131	Los caballitos de mar hacen forman parejas de por vida.
132	Los lobos y castores también forman parejas de por vida.
133	El ánsar indio es una de las aves que pueden volar a grandes altitudes, vuelan en los Himalaya a alturas de 8 mil metros.
134	Los gatos poseen 32 músculos en cada oreja.
135	Un panda recién nacido es más pequeño que un ratón.
136	Los pulpos tienen 3 corazones.
137	El charrán ártico o gaviotín ártico migra del Ártico a la Antártida cada año, es el mayor migrador conocido, un recorrido de 38 mil kilómetros y de regreso. Apenas pesa 100 gramos.
138	El corazón de las ballenas azules registra entre 8 y 10 latidos por minuto.
139	Las ballenas azules llegan a medir 24 metros de largo, en contraste las musarañas son mamíferos de apenas unos 5 centímetros.
140	Existen langostas azules, pero solo hay una posibilidad en miles o millones.
141	Las langostas poseen la capacidad de regenerar alguna de sus extremidades.
142	Los colibríes pueden volar hacia atrás y agitan sus alas de 8 a 200 veces por segundo.
143	Los colibríes pueden volar a 96 kilómetros por hora.
144	Los fósiles indican que el megazostrodon vivió hace 200 millones de años, vivió en el mismo tiempo que los dinosaurios del jurásico.
145	Las lenguas de las jirafas son tan largas que pueden limpiar sus oídos con ellas.
146	Las iguanas pueden brincar desde una altura de 12 metros y salir completamente ilesas.
147	El ojo de un avestruz es más grande que su cerebro.
148	Los ciervos del agua chinos son tan pequeños al nacer que puedes sostener uno en la palma de la mano.
149	Los peces voladores pueden planear en el aire hasta unos 50 metros a velocidades que van de los 50 a los 60 kilómetros por hora.
150	Los canguros recién nacidos no miden más de una pulgada de largo.
151	Los canguros recién nacidos encuentran el camino a la bolsa de su madre por medio del olfato.
152	A pesar de lo difícil que es imaginarlo existen mariposas venenosas.
153	La piel de un tigre es tan rayada como su pelaje. Además, no hay dos tigres con el mismo patrón de rayas.
154	La pulga puede saltar unas 200 veces su propia altura.
155	La cabeza de la oruga tiene 248 músculos.
156	Las estrellas de mar tienen ojos poseen un ojo en cada brazo para poder rastrear el entorno.
157	Un topo puede cavar un túnel de 90 metros de largo en una sola noche.
158	Las anemonas parecen flores de colores, pero son carnívoros que usan sus tentáculos para atrapar a sus presas.
159	El corazón de las jirafas tiene que bombear con más fuerza para lograr enviar sangre a su cerebro.
160	Los cuellos de las jirafas llegan a medir los 2 metros de largo, cada vértebra cervical llega a medir aporta unos 28 centímetros de largo.
161	Un tercio de las personas suele hablar con sus perros.
162	El cerebro de los calamares tiene el tamaño de un balón de baloncesto.
163	Las mariposas alas de pájaro es la más grande y puede alcanzar hasta los 31 centímetros de envergadura.
164	Se estima que las enfermedades que transmite la picadura de los mosquitos matan a más de 700 mil personas al año, en contraste, los incidentes fatales con tiburones al año apenas rondan la decena.
165	Los osos de agua son animales microscópicos que pueden sobrevivir en el espacio y, pueden soportar 30 años sin comida o agua.
166	El agua mala o carabela portuguesa suele ser confundida con una medusa, pero en realidad es una colonia de organismos especializados que mantienen viva la colonia.
167	La sangre de ellos pulpos es azul.
168	El pulpo de anillos azules es uno de los animales más venenosos, portan una cantidad de veneno letal para más de 20 personas.
169	Algunos tipos de medusas que han alcanzado la madurez tiene la habilidad de regresar a su estado de inmadurez en el que se les conoce como pólipo. El ciclo se puede repetir indefinidamente, por lo que se puede hablar de inmortalidad biológica. Sin embargo, la mayoría de estas medusas mueres por enfermedades o depredadores.
170	Las sanguijuelas tienen 32 cerebros.
171	El periodo de embarazo del tiburón anguila tiene una duración de 42 meses, casi 4 años.
172	Los murciélagos son los únicos mamíferos que pueden volar.
173	La ballena azul llega a alcanzar los 30 metros de largo y las 170 toneladas de peso, esto la convierte en el animal más grande conocido que haya habitado el planeta.
174	Se estima que hay 50 mil arañas en cada 4 mil metros cuadrados de áreas verdes.
175	Los dientes de los castores nunca dejan de crecer, es vital que los usen contantemente para que no se lastimen la mandíbula.
176	Las ardillas reforestan ya que a menudo olvidan el lugar en el esconden sus nueces.
177	Los caballos pueden reconocer las expresiones faciales de los humanos.
178	Los cuervos pueden distinguir entre diferentes números.
179	El ajolote mexicano tiene la capacidad de regenerar sus extremidades por completo, su capacidad de regeneración también puede curar heridas en la medula espinal.
180	Las rayas no tienen huesos, su cuerpo está hecho de cartílago como el que tenemos en la nariz u oídos.
181	La manta gigante puede medir hasta 7 metros y pesar unas 3 toneladas, sus crías miden de 1.2 a 1.5 metros al nacer.
182	Las rayas torpedo, rayas eléctricas o rayas negras pueden generar una descarga de hasta 220 voltios, equivalente a una toma eléctrica doméstica.
183	Las anguilas eléctricas pueden emitir descargas de hasta 850 voltios.
184	Los lagartos de cristal, también conocidos como ánguidos, no tiene patas, son un ejemplo evolutivo entre las serpientes y los lagartos.
185	El lagarto cornudo arroja sangre por los ojos como un mecanismo de defensa, por esta razón se le conoce como «llora sangre».
186	El lagarto basilisco puede caminar sobre al agua.
187	Las anemonas pueden vivir en el caparazón de un cangrejo ermitaño comiendo sobras y protegiéndolo con sus tentáculos urticantes.
188	El vuelo en picada del halcón peregrino ronda los 300 kilómetros por hora.
189	La cobra real es la serpiente venenosa más grande que existe, mide 5.5 metros.
190	La rana Goliat de oeste africano puede alcanzar los 33 centímetros de largo, y con las patas extendidas los 80 centímetros, es la rana más grande del mundo. Puede pesar unos 3 kilogramos.
191	Los murciélagos saben dónde están sus presas por medio de la ecolocalización, es decir, por el rebote de las ondas sonoras en los objetos.
192	Los delfines también utilizan la ecolocalización para conocer para orientarse y alcanzar sus presas.
193	La mamba negra puede alcanzar velocidades de 20 kilómetros por hora.
194	Los murciélagos se encuentran en todos los continentes a excepción de la Antártida.
195	Los tiburones pueden detectar una parte de sangre en 100 millones de partes de agua.
196	Un león adulto puede comer alrededor de 40 kilogramos de carne de una sola vez.
197	Se estima que hay cientos de miles de especies de escarabajos.
198	Los escarabajos bombarderos disparan sustancias químicas abrasivas a sus enemigos.
199	El escarabajo Goliat es el más voluminoso, puede llegar a pesar 100 gramos y medir entre 10 y 13 centímetros.
200	Solo hay dos focas que viven en aguas dulces, una es la nerpa que vive en el Lago Baikal en Rusia, la otra es la foca anillada de Saimaa que vive en Finlandia en el Lago Saimaa.
201	Los macacos japoneses combaten el frío con baños en aguas termales.
202	La avispa de mar o medusa de caja tiene un veneno tan potente que puede ser letal para una persona en segundos.
203	Una vaca promedio produce entre 6 mil y 8 mil litros de leche al día.
204	Comúnmente, los animales con colores brillantes son una advertencia de que saben mal o son venenosos.
205	Los cocodrilos tragan piedras para mantenerse bajo el agua por más tiempo.
206	La tortuga laúd llega a medir más de 2 metros y pesar 700 kilogramos.
207	El oso Kodiak es un oso pardo que vive en Alaska y llega a pesar más de medio tonelada, al pararse sobre sus patas traseras alcanza los 3 metros.
208	El oso malayo es la especie de oso más pequeña que existe, alcanza los 60 kilogramos de peso.
209	Las aves elefantes de Madagascar son las aves más grandes que haya existido, se encuentran extintas pero la más grande habría alcanzado los 3 metros de altura y sobrepasado la media tonelada. No volaba y era parecida a un avestruz.
210	El zunzuncito o elfo de las abejas es el colibrí más pequeño, de hecho, es el ave más pequeña del mundo, las hembras son más grandes y apenas alcanzan los 6 centímetros.
211	Los huevos de avestruz son casi tan grandes como un balón de futbol.
212	El loro kakapo perdió la capacidad de volar por falta de depredadores naturales.
213	Las llamadas hormigas aterciopeladas u hormigas de felpa no son hormigas, en realidad son avispas sin alas.
214	El tiburón ballena es el más grande del mundo con 12 metros de largo y 19 toneladas de peso.
215	Las hembras del calamar gigante pueden alcanzar los 14 metros de largo.
216	El pingüino emperador es el ave nadadora más grande llega a medir 1.3 metros de altura y pesar unos 40 kilogramos.
217	El pingüino de hadas es el más pequeño de los pingüinos, apenas alcanza los 40 centímetros.
218	Los cangrejos ermitaños utilizan las conchas de otras criaturas para proteger su abdomen que es muy blando.
219	El cangrejo gigante japonés puede alcanzar los 4 metros de largo.
220	El panda gigante pasa la mitad del día alimentándose de bambú, su sistema digestivo no está plenamente adaptado pues sus antepasados eran carnívoros. Come unos 40 kilogramos de bambú por día.
221	El quelea común es el ave con la mayor población del planeta, se estima que existen unos 1,500 millones de ejemplares en África.
222	Algunas especies de estrellas de mar tienen la capacidad de soltar uno de sus brazos para escapar de algún depredador y después regenerarlo.
\.


--
-- Name: random_facts_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.random_facts_id_seq', 222, true);


--
-- PostgreSQL database dump complete
--

