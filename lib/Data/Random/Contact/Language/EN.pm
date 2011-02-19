package Data::Random::Contact::Language::EN;

use strict;
use warnings;
use autodie;

my %Names;

{
    my $key;

    while (<DATA>) {
        next unless /\S/;

        if ( /__(\w+)__/ ) {
            $key = $1;
        }
        else {
            die "No key yet!" unless defined $key;

            chomp;

            push @{ $Names{$key} }, $_;
        }
    }
}

sub male_name {
    return $Names{male}[ int( rand( scalar @{ $Names{male} } ) ) ];
}

sub female_name {
    return $Names{female}[ int( rand( scalar @{ $Names{female} } ) ) ];
}

my @MaleSalutations = qw( Dr Mr );
sub male_salutation {
    return $MaleSalutations[ int( rand( scalar @MaleSalutations ) ) ];
}

my @FemaleSalutations = qw( Dr Ms Miss Mrs );
sub female_salutation {
    return $FemaleSalutations[ int( rand( scalar @FemaleSalutations ) ) ];
}

my @MaleSuffixes = qw( Jr II III IV );
sub male_suffix {
    return $MaleSuffixes[ int( rand( scalar @MaleSuffixes ) ) ];
}

sub female_suffix { return }

sub surname {
    return $Names{surname}[ int( rand( @{ $Names{surname} } ) ) ];
}

1;

# Name data comes from data generated by Fake Name Generator -
# http://www.fakenamegenerator.com
#
# The data is dual-licensed under GPLv3 _or_ CC BY-SA 3.0 (United Stated). See
# http://www.fakenamegenerator.com/license.php for licensing details.

