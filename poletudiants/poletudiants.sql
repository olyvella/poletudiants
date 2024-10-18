
use poletudiants ; 

create table Etudiant ( 

	idEtud int not null,
	nomEtud varchar(30) not null, 
	prenomEtud varchar(30) not null, 
	mailEtud varchar(30) not null, 
	cv varchar(30) not null, 
	primary key (idEtud)
	
); 

create table Entreprise (

	idEtr int not null, 
	nomEntr int not null, 
	Etat varchar(20) not null, 
	ville varchar(20) not null, 
	primary key (idEtr) 
	
); 

create table Offre (

	idOffre int not null, 
	date_ofr DATE, 
	Mission varchar(20) not null, 
	primary key (idOffre) 
 ); 
 
  create table Candidater (
 
	date_cdt DATE,
	idOffre int not null, 
	idEtud int not null, 
	primary key (idOffre, idEtud),
	foreign key (idOffre) references Offre(idOffre),
	foreign key (idEtud) references Etudiant(idEtud) 
	
); 
 
 create table Competence (

	idCptc int not null, 
	libelle varchar(20) not null, 
	primary key (idCptc) 
 ); 
 
 
 
create table Necessiter (

	niveau varchar(20) not null,
	idOffre int not null,
	idCptc int not null, 
	primary key (idOffre, idCpt),
	foreign key (idOffre) references Offre(idOffre), 
	foreign key (idCptc) references Competence(idCptc)	
); 


 
