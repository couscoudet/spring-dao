package eu.esic.formation.initspring.springdao.test;

import java.util.List;

import org.junit.Assert;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import eu.esic.formation.initspring.springdao.dao.IAlerteDAO;
import eu.esic.formation.initspring.springdao.entity.Alerte;
import eu.esic.formation.initspring.springdao.entity.Utilisateur;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations = {"classpath:spring-dao.xml"})
public class AlerteJdbcTemplateDAOTest {
	
	// TODO 3 : Déclarez l'instruction adéquate pour injecter le bon bean
	private IAlerteDAO alerteDAO = null;
	
	@Test
	public void testGetAllAlerte(){
		List<Alerte> listeAlerte = this.alerteDAO.getAlertes();
		Assert.assertTrue(listeAlerte != null && !listeAlerte.isEmpty());
		for (Alerte alerte : listeAlerte) {
			System.out.println(alerte);
		}
	}
	
	@Test
	public void testCreerAlerte(){
		Utilisateur userProAlerte = new Utilisateur();
		userProAlerte.setIdUtilisateur(1);
		Alerte a = new Alerte("Montauban,France","Orleans,France", userProAlerte);
		Integer idAlerteCree = this.alerteDAO.creerAlerte(a);
		Assert.assertNotNull(idAlerteCree);
	}
	
	@Test
	public void testGetAlerteById(){
		Alerte a = this.alerteDAO.getAlerteById(70);
		Assert.assertNotNull(a);
	}
}