__DATA__
__male__
Aaron
Abraham
Adam
Adan
Adrian
Agustin
Al
Alan
Albert
Alberto
Alejandro
Alex
Alexander
Alexis
Alfred
Alfredo
Allan
Allen
Alonzo
Alphonso
Alton
Alva
Alvin
Amado
Andre
Andrea
Andres
Andrew
Andy
Angel
Anibal
Anthony
Antoine
Antone
Antonio
Antony
Arden
Armand
Armando
Arnoldo
Arron
Art
Arthur
Barney
Barry
Benedict
Benito
Benjamin
Benny
Bernard
Bill
Billie
Billy
Blake
Bo
Bobby
Boyce
Boyd
Brad
Bradley
Brain
Brandon
Brant
Brendan
Brent
Brenton
Brett
Brian
Britt
Brock
Bruce
Bruno
Bryan
Bryce
Buddy
Burton
Byron
Calvin
Carl
Carlos
Carrol
Cary
Casey
Cecil
Cedric
Chad
Charles
Chester
Chris
Christian
Christoper
Christopher
Clarence
Clark
Claude
Clay
Clayton
Clement
Cleo
Clifford
Clifton
Clint
Clinton
Clyde
Cody
Colby
Coleman
Columbus
Conrad
Cory
Craig
Curtis
Dale
Dan
Dane
Daniel
Danilo
Danny
Dante
Darin
Darrel
Darrell
Darren
Darryl
Darwin
Dave
David
Dean
Del
Delmar
Dennis
Derek
Derick
Derrick
Dewitt
Dominick
Don
Donald
Donte
Doug
Douglas
Duane
Dustin
Dwayne
Dwight
Dylan
Earl
Earnest
Ed
Eddie
Edgar
Edmund
Eduardo
Edward
Edwin
Eldridge
Eli
Elias
Eliseo
Elliott
Ellis
Elmer
Elvis
Emil
Emmett
Enrique
Eric
Erick
Erik
Ernest
Ernesto
Errol
Ervin
Erwin
Eugene
Evan
Everett
Fabian
Felipe
Felix
Fernando
Filiberto
Floyd
Francis
Francisco
Frank
Franklin
Fred
Freddie
Frederick
Fredrick
Fritz
Gabriel
Gale
Garland
Garret
Garrett
Gary
Gavin
Genaro
Gene
George
Gerald
Gilbert
Gilberto
Giovanni
Glen
Glenn
Gordon
Grady
Grant
Greg
Gregorio
Gregory
Guadalupe
Gus
Guy
Hank
Harold
Harrison
Harry
Harvey
Hector
Henry
Herbert
Herman
Hollis
Homer
Horace
Howard
Hugh
Hunter
Ian
Ignacio
Irvin
Irving
Isaac
Isidro
Jack
Jackie
Jacob
Jaime
Jamal
Jame
James
Jamie
Jared
Jarod
Jarrod
Jason
Jasper
Jay
Jed
Jeff
Jeffery
Jeffrey
Jeffry
Jerald
Jeramy
Jeremiah
Jeremy
Jerome
Jerry
Jess
Jesse
Jessie
Jesus
Jim
Jimmie
Jimmy
Joe
Joel
John
Johnathan
Johnnie
Johnny
Jon
Jonathan
Jonathon
Jordan
Jordon
Jorge
Jose
Joseph
Joshua
Josue
Juan
Julian
Julius
Junior
Justin
Karl
Keenan
Keith
Kelly
Kelvin
Ken
Kendall
Kenneth
Kenny
Kent
Kerry
Kevin
Kirk
Kristopher
Kurt
Kyle
Lacy
Lamont
Lance
Lanny
Larry
Lauren
Laurence
Lawrence
Lazaro
Lee
Leland
Leo
Leon
Leonard
Leonardo
Leroy
Leslie
Lester
Lewis
Lincoln
Lionel
Lloyd
Lonnie
Loren
Lorenzo
Louie
Louis
Lucas
Luis
Lyle
Lynn
Mac
Mack
Manual
Manuel
Marc
Marcus
Mario
Mark
Marshall
Martin
Marvin
Mathew
Matt
Matthew
Maurice
Mauricio
Max
Maxwell
Melvin
Michael
Micheal
Mickey
Miguel
Mike
Miles
Milton
Miquel
Mitchell
Mohamed
Morris
Murray
Napoleon
Nathan
Nathaniel
Neil
Nicholas
Nick
Noel
Norbert
Norberto
Norman
Normand
Odell
Olen
Oliver
Omar
Orville
Oscar
Pablo
Palmer
Patrick
Paul
Pedro
Peter
Phil
Philip
Phillip
Pierre
Preston
Quentin
Quincy
Rafael
Raleigh
Ralph
Ramon
Randal
Randall
Randy
Raul
Ray
Raymond
Raymundo
Reed
Reginald
Rene
Reuben
Rex
Rhett
Ricardo
Richard
Rick
Ricky
Robert
Roberto
Rocky
Roderick
Rodney
Rogelio
Roger
Roland
Rolando
Ronald
Ronnie
Roosevelt
Rory
Roy
Royce
Ruben
Rudolph
Rudy
Rufus
Russell
Rusty
Ryan
Salvador
Salvatore
Sam
Samuel
Sandy
Santo
Santos
Scott
Scottie
Scotty
Sean
Sergio
Seth
Shane
Shannon
Shawn
Shayne
Sherman
Sidney
Simon
Spencer
Stan
Stanley
Stephen
Steve
Steven
Stevie
Stewart
Sylvester
Ted
Teodoro
Terrance
Terrence
Terry
Theodore
Thomas
Tim
Timmy
Timothy
Tobias
Todd
Tom
Tomas
Tommy
Tony
Tracey
Tracy
Travis
Trenton
Trevor
Troy
Tyler
Tyrone
Tyson
Van
Vance
Vernon
Victor
Vincent
Virgil
Virgilio
Wade
Wallace
Walter
Warren
Wayne
Wendell
Wesley
Wilbur
Wilburn
Wilfred
William
Willian
Willie
Willis
Willy
Wilson
Wilton
Wyatt
Young
Zachary
Zachery

