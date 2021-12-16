package eu.esic.formation.initspring.springdao.dao.impl;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import eu.esic.formation.initspring.springdao.dao.IAlerteDAO;
import eu.esic.formation.initspring.springdao.entity.Alerte;
/**
 * Utilise Le template HibernateTemplate de Spring pour accéder aux données 
 * @author zomechristophe
 *
 */
@Repository
//TODO 6 : Completer l'instruction pour rendre transactionnelles vos acces Base
public class AlerteHibernateTransactionManagerDAOImpl implements IAlerteDAO{

	private SessionFactory sessionEsicFactory; 
	
	public Integer creerAlerte(Alerte aP) {
		Session session = this.sessionEsicFactory.getCurrentSession();
		Integer idAlerte = (Integer) session.save(aP);
		return idAlerte;
	}

	public void updateAlerte(Alerte aP) {
		Session session = this.sessionEsicFactory.getCurrentSession();
		session.saveOrUpdate(aP);
	}

	public Alerte getAlerteById(Integer idA) {
		Session session = this.sessionEsicFactory.getCurrentSession();
		Alerte alerteCherchee = (Alerte) session.get(Alerte.class, idA);
		return alerteCherchee;
	}

	@SuppressWarnings("unchecked")
	public List<Alerte> getAlertes() {
		Session session = this.sessionEsicFactory.getCurrentSession();
		Query query = session.createQuery("From Alerte a");
		List<Alerte> listeAlerte = (List<Alerte>)query.list();
		return listeAlerte;
	}

	public void deleteAlerteById(Integer idA) {
		Session session = this.sessionEsicFactory.getCurrentSession();
		Query query = session.createQuery("delete Alerte a where a.idAlerte = ?");
		query.setParameter(0, idA);
		query.executeUpdate();
		sessionEsicFactory.close();
	}

	public void setSessionEsicFactory(SessionFactory sessionEsicFactory) {
		this.sessionEsicFactory = sessionEsicFactory;
	}

}
