# spring-dao

## Installation et démarrage

Avant de commencer, assurez-vous d'avoir les éléments suivants installés sur votre système :

- Java Development Kit (JDK version 17 ou ultérieure) et Maven (version 3 ou ultérieure)
- Un environnement de développement intégré (IDE) tel qu'Eclipse, IntelliJ IDEA ou NetBeans (facultatif, mais recommandé)

## Lancement depuis un IDE

Veuillez Rapatrier le projet `https://gitlab.indyli-services.com/training-project-group/spring-dao.git`

Une fois Rapatrier, nous allons nous focaliser sur le lancement des tests unitaies

### Étapes pour lancer depuis un IDE :

1. **Ouvrir l'IDE** : Lancez votre environnement de développement intégré (IDE) préféré.

2. **Importer le projet** : Importez le projet Spring DAO dans votre IDE, s'il n'est pas déjà importé.

3. **Configuration du projet** : Rassurez vous de renseigner le nom de la base de donnée, username et possword dans le fichier `databaseColis.properties`.

4. **Rechercher le package** : Recherchez le package `eu.esic.formation.initspring.springdao.test` dans la structure `src/test/java` du projet.

5. **Lancement des tests unitaires** : Ouvrez la classe `AlerteHibernateTemplateDAOTest.java`, lancez les tests unitaires et visualisez les résultats dans la console `JUnit`.