__female__
Abbie
Abigail
Ada
Addie
Adela
Adeline
Adriana
Adrienne
Afton
Agnes
Aileen
Aimee
Alecia
Alexis
Alice
Alicia
Alisha
Alison
Alissa
Allison
Alma
Almeta
Althea
Alva
Alysha
Alyssa
Amanda
Amber
Amelia
Amina
Amparo
Amy
Ana
Andrea
Angel
Angela
Angelica
Angie
Anita
Ann
Anna
Annabelle
Anne
Annett
Annette
Annie
Antonia
April
Ardis
Ariana
Arlene
Arline
Ashley
Audra
Audrey
Audry
Aurora
Ava
Barbara
Barbra
Beatrice
Becky
Belinda
Benita
Bennie
Bernadette
Bernice
Bertha
Bessie
Beth
Bethann
Bethany
Betsy
Betty
Beulah
Beverlee
Beverley
Beverly
Billie
Blanca
Bobbie
Bobby
Bonnie
Brandi
Brandy
Brenda
Briana
Bridget
Bridgette
Brigitte
Britney
Brittany
Brittney
Brooke
Caitlin
Callie
Camelia
Cameron
Camille
Candace
Candice
Candy
Cari
Carie
Carla
Carley
Carlota
Carmela
Carmen
Carol
Caroline
Caroll
Carolyn
Carrie
Carry
Caryn
Casey
Cassandra
Cassie
Catherine
Cathy
Cecile
Cecilia
Celia
Chandra
Chantel
Charity
Charleen
Charlene
Charles
Charlie
Charlotte
Chasity
Chelsea
Chelsey
Cherie
Cherry
Cheryl
Cheyenne
Chloe
Chong
Chris
Christa
Christi
Christiane
Christie
Christina
Christine
Christy
Chrystal
Cinda
Cindy
Claire
Clara
Clarice
Claudette
Claudia
Cleo
Colette
Colleen
Connie
Constance
Cora
Corazon
Cordelia
Cori
Cornelia
Courtney
Cristina
Crystal
Cynthia
Daine
Daisy
Damaris
Dana
Danielle
Danna
Daphne
Darci
Darla
Darlene
Dawn
Dayle
Debbie
Deborah
Debra
Delcie
Delinda
Dell
Della
Deloras
Delores
Deloris
Delphia
Demetra
Denise
Denny
Diana
Diane
Dinah
Dollie
Dolores
Dominique
Donna
Dora
Dorie
Doris
Dorothy
Dot
Earlene
Earline
Eartha
Ebony
Edith
Edna
Effie
Eileen
Elaine
Elda
Eleanor
Elena
Eliza
Elizabet
Elizabeth
Ellen
Elma
Elna
Eloise
Elsa
Elsie
Emily
Emma
Erica
Erika
Erin
Erma
Ernestine
Esperanza
Estelle
Esther
Ethel
Eunice
Eusebia
Eva
Evangeline
Evelyn
Fairy
Fallon
Fannie
Fatimah
Fay
Faye
Fe
Felecia
Felicia
Felicita
Fern
Florence
Florine
Frances
Francine
Francis
Freda
Gabriella
Gail
Gale
Garnet
Gay
Gayle
Gena
Geneva
Genevie
Genevieve
Genna
Georgette
Georgia
Georgina
Geraldine
Geralyn
Gerda
Geri
Gerry
Gertrude
Gina
Ginny
Gladis
Gladys
Glenda
Gloria
Grace
Greta
Guadalupe
Guillermina
Gussie
Gwen
Gwendolyn
Hattie
Haydee
Hazel
Heather
Heidi
Helen
Helena
Helene
Henrietta
Hester
Hilda
Holly
Ida
Ilene
Iliana
Ilse
Ina
Ingrid
Irene
Irma
Isabel
Isabella
Jacalyn
Jackie
Jacque
Jacquelin
Jacqueline
Jada
Jamie
Jan
Jane
Janeen
Janelle
Janet
Janice
Jannie
Jasmine
Jazmine
Jean
Jeanette
Jeanine
Jeanne
Jena
Jenifer
Jenna
Jennie
Jennifer
Jenny
Jesenia
Jesse
Jessica
Jessie
Jewell
Jill
Jillian
Jimmie
Jina
Jo
Joan
Joann
Joanna
Joanne
Jodi
Jody
Joelle
Joellen
Johana
Johanne
Johnnie
Jolene
Josefina
Josephine
Joshua
Joy
Joyce
Juana
Juanita
Judi
Judith
Judy
Juli
Julia
Juliana
Julie
June
Karen
Karin
Karina
Karla
Karole
Karyn
Kasey
Kate
Katherine
Kathleen
Kathryn
Kathryne
Kathy
Katie
Katrina
Kay
Kayla
Kaylene
Keesha
Keisha
Kellie
Kelly
Kelsey
Kenneth
Kerry
Kim
Kimberly
Kori
Kris
Krista
Kristen
Kristin
Kristine
Kristy
Kym
Laci
Lacy
Lakendra
Lakisha
Lara
Latasha
Latonya
Latoya
Laura
Lauren
Laurene
Laurie
Laverne
Lavonia
Leah
Leilani
Lela
Lelia
Lena
Leona
Leonor
Leora
Lesa
Leslie
Leticia
Lettie
Librada
Lidia
Lila
Lillian
Lillie
Linda
Lindsay
Lindsey
Lisa
Lois
Lola
Londa
Lora
Loraine
Loretta
Lori
Lorie
Lorraine
Lorretta
Lou
Louisa
Louise
Luana
Lucie
Lucille
Lucinda
Lucy
Luetta
Luise
Lula
Lulu
Luz
Lydia
Lynda
Lynn
Lynne
Ma
Mabel
Mabelle
Mable
Madeleine
Madeline
Madge
Mae
Maegan
Magdalene
Maggie
Mai
Mamie
Mandy
Manuela
Mara
Marceline
Marci
Marcia
Marcie
Margaret
Margarita
Marge
Margie
Marguerite
Maria
Mariam
Marian
Maribel
Maricela
Marie
Mariko
Marilyn
Marion
Marisa
Maritza
Marjorie
Marla
Marlene
Marlo
Marsha
Marta
Martha
Martina
Mary
Maryann
Maryellen
Marylou
Mathilda
Mattie
Maude
Maureen
Meagan
Mee
Megan
Meghan
Melanie
Melba
Melinda
Melissa
Melody
Melonie
Meta
Micaela
Michele
Michelle
Mickie
Milagros
Mildred
Mimi
Minnie
Mira
Miranda
Miriam
Mirta
Miss
Misti
Mitzi
Miyoko
Molly
Mona
Monica
Monique
Morgan
Muriel
Myra
Myrna
Nakia
Nancy
Narcisa
Natalie
Nathalie
Nellie
Nichole
Nicholle
Nicole
Nikki
Noel
Nona
Nora
Norma
Nova
Opal
Ora
Paige
Pam
Pamela
Paris
Pat
Patrice
Patricia
Patsy
Patti
Pattie
Paula
Paulette
Pauline
Pearl
Peggy
Penny
Petrina
Phillis
Phoebe
Phyllis
Pinkie
Polly
Priscilla
Quyen
Rachel
Rae
Raquel
Reba
Rebecca
Rebekah
Refugio
Regan
Regina
Reiko
Renee
Reta
Retha
Reyna
Rhonda
Ricarda
Richard
Rita
Robert
Roberta
Robin
Robyn
Rochelle
Rona
Roni
Rosa
Rosalia
Rosalie
Rosalva
Rosalyn
Rosaria
Rosaura
Rose
Roseann
Rosella
Rosemary
Roslyn
Roxanne
Roxie
Rozella
Ruby
Ruth
Sabrina
Sadie
Sally
Samantha
Sandra
Sandy
Santa
Sara
Sarah
Shannon
Shanta
Shari
Sharita
Sharla
Sharon
Sharonda
Shasta
Shavonne
Shawn
Sheila
Shellie
Sheree
Sherrie
Sherry
Shery
Sheryl
Shila
Shirley
Sibyl
Simone
Sofia
Solange
Soledad
Sonia
Sonya
Sophia
Stacey
Stacia
Stacie
Stacy
Stefani
Stefanie
Stella
Stephanie
Su
Sue
Susan
Susana
Susanne
Suzan
Suzanne
Suzette
Sybil
Sylvia
Tabatha
Tamela
Tamera
Tammi
Tammie
Tammy
Tanya
Tara
Tasha
Tashia
Teresa
Teri
Terri
Terry
Tessa
Tessie
Thelma
Theodora
Theresa
Tiesha
Tiffany
Tina
Tisha
Tomeka
Toni
Tonya
Toshia
Toshiko
Tracey
Traci
Tracy
Treva
Trina
Trish
Trudy
Una
Valarie
Valentina
Valerie
Vanessa
Velma
Vera
Verna
Veronica
Vicki
Vickie
Vicky
Victoria
Viola
Violet
Virgina
Virginia
Vivian
Vonda
Wanda
Waneta
Wendy
Wilda
William
Willie
Wilma
Xiomara
Yasmin
Yolanda
Yvette
Yvonne
Zaida
Zella
Zula

