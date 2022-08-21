package eu.esic.formation.initspring.springdao.dao.impl;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.springframework.orm.hibernate4.HibernateTemplate;
import org.springframework.stereotype.Repository;

import eu.esic.formation.initspring.springdao.dao.IAlerteDAO;
import eu.esic.formation.initspring.springdao.entity.Alerte;
/**
 * Utilise Le template HibernateTemplate de Spring pour accéder aux données 
 * @author zomechristophe
 *
 */
@Repository
public class AlerteHibernateTemplateDAOImpl implements IAlerteDAO{

	private HibernateTemplate hibernateTemplate; 
	//TODO 4 : Completer l'instruction necessaire pour faire injecter le bean hibernateTemplate
	
	public Integer creerAlerte(Alerte aP) {
		Session sessionEsicFactory = this.hibernateTemplate.getSessionFactory().getCurrentSession();
		sessionEsicFactory.beginTransaction();
		Integer idAlerte = (Integer) sessionEsicFactory.save(aP);
		sessionEsicFactory.getTransaction().commit();
		sessionEsicFactory.close();
		return idAlerte;
	}

	public void updateAlerte(Alerte aP) {
		Session sessionEsicFactory = this.hibernateTemplate.getSessionFactory().getCurrentSession();
		sessionEsicFactory.beginTransaction();
		sessionEsicFactory.saveOrUpdate(aP);
		sessionEsicFactory.getTransaction().commit();
		sessionEsicFactory.close();
	}

	public Alerte getAlerteById(Integer idA) {
		Session sessionEsicFactory = this.hibernateTemplate.getSessionFactory().getCurrentSession();
		sessionEsicFactory.beginTransaction();
		Alerte alerteCherchee = (Alerte) sessionEsicFactory.get(Alerte.class, idA);
		sessionEsicFactory.close();
		return alerteCherchee;
	}

	@SuppressWarnings("unchecked")
	public List<Alerte> getAlertes() {
		Session sessionEsicFactory = this.hibernateTemplate.getSessionFactory().getCurrentSession();
		sessionEsicFactory.beginTransaction();
		Query query = sessionEsicFactory.createQuery("From Alerte a");
		List<Alerte> listeAlerte = (List<Alerte>)query.list();
		sessionEsicFactory.close();
		return listeAlerte;
	}

	public void deleteAlerteById(Integer idA) {
		Session sessionEsicFactory = this.hibernateTemplate.getSessionFactory().getCurrentSession();
		sessionEsicFactory.beginTransaction();
		Query query = sessionEsicFactory.createQuery("delete Alerte a where a.idAlerte = ?");
		query.setParameter(0, idA);
		query.executeUpdate();
		sessionEsicFactory.getTransaction().commit();
		sessionEsicFactory.close();
	}

}
