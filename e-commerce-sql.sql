create table UTILISATEUR (
    id int PRIMARY KEY AUTO_INCREMENT,
    Prenom VARCHAR(50),
    Nom VARCHAR(30),
    Numero VARCHAR(10),
    Email VARCHAR(50)
);

create table ADDRESS (
    id int PRIMARY KEY AUTO_INCREMENT,
    UTILISATEUR_id int,
    Rue VARCHAR(100),
    Ville VARCHAR(20),
    CodePostal VARCHAR(10),
    Pays VARCHAR(30),
    FOREIGN KEY (UTILISATEUR_id) REFERENCES UTILISATEUR(id)
);

create table PRODUIT (
    id int PRIMARY KEY AUTO_INCREMENT,
    Nom VARCHAR(50),
    Descriptiion VARCHAR(500),
    prix DECIMAL(6,2),
    Stock int
    Categorie VARCHAR(50),
);

create table PANIER (
    id int PRIMARY KEY AUTO_INCREMENT,
    UTILISATEUR_id int,
    PRODUIT_id int,
    Quantite int,
    FOREIGN KEY (UTILISATEUR_id) REFERENCES UTILISATEUR(id),
    FOREIGN KEY (PRODUIT_id) REFERENCES PRODUIT(id)
);

create table COMMANDE (
    id int PRIMARY KEY AUTO_INCREMENT,
    UTILISATEUR_id int,
    Total DECIMAL(8,2),
    DateCommande DATETIME,
    FOREIGN KEY (UTILISATEUR_id) REFERENCES UTILISATEUR(id)
);

create table FACTURE (
    id int PRIMARY KEY AUTO_INCREMENT,
    COMMANDE_id int,
    UTILISATEUR_id int,
    DateFacture DATETIME,
    MontantTotal DECIMAL(10,2)
    FOREIGN KEY (COMMANDE_id) REFERENCES COMMANDE(id),
    FOREIGN KEY (UTILISATEUR_id) REFERENCES UTILISATEUR(id)
);

CREATE TABLE Photo (
    id INT PRIMARY KEY AUTO_INCREMENT,
    UTILISATEUR_id INT,
    PRODUIT_id INT,
    URL VARCHAR(255),
    FOREIGN KEY (UTILISATEUR_id) REFERENCES UTILISATEUR(id),
    FOREIGN KEY (PRODUIT_id) REFERENCES Product(id)
);
 
CREATE TABLE Note (
    id INT PRIMARY KEY AUTO_INCREMENT,
    UTILISATEUR_id INT,
    PRODUIT_id INT,
    Note INT,
    Commentaire TEXT,
    FOREIGN KEY (UTILISATEUR_id) REFERENCES UTILISATEUR(id),
    FOREIGN KEY (PRODUIT_id) REFERENCES PRODUIT(id)
);

CREATE TABLE Paiement (
    id INT PRIMARY KEY AUTO_INCREMENT,
    UTILISATEUR_id INT,
    IBAN VARCHAR(34),
    NumCart VARCHAR(20),
    DateExpiration DATE,
    Type VARCHAR(20),
    FOREIGN KEY (UTILISATEUR_id) REFERENCES UTILISATEUR(id)
);