__surname__
Abad
Abbott
Abe
Adair
Adams
Adams
Adams
Adcock
Addington
Agee
Agnew
Akbar
Alcaraz
Aldridge
Alex
Alexander
Alexander
Alexander
Allen
Allen
Allen
Allen
Allen
Allred
Alvarado
Alvarado
Alvarez
Amaya
Ambrose
Amos
Anderson
Anderson
Anderson
Annis
Anthony
Arellano
Armstrong
Armstrong
Armstrong
Arnold
Arroyo
Arteaga
Arthurs
Asencio
Ashby
Ashworth
Attwood
Auyeung
Avery
Avila
Avila
Azevedo
Babcock
Bailey
Bailey
Bailey
Bailey
Bailey
Bailey
Bailey
Baker
Baker
Baldwin
Ball
Bankston
Bare
Barhorst
Barnes
Barnes
Barnes
Barnette
Baron
Barrett
Barrett
Barton
Bass
Bass
Bassett
Bates
Bates
Baughman
Baxter
Beach
Beall
Beam
Bean
Beck
Bednar
Beeson
Behler
Beiler
Bennett
Bennett
Bennett
Bennett
Berg
Berger
Bernhardt
Berry
Berthelot
Bing
Bingham
Bishop
Black
Black
Black
Blair
Blake
Blake
Blankenship
Bleau
Bloom
Bodner
Boger
Bolinger
Booker
Books
Bostick
Bowen
Bowles
Bradley
Bradley
Brady
Branco
Brandl
Brannon
Brannon
Bratt
Brawley
Brewer
Bridges
Briggs
Briley
Brisco
Britt
Broadbent
Brock
Brock
Brook
Brooks
Brooks
Brooks
Browder
Browder
Brown
Brown
Brown
Brown
Brown
Brown
Brown
Brown
Bruce
Brunson
Bryant
Bryant
Bubb
Buchanan
Buck
Buckner
Budge
Buell
Bumgarner
Bump
Burch
Burch
Burger
Burgos
Burke
Burke
Burkett
Burks
Burns
Burns
Burns
Burns
Burton
Bushway
Buske
Busse
Butler
Cain
Calhoun
Callen
Campbell
Campbell
Camper
Campos
Cantrell
Cantu
Carbone
Cardone
Carillo
Carl
Carlton
Carman
Caron
Carpenter
Carpenter
Carr
Carrillo
Carrol
Carroll
Carter
Carvalho
Casey
Caskey
Castaneda
Castillo
Castillo
Cates
Chadwell
Chaisson
Chamber
Chambers
Chamness
Champagne
Chandler
Cheek
Cheng
Chestnut
Chidester
Childers
Chin
Choice
Chou
Christensen
Christian
Christiansen
Churchill
Clark
Clark
Clark
Clark
Clark
Clayton
Clayton
Clemmer
Clevenger
Cline
Coachman
Cobb
Cole
Coleman
Collazo
Collins
Collins
Collins
Collins
Collins
Combs
Condon
Connelly
Conner
Conner
Cook
Cook
Cooley
Cooley
Cooper
Cooper
Cooper
Cooper
Cope
Copeland
Coppa
Copper
Cormack
Cortinas
Cosby
Costello
Couch
Countess
Coward
Cox
Cox
Craig
Crain
Crawford
Crawford
Crofts
Crosby
Cross
Crump
Crutchfield
Culbertson
Cumbie
Curry
Curtis
Daggett
Dallas
Dancer
Danforth
Daniel
Daniels
Dansby
Darling
Darrah
Darrow
Davin
Davis
Dean
Dearing
Deitz
Dejesus
Dejohn
Delagarza
Delgado
Delvecchio
Demartini
Dennis
Depew
Desmond
Diaz
Diaz
Diaz
Dilworth
Dison
Dixon
Doak
Dobos
Dockery
Dodd
Dodson
Dolan
Dolan
Dominique
Doran
Dorrough
Dowdell
Downs
Drake
Dumond
Duncan
Dunford
Dunlap
Dye
Dyer
Dyke
Earley
Eastland
Ebel
Ebert
Ebner
Echols
Echols
Eckert
Ecklund
Edgar
Edmonds
Egbert
Ehrlich
Elie
Ellerman
Elliott
Entrekin
Epperly
Escobar
Etchison
Etheridge
Evans
Evans
Evans
Evers
Everts
Fahy
Fann
Faulkner
Fearon
Felice
Feltman
Ferguson
Fernandez
Fields
Finch
Fisk
Fisk
Fitts
Flaherty
Fleming
Fletcher
Fletcher
Flores
Flowers
Floyd
Foltz
Foster
Foster
Foster
Frasher
Frechette
Frederick
Freeman
Freeman
Freeman
French
Fritz
Froelich
Fuentes
Fugate
Fulton
Fulton
Funchess
Fuquay
Gagnier
Gagnon
Gallagher
Gallagher
Gallant
Gallegos
Gant
Garcia
Garcia
Garcia
Garcia
Garcia
Garcia
Garcia
Garcia
Garner
Garrett
Garrett
Garrison
Garza
Garza
Gause
Gengler
George
Gerow
Gerson
Geyer
Gibbons
Gibson
Gilkey
Gist
Glasper
Godwin
Goering
Goguen
Goldberg
Gonzales
Gonzales
Gonzalez
Gonzalez
Goodall
Goodwyn
Gordon
Gordon
Gourley
Graham
Gratton
Green
Green
Green
Greenbaum
Greene
Greer
Gregory
Griffin
Griffith
Groce
Gros
Gross
Groves
Guardado
Guess
Gustin
Gutierrez
Guzman
Haag
Hadley
Hafer
Hall
Hall
Hall
Hall
Hallett
Hallock
Hallowell
Halverson
Hamer
Hamilton
Hancock
Handler
Haney
Hankins
Hanna
Hanna
Hansen
Hanson
Hanson
Harder
Hardin
Harper
Harper
Harrington
Harris
Harris
Harris
Harris
Harrison
Harrison
Harrison
Harrison
Hart
Hartness
Harvey
Harville
Hatcher
Hatchett
Hatfield
Hausman
Havens
Hawkins
Hayes
Hayes
Hayes
Haynes
Heath
Heaton
Hedstrom
Hendricks
Hennessy
Henry
Hernandez
Hernandez
Hester
Hicks
Hicks
Higa
Hightower
Hileman
Hill
Hill
Hill
Hill
Hinman
Hodge
Hodgkins
Hoffman
Hogue
Holcombe
Holder
Holdren
Holford
Holley
Holley
Holloman
Holloway
Holmes
Holt
Holtz
Honeycutt
Hopkins
Hopper
Hopper
Hopper
Hopwood
Horn
Horn
Horton
Horton
Horton
Hoskins
House
House
Howard
Howard
Howard
Howe
Howell
Howton
Hudgins
Huff
Huggins
Hughey
Humphreys
Hunt
Hunter
Huntington
Hutchison
Iddings
Inglis
Irwin
Islas
Israel
Ivey
Izzo
Jack
Jackson
Jackson
James
Jansen
Jaramillo
Jarrell
Jarvis
Jennings
Johannes
Johnson
Johnson
Johnson
Johnson
Johnson
Johnson
Johnson
Johnson
Johnson
Johnson
Johnson
Johnson
Johnson
Johnson
Johnson
Johnson
Johnson
Johnson
Johnson
Johnson
Johnson
Johnston
Jones
Jones
Jones
Jones
Jones
Jones
Jones
Jones
Jones
Jones
Jones
Jones
Jones
Jones
Jones
Jordan
Jordan
Jordan
Jordan
Joyce
Juarez
Justice
Kahler
Kahn
Kane
Kaye
Kearns
Keenum
Keeton
Keeton
Keller
Kellum
Kelly
Kent
Kenyon
Kessler
Kidd
Killough
Kilroy
Kimble
Kinder
King
King
King
Kinney
Kirkland
Knoll
Knorr
Knowles
Knox
Knutson
Kohler
Kong
Kowalski
Krebs
Kremer
Kromer
Kuhn
Kummer
Kurtz
Lachance
Lacy
Lake
Lake
Lam
Lamb
Lambert
Lampkin
Landis
Lane
Langer
Langer
Lanier
Lantz
Larrick
Law
Laws
Lawson
Lawson
Leblanc
Lee
Lee
Lee
Lee
Lee
Lefebre
Leming
Lent
Lentz
Leon
Leonard
Levesque
Lewis
Lewis
Lewis
Libby
Lieberman
Light
Linton
Livingstone
Lloyd
Lloyd
Loftus
Lombardi
Long
Long
Longnecker
Lopez
Lopez
Lott
Loughman
Lowe
Lowery
Luis
Luster
Luther
Lux
Lynch
Lyons
Mack
Mackay
Madden
Mah
Mahan
Mahan
Mahone
Main
Major
Malcom
Malone
Manders
Mangano
Manning
Manzo
Marek
Marenco
Marquez
Marsh
Martin
Martin
Martin
Martinez
Martinez
Martinez
Masi
Matherly
Matthews
Maurer
May
Mayes
Mcanally
Mcbride
Mccabe
Mccaffrey
Mccloud
Mccormick
Mccray
Mccray
Mcdaniel
Mcdonald
Mcdowell
Mcginnis
Mcintosh
Mckenny
Mcnamee
Mcphail
Mealy
Meier
Mejia
Mendoza
Mendoza
Mendoza
Mercer
Messer
Meyer
Middlebrooks
Miguel
Mikel
Miller
Miller
Miller
Miller
Miller
Million
Minnis
Mitchell
Mitchell
Mitchell
Mitten
Moffit
Moloney
Money
Moodie
Moore
Moore
Moore
Moore
Moore
Morfin
Morgan
Mork
Morning
Morningstar
Motley
Moya
Mund
Murray
Murray
Murrell
Myers
Myers
Nagel
Najera
Nale
Naquin
Naquin
Neal
Neal
Needham
Neilson
Nelson
Nelson
Nelson
Nelson
Newby
Newland
Newton
Nguyen
Nguyen
Nichols
Nichols
Nickson
Nida
Nielson
Nolen
Nord
Noriega
Norton
Nutter
Oates
Odum
Odum
Ogawa
Oglesby
Olivas
Omalley
Oneal
Oneal
Oneil
Ortiz
Owens
Owens
Palm
Palma
Palmer
Palmer
Palmore
Palumbo
Pam
Park
Parker
Parker
Parker
Parks
Parsons
Patchett
Patterson
Patton
Patton
Pavone
Payne
Peace
Peacock
Pearlman
Pearson
Pegues
Pellerin
Pennington
Perez
Perez
Perez
Perez
Perkins
Perlman
Perry
Peters
Peterson
Peterson
Peterson
Peterson
Peterson
Peterson
Pharr
Pharris
Phillips
Phillips
Phillips
Phillips
Pierce
Pierce
Pierce
Pierre
Pine
Pineda
Plum
Plyler
Poch
Pointer
Pollak
Porter
Posey
Potter
Potter
Potter
Potter
Powell
Pressley
Prettyman
Price
Price
Prichard
Pride
Prinz
Pritchett
Prout
Pruitt
Pulliam
Pursley
Quinn
Quintero
Raap
Raftery
Ramey
Ray
Rayl
Reaves
Redden
Redman
Reeder
Reeves
Reeves
Reichert
Reid
Reid
Reilly
Reis
Remillard
Remington
Rexroad
Reyes
Reynolds
Reynolds
Richardson
Richardson
Richardson
Riche
Riley
Rimmer
Ring
Rios
Rios
Ritchey
Rivera
Rivera
Robb
Roberts
Roberts
Robertson
Robertson
Robertson
Robinson
Robinson
Robinson
Roderick
Rodriguez
Rodriguez
Rodriguez
Rogers
Rogers
Roland
Roling
Rollins
Romano
Roque
Rosa
Rose
Rose
Ross
Ross
Rothermel
Rouse
Rouse
Rowan
Rowland
Roy
Rudder
Ruiz
Rumsey
Russell
Ryans
Sadler
Sakamoto
Salaam
Sale
Sams
Sanchez
Sanders
Sanders
Sanderson
Sandoval
Sanford
Santana
Santoyo
Sapp
Schaff
Schoonover
Schultz
Schutt
Scott
Scott
Seefeldt
Serrano
Serrano
Sessums
Shaffer
Shatzer
Shaw
Shaw
Shearer
Sheehan
Shelley
Sherman
Sherrill
Shirley
Siler
Silva
Simmons
Simmons
Simon
Simpson
Simpson
Sims
Sims
Sing
Sizer
Sloan
Slusher
Small
Smiley
Smith
Smith
Smith
Smith
Smith
Smith
Smith
Smith
Smith
Smith
Smith
Smith
Smith
Smith
Smith
Smith
Smith
Smith
Smith
Smith
Smith
Snyder
Solomon
Solum
Soto
Souza
Spangler
Sparks
Spaulding
Specht
Spencer
Spencer
Spradley
Spruell
Staats
Stalder
Stankiewicz
Stanley
Stark
Starr
Steele
Steele
Stephenson
Steve
Stevens
Stewart
Stewart
Stewart
Stoddard
Stokely
Stone
Story
Stout
Stovall
Stuart
Sturm
Suggs
Suiter
Sullivan
Sullivan
Summers
Sumpter
Sumpter
Sund
Swallow
Swanson
Swift
Sykes
Talley
Tamayo
Tardiff
Tarver
Tate
Taylor
Taylor
Taylor
Taylor
Taylor
Taylor
Taylor
Taylor
Templeton
Terrell
Thomas
Thomas
Thomas
Thomas
Thompson
Thompson
Thompson
Thornton
Tibbitts
Tibbitts
Tillman
Tillman
Tillotson
Tobin
Tolan
Torres
Travis
Treadwell
Trevino
Trujillo
Turner
Turpin
Ulrich
Underhill
Underwood
Upham
Ussery
Valdez
Valencia
Valentine
Valle
Valverde
Vansant
Varela
Vasquez
Vasquez
Vazquez
Veale
Vega
Ventimiglia
Vergara
Vick
Vickery
Villanueva
Voelker
Vogel
Walker
Walker
Walker
Walker
Wallace
Wallace
Wallace
Warden
Warr
Warren
Warren
Warren
Warren
Warrick
Waterman
Waterman
Watson
Webb
Webb
Welch
Welch
Weldy
Weller
Wells
Wendt
Wenzel
Werner
West
West
West
Wheeler
Whipple
Whitaker
White
White
White
White
Whitfield
Whitney
Wilbur
Wilcox
Wilcox
Wilde
Wilder
Wilkes
Willett
William
Williams
Williams
Williams
Williams
Williams
Williams
Williams
Williams
Williams
Williams
Williams
Williams
Williams
Williams
Willis
Willis
Wilson
Wilson
Wilson
Wilson
Wilson
Winer
Wing
Winningham
Winston
Wise
Wise
Wisniewski
Wood
Woodruff
Woodside
Work
Wright
Wright
Wright
Wright
Wroblewski
Yamada
Yates
Yeary
Yoder
Yoon
Young
Young
Young
Youngblood
Youngman
Zavala
Zavala
Zito
