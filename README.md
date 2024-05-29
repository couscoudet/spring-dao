# spring-dao

## Installation et démarrage

Avant de commencer, assurez-vous d'avoir les éléments suivants installés sur votre système :

- Java Development Kit (JDK version 17 ou ultérieure) et Maven (version 3 ou ultérieure)
- Un environnement de développement intégré (IDE) tel qu'Eclipse, IntelliJ IDEA ou NetBeans (facultatif, mais recommandé)

## Lancement depuis un IDE

Veuillez Rapatrier le projet `https://gitlab.indyli-services.com/training-project-group/spring-daos.git`

Une fois Rapatrier, nous allons nous focaliser sur le lancement des tests unitaies

### Étapes pour lancer depuis un IDE :

1. **Ouvrir l'IDE** : Lancez votre environnement de développement intégré (IDE) préféré.

2. **Importer le projet** : Importez le projet Spring DAOs dans votre IDE, s'il n'est pas déjà importé.

3. **Configuration du projet** : 

### Utilisation de MYSQL :
		
3.1. **Création de la base de données** :

- Dans le dossier `src`, vous trouverez un script SQL nommé `bd_colis_data_mysql.sql`.
- Créez une base de données dans phpMyAdmin.
- Exécutez le script `bd_colis_data_mysql.sql` sur cette base de données.
	
3.2. **Configuration des propriétés de la base de données** :

- Ouvrez le fichier `application-mysql.properties`.
- Renseignez les informations suivantes avec les détails de votre base de données :
	```properties
	config.base.url=jdbc:mysql://localhost:3306/nom_de_votre_base_de_donnees
	config.base.username=votre_nom_d_utilisateur
	config.base.password=votre_mot_de_passe
	```	
			
3.3. **Mise à jour de la configuration Spring** :

- Ouvrez le fichier `spring-dao.xml` qui se trouve dans `src/main/resources` du projet.
- Modifiez la propriété `location` pour qu'elle pointe vers `application-mysql.properties` :
	```xml
	<property name="location" value="application-mysql.properties"/>
	```	
					
### Utilisation de PostgreSQL :
		
3.4	 **Création de la base de données** :

- Créez une base de données dans votre instance PostgreSQL.
		
3.5. **Configuration des propriétés de la base de données** :

- Ouvrez le fichier `application-postgresql.properties`.
- Renseignez les informations suivantes avec les détails de votre base de données :
	```properties
	config.base.url=jdbc:postgresql://localhost:5432/nom_de_votre_base_de_donnees
	config.base.username=votre_nom_d_utilisateur
	sconfig.base.password=votre_mot_de_passe
	```
			
3.6. **Mise à jour de la configuration Spring** :

- Ouvrez le fichier `spring-dao.xml` qui se trouve dans `src/main/resources` du projet.
- Modifiez la propriété `location` pour qu'elle pointe vers `application-postgresql.properties` :
	```xml
	<property name="location" value="application-postgresql.properties"/>
	```

Suivez ces étapes pour configurer correctement votre projet avec MySQL ou PostgreSQL.
		
4. **Rechercher le package** : Recherchez le package `eu.esic.formation.initspring.springdao.test` dans la structure `src/test/java` du projet.

5. **Lancement des tests unitaires** : Ouvrez la classe `AlerteHibernateTemplateDAOTest.java`, lancez les tests unitaires et visualisez les résultats dans la console `JUnit`.
