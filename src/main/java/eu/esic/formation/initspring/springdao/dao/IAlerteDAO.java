package eu.esic.formation.initspring.springdao.dao;

import java.util.List;

import eu.esic.formation.initspring.springdao.entity.Alerte;

/**
 * Pour l'exposition des méthodes de gestion des Alertes
 * @author zomechristophe
 *
 */
public interface IAlerteDAO {

	/**
	 * Cree une alerte
	 * @param aP : Alerte à creer
	 * @return : Identifiant de l'alerte qu'on vient de créer
	 */
	public Integer creerAlerte(Alerte aP);
	/**
	 * Modifie une alerte
	 * @param aP : Alerte à modifier
	 */
	public void updateAlerte(Alerte aP);
	/**
	 * Recupère une alerte par son identifiant
	 * @param idP : Identifiant de l'Alerte qu'on souhaite récupérer
	 * @return
	 */
	public Alerte getAlerteById(Integer idA);
	
	/**
	 * Recupère toutes les alertes présentes en base
	 * @return
	 */
	public List<Alerte> getAlertes();
	/**
	 * Supprime une Alerte par son identifiant
	 * @param idA
	 */
	public void deleteAlerteById(Integer idA);
}
