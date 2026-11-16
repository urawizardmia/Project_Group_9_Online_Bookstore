--
-- PostgreSQL database dump
--

\restrict ZhI04ZbTPZC4uxyNJ9CiNxccXAwIlHodzxgCkmMHN95TrgBrBLKPJDMNqcjM29c

-- Dumped from database version 17.12 (Homebrew)
-- Dumped by pg_dump version 17.12 (Homebrew)

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET transaction_timeout = 0;
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
-- Name: books; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.books (
    id integer NOT NULL,
    title character varying(255) NOT NULL,
    author character varying(255) NOT NULL,
    genre character varying(100),
    publication_date date,
    description text,
    cover_image text
);


--
-- Name: books_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.books_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: books_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.books_id_seq OWNED BY public.books.id;


--
-- Name: books id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.books ALTER COLUMN id SET DEFAULT nextval('public.books_id_seq'::regclass);


--
-- Data for Name: books; Type: TABLE DATA; Schema: public; Owner: -
--

INSERT INTO public.books VALUES (1, 'The Hobbit', 'J.R.R. Tolkien', 'Fantasy', '1937-09-21', 'Bilbo Baggins goes on an adventure with a group of dwarves to reclaim their treasure.', 'https://covers.openlibrary.org/b/isbn/9780547928227-L.jpg');
INSERT INTO public.books VALUES (2, 'Harry Potter and the Sorcerer''s Stone', 'J.K. Rowling', 'Fantasy', '1998-09-01', 'Harry discovers he is a wizard and begins attending Hogwarts School of Witchcraft and Wizardry.', 'https://covers.openlibrary.org/b/isbn/9780590353427-L.jpg');
INSERT INTO public.books VALUES (3, 'Pride and Prejudice', 'Jane Austen', 'Romance', '1813-01-28', 'Elizabeth Bennet navigates love, family, and social expectations in nineteenth-century England.', 'https://covers.openlibrary.org/b/isbn/9780141439518-L.jpg');
INSERT INTO public.books VALUES (4, 'Gone Girl', 'Gillian Flynn', 'Thriller', '2012-06-05', 'A husband becomes the main suspect when his wife mysteriously disappears.', 'https://covers.openlibrary.org/b/isbn/9780307588371-L.jpg');
INSERT INTO public.books VALUES (5, 'Dune', 'Frank Herbert', 'Science Fiction', '1965-08-01', 'Paul Atreides travels to a desert planet where powerful families fight over a valuable resource.', 'https://covers.openlibrary.org/b/isbn/9780441172719-L.jpg');
INSERT INTO public.books VALUES (6, 'The Hunger Games', 'Suzanne Collins', 'Dystopian', '2008-09-14', 'Katniss Everdeen is forced to compete in a deadly competition where only one person can survive.', 'https://covers.openlibrary.org/b/isbn/9780439023481-L.jpg');
INSERT INTO public.books VALUES (7, '1984', 'George Orwell', 'Dystopian', '1949-06-08', 'Winston Smith lives in a society where the government watches and controls almost everything.', 'https://covers.openlibrary.org/b/isbn/9780451524935-L.jpg');
INSERT INTO public.books VALUES (8, 'The Three-Body Problem', 'Liu Cixin', 'Science Fiction', '2014-11-11', 'A mysterious discovery connects scientists on Earth to an alien civilization.', 'https://covers.openlibrary.org/b/isbn/9780765382030-L.jpg');
INSERT INTO public.books VALUES (9, 'Fahrenheit 451', 'Ray Bradbury', 'Dystopian', '1953-10-19', 'In a future society where books are banned, a firefighter begins questioning his job of burning them.', 'https://covers.openlibrary.org/b/isbn/9781451673319-L.jpg');
INSERT INTO public.books VALUES (10, 'To Kill a Mockingbird', 'Harper Lee', 'Classic', '1960-07-11', 'Scout Finch grows up in a small Southern town as her father defends a man accused of a crime.', 'https://covers.openlibrary.org/b/isbn/9780061120084-L.jpg');
INSERT INTO public.books VALUES (11, 'The Great Gatsby', 'F. Scott Fitzgerald', 'Classic', '1925-04-10', 'Nick Carraway becomes involved in the life of a wealthy and mysterious man named Jay Gatsby.', 'https://covers.openlibrary.org/b/isbn/9780743273565-L.jpg');
INSERT INTO public.books VALUES (12, 'Little Women', 'Louisa May Alcott', 'Classic', '1868-09-30', 'Four sisters grow up together while dealing with family, love, and their changing lives.', 'https://covers.openlibrary.org/b/isbn/9780147514011-L.jpg');
INSERT INTO public.books VALUES (13, 'Carrie', 'Stephen King', 'Horror', '1974-04-05', 'A teenage girl discovers she has telekinetic powers after years of being bullied.', 'https://covers.openlibrary.org/b/isbn/9780307743664-L.jpg');
INSERT INTO public.books VALUES (14, 'Mistborn: The Final Empire', 'Brandon Sanderson', 'Fantasy', '2006-07-17', 'A young thief joins a group planning to overthrow a powerful ruler in a world covered in ash.', 'https://covers.openlibrary.org/b/isbn/9780765311788-L.jpg');
INSERT INTO public.books VALUES (15, 'And Then There Were None', 'Agatha Christie', 'Mystery', '1939-11-06', 'Ten strangers are invited to an isolated island where they begin dying one by one.', 'https://covers.openlibrary.org/b/isbn/9780062073488-L.jpg');
INSERT INTO public.books VALUES (17, 'Hollow Kingdom', 'Kira Jane Buxton', 'Horror', '2019-08-06', 'A pet crow tries to survive a zombie apocalypse with the help of other animals.', 'https://covers.openlibrary.org/b/isbn/9781538745823-L.jpg');
INSERT INTO public.books VALUES (18, 'The Way of Kings', 'Brandon Sanderson', 'Fantasy', '2010-08-31', 'Several characters struggle through war and political conflicts in a world filled with magic.', 'https://covers.openlibrary.org/b/isbn/9780765365279-L.jpg');
INSERT INTO public.books VALUES (19, 'A Game of Thrones', 'George R. R. Martin', 'Fantasy', '1996-08-01', 'Powerful families fight for control of the Iron Throne in the kingdom of Westeros.', 'https://covers.openlibrary.org/b/isbn/9780553573404-L.jpg');
INSERT INTO public.books VALUES (20, 'The Fellowship of the Ring', 'J.R.R. Tolkien', 'Fantasy', '1954-07-29', 'Frodo Baggins begins a dangerous journey to destroy a powerful ring.', 'https://covers.openlibrary.org/b/isbn/9780547928210-L.jpg');
INSERT INTO public.books VALUES (21, 'The Two Towers', 'J.R.R. Tolkien', 'Fantasy', '1954-11-11', 'The fellowship is separated as the war for Middle-earth continues.', 'https://covers.openlibrary.org/b/isbn/9780547928203-L.jpg');
INSERT INTO public.books VALUES (22, 'The Return of the King', 'J.R.R. Tolkien', 'Fantasy', '1955-10-20', 'Frodo continues his journey to destroy the ring while the final battle for Middle-earth begins.', 'https://covers.openlibrary.org/b/isbn/9780547928197-L.jpg');
INSERT INTO public.books VALUES (24, 'A Court of Thorns and Roses', 'Sarah J. Maas', 'Fantasy', '2015-05-05', 'A young huntress is taken to a magical land after killing a creature in the woods.', 'https://covers.openlibrary.org/b/isbn/9781635575569-L.jpg');
INSERT INTO public.books VALUES (25, 'Fourth Wing', 'Rebecca Yarros', 'Fantasy', '2023-05-02', 'A young woman enters a dangerous military academy where students train to become dragon riders.', 'https://covers.openlibrary.org/b/isbn/9781649374042-L.jpg');
INSERT INTO public.books VALUES (26, 'Throne of Glass', 'Sarah J. Maas', 'Fantasy', '2012-08-07', 'A young assassin competes against other fighters for a chance to earn her freedom.', 'https://covers.openlibrary.org/b/isbn/9781619630345-L.jpg');
INSERT INTO public.books VALUES (27, 'House of Earth and Blood', 'Sarah J. Maas', 'Fantasy', '2020-03-03', 'A half-human woman investigates a series of murders in a city filled with magical creatures.', 'https://covers.openlibrary.org/b/isbn/9781635574043-L.jpg');
INSERT INTO public.books VALUES (28, 'The Love Hypothesis', 'Ali Hazelwood', 'Romance', '2021-09-14', 'A graduate student pretends to date a professor, but their fake relationship becomes complicated.', 'https://covers.openlibrary.org/b/isbn/9780593336823-L.jpg');
INSERT INTO public.books VALUES (29, 'The Notebook', 'Nicholas Sparks', 'Romance', '1996-10-01', 'Two young people fall in love but are separated by family expectations and their different lives.', 'https://covers.openlibrary.org/b/isbn/9780446605236-L.jpg');
INSERT INTO public.books VALUES (30, 'The Thursday Murder Club', 'Richard Osman', 'Mystery', '2020-09-03', 'Four retirees who investigate unsolved crimes find themselves involved in a real murder case.', 'https://covers.openlibrary.org/b/isbn/9781984880987-L.jpg');
INSERT INTO public.books VALUES (33, 'The Girl on the Train', 'Paula Hawkins', 'Thriller', '2015-01-13', 'A woman witnesses something suspicious during her daily train ride and becomes involved in a missing person case.', 'https://covers.openlibrary.org/b/isbn/9781594634024-L.jpg');
INSERT INTO public.books VALUES (34, 'Big Little Lies', 'Liane Moriarty', 'Thriller', '2014-07-29', 'Three women become connected through secrets and conflicts in their small community.', 'https://covers.openlibrary.org/b/isbn/9780399167065-L.jpg');
INSERT INTO public.books VALUES (35, 'The Shining', 'Stephen King', 'Horror', '1977-01-28', 'A family spends the winter in an isolated hotel where strange and terrifying events begin happening.', 'https://covers.openlibrary.org/b/isbn/9780307743657-L.jpg');
INSERT INTO public.books VALUES (31, 'The Girl with the Dragon Tattoo', 'Stieg Larsson', 'Mystery', '2009-06-23', 'A journalist and a computer hacker investigate the disappearance of a young woman.', 'https://covers.openlibrary.org/b/isbn/9780307454546-L.jpg');
INSERT INTO public.books VALUES (16, 'The Alchemist', 'Paulo Coelho', 'Adventure', '2006-04-25', 'A young shepherd travels in search of treasure and learns important lessons along the way.', 'https://covers.openlibrary.org/b/isbn/9780061122415-L.jpg');
INSERT INTO public.books VALUES (32, 'The Handmaid''s Tale', 'Margaret Atwood', 'Dystopian', '1998-03-16', 'A woman struggles to survive in a society where women have lost most of their rights.', 'https://covers.openlibrary.org/b/isbn/9780385490818-L.jpg');
INSERT INTO public.books VALUES (37, 'Frankenstein', 'Mary Shelley', 'Horror', '1818-01-01', 'A scientist creates a living creature and struggles with the consequences of his experiment.', 'https://covers.openlibrary.org/b/isbn/9780141439471-L.jpg');
INSERT INTO public.books VALUES (38, 'Never Whistle at Night', 'Shane Hawk and Theodore C. Van Alst Jr.', 'Horror', '2023-09-19', 'An anthology of dark fiction and horror stories written by Indigenous authors.', 'https://covers.openlibrary.org/b/isbn/9780593468463-L.jpg');
INSERT INTO public.books VALUES (40, 'Artemis', 'Andy Weir', 'Science Fiction', '2017-11-14', 'A woman living in a city on the Moon gets involved in a dangerous criminal conspiracy.', 'https://covers.openlibrary.org/b/isbn/9780553448122-L.jpg');
INSERT INTO public.books VALUES (47, 'The Lightning Thief', 'Rick Riordan', 'Fantasy', '2005-06-28', 'A boy discovers he is the son of a Greek god and goes on a dangerous quest.', 'https://covers.openlibrary.org/b/isbn/9780786838653-L.jpg');
INSERT INTO public.books VALUES (48, 'The Help', 'Kathryn Stockett', 'Historical Fiction', '2009-02-10', 'Three women in Mississippi work together to share the experiences of Black maids during the 1960s.', 'https://covers.openlibrary.org/b/isbn/9780425232200-L.jpg');
INSERT INTO public.books VALUES (50, 'Me Talk Pretty One Day', 'David Sedaris', 'Memoir', '2000-05-02', 'A collection of funny personal essays about family, language, and living in France.', 'https://covers.openlibrary.org/b/isbn/9780316776967-L.jpg');
INSERT INTO public.books VALUES (51, 'Soft Science', 'Franny Choi', 'Poetry', '2019-04-02', 'A poetry collection exploring identity, technology, humanity, and artificial intelligence.', 'https://covers.openlibrary.org/b/isbn/9781938584992-L.jpg');
INSERT INTO public.books VALUES (52, 'Where the Crawdads Sing', 'Delia Owens', 'Fiction', '2018-08-14', 'A young woman grows up alone in the marshes of North Carolina and becomes involved in a murder investigation.', 'https://covers.openlibrary.org/b/isbn/9780735219090-L.jpg');
INSERT INTO public.books VALUES (56, 'Becoming', 'Michelle Obama', 'Memoir', '2018-11-13', 'Michelle Obama shares stories about her childhood, career, family, and life as First Lady.', 'https://covers.openlibrary.org/b/isbn/9781524763138-L.jpg');
INSERT INTO public.books VALUES (57, 'Finding the Mother Tree', 'Suzanne Simard', 'Nonfiction', '2021-05-04', 'A forest ecologist explains how trees communicate and support each other through underground networks.', 'https://covers.openlibrary.org/b/isbn/9780525656098-L.jpg');
INSERT INTO public.books VALUES (58, 'The Overstory', 'Richard Powers', 'Fiction', '2018-04-03', 'Several peoples lives become connected through their relationships with trees and forests.', 'https://covers.openlibrary.org/b/isbn/9780393356687-L.jpg');
INSERT INTO public.books VALUES (60, 'The Immortal Life of Henrietta Lacks', 'Rebecca Skloot', 'Nonfiction', '2010-02-02', 'The story of Henrietta Lacks and how her cells became important to medical research.', 'https://covers.openlibrary.org/b/isbn/9781400052189-L.jpg');
INSERT INTO public.books VALUES (23, 'Eragon', 'Christopher Paolini', 'Fantasy', '2005-04-26', 'A farm boy discovers a dragon egg and becomes involved in a fight against an evil king.', 'https://covers.openlibrary.org/b/isbn/9780375826696-L.jpg');
INSERT INTO public.books VALUES (42, 'The Picture of Dorian Gray', 'Oscar Wilde', 'Classic', '1890-06-20', 'A young man stays physically young while a portrait of him reflects his aging and sins.', 'https://covers.openlibrary.org/b/isbn/9780141439570-L.jpg');
INSERT INTO public.books VALUES (43, 'Wuthering Heights', 'Emily Bronte', 'Classic', '1847-12-04', 'A story about love, revenge, and the complicated relationship between Heathcliff and Catherine.', 'https://covers.openlibrary.org/b/isbn/9780141439556-L.jpg');
INSERT INTO public.books VALUES (44, 'East of Eden', 'John Steinbeck', 'Classic', '1952-09-19', 'Two families in California struggle with love, jealousy, and the choices between good and evil.', 'https://covers.openlibrary.org/b/isbn/9780142004234-L.jpg');
INSERT INTO public.books VALUES (45, 'Anne of Green Gables', 'L. M. Montgomery', 'Classic', '1908-06-13', 'An imaginative orphan girl finds a new home with a brother and sister on Prince Edward Island.', 'https://covers.openlibrary.org/b/isbn/9780553213133-L.jpg');
INSERT INTO public.books VALUES (46, 'The Book Thief', 'Markus Zusak', 'Historical Fiction', '2006-03-14', 'A young girl living in Nazi Germany finds comfort in stealing and reading books.', 'https://covers.openlibrary.org/b/isbn/9780375842207-L.jpg');
INSERT INTO public.books VALUES (49, 'The Midnight Library', 'Matt Haig', 'Fiction', '2020-08-13', 'A woman discovers a library where she can explore different versions of her life.', 'https://covers.openlibrary.org/b/isbn/9780525559474-L.jpg');
INSERT INTO public.books VALUES (59, 'Maus', 'Art Spiegelman', 'Graphic Novel', '1996-11-19', 'A graphic novel about the Holocaust told through the experiences of the authors father.', 'https://covers.openlibrary.org/b/isbn/9780679406419-L.jpg');
INSERT INTO public.books VALUES (36, 'The Haunting of Hill House', 'Shirley Jackson', 'Horror', '2006-11-28', 'A group of people investigates a mysterious house that may be haunted.', 'https://covers.openlibrary.org/b/isbn/9780143039983-L.jpg');
INSERT INTO public.books VALUES (39, 'Hyperion', 'Dan Simmons', 'Science Fiction', '1990-02-01', 'Seven travelers share their stories as they journey toward a mysterious creature on a distant planet.', 'https://covers.openlibrary.org/b/isbn/9780553283686-L.jpg');
INSERT INTO public.books VALUES (41, 'The Giver', 'Lois Lowry', 'Dystopian', '2014-07-01', 'A boy named Jonas discovers the truth about his seemingly perfect society.', 'https://covers.openlibrary.org/b/isbn/9780544336261-L.jpg');
INSERT INTO public.books VALUES (53, 'The Call of the Wild', 'Jack London', 'Adventure', '1990-07-01', 'A dog named Buck is taken to Alaska where he learns to survive in the wilderness.', 'https://covers.openlibrary.org/b/isbn/9780486264721-L.jpg');
INSERT INTO public.books VALUES (54, 'Jurassic Park', 'Michael Crichton', 'Science Fiction', '2012-09-25', 'A theme park filled with cloned dinosaurs becomes dangerous when the animals escape.', 'https://covers.openlibrary.org/b/isbn/9780345538987-L.jpg');
INSERT INTO public.books VALUES (55, 'Hatchet', 'Gary Paulsen', 'Adventure', '2006-12-26', 'A thirteen-year-old boy must survive alone in the Canadian wilderness after a plane crash.', 'https://covers.openlibrary.org/b/isbn/9781416936473-L.jpg');


--
-- Name: books_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.books_id_seq', 60, true);


--
-- Name: books books_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.books
    ADD CONSTRAINT books_pkey PRIMARY KEY (id);


--
-- PostgreSQL database dump complete
--

\unrestrict ZhI04ZbTPZC4uxyNJ9CiNxccXAwIlHodzxgCkmMHN95TrgBrBLKPJDMNqcjM29c

