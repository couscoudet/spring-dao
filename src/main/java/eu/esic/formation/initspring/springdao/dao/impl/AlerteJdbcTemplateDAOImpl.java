package eu.esic.formation.initspring.springdao.dao.impl;

import java.util.Date;
import java.util.List;

import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

import eu.esic.formation.initspring.springdao.dao.IAlerteDAO;
import eu.esic.formation.initspring.springdao.entity.Alerte;
import eu.esic.formation.initspring.springdao.mapper.AlerteRowMapper;

/**
 * Utilise Le template JDBC de Spring pour accéder à la base
 * @author zomechristophe
 *
 */
@Repository
public class AlerteJdbcTemplateDAOImpl implements IAlerteDAO{

	private JdbcTemplate jdbcTemplate;


	public Integer creerAlerte(Alerte aP) {
		String SQL_INSERT = "INSERT INTO Alerte (ville_depart, ville_arrivee, id_utilisateur,date_depot) VALUES (?,?,?,?)";
		String SQL_SELECT_MAX_ID = "Select max(id_alerte) from Alerte";
		this.jdbcTemplate.update( SQL_INSERT, aP.getVilleDepart(), aP.getVilleArrivee(),aP.getUser().getIdUtilisateur(),new Date());
		Integer idAlerte = this.jdbcTemplate.queryForObject(SQL_SELECT_MAX_ID,Integer.class);
		return idAlerte;
	}

	public void updateAlerte(Alerte aP) {
		String SQL = "update Alerte set ville_depart = ?, ville_arrivee=? where id_alerte = ?";
		//TODO 1 : Completer la mise a jour de la ville de depart et la ville d'arrivee en base

	}

	public Alerte getAlerteById(Integer idA) {
		String SQL = "select * from Alerte where id_alerte = ?";
		Alerte alerte = this.jdbcTemplate.queryForObject(SQL,new Object[]{idA}, new AlerteRowMapper());
		return alerte;
	}

	public List<Alerte> getAlertes() {
		String SQL = "select * from Alerte";
		List<Alerte> listeAlertes = this.jdbcTemplate.query(SQL,new AlerteRowMapper());
		return listeAlertes;
	}

	public void deleteAlerteById(Integer idA) {
		//TODO 2 : Redigez la requete de suppression d'une Alerte par son identifiant
		String SQL = null;
		this.jdbcTemplate.update(SQL, idA);
		return;

	}

	public void setJdbcTemplate(JdbcTemplate jdbcTemplate) {
		this.jdbcTemplate = jdbcTemplate;
	}

}
