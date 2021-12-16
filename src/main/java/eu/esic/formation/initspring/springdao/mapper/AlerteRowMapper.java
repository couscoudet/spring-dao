package eu.esic.formation.initspring.springdao.mapper;

import java.sql.ResultSet;
import java.sql.SQLException;

import org.springframework.jdbc.core.RowMapper;

import eu.esic.formation.initspring.springdao.entity.Alerte;
import eu.esic.formation.initspring.springdao.entity.Utilisateur;

/**
 * 
 * @author zomechristophe
 *
 */
public class AlerteRowMapper implements RowMapper<Alerte>{
	public Alerte mapRow(ResultSet rs, int arg1) throws SQLException {
		Alerte alerteCourante = new Alerte();
		alerteCourante.setIdAlerte(rs.getInt("ID_ALERTE"));
		Integer idUserProp = rs.getInt("ID_UTILISATEUR");
		Utilisateur userProp = new Utilisateur();
		userProp.setIdUtilisateur(idUserProp);
		alerteCourante.setUser(userProp);
		alerteCourante.setVilleDepart(rs.getString("VILLE_DEPART"));
		alerteCourante.setVilleArrivee(rs.getString("VILLE_ARRIVEE"));
		return alerteCourante;
	}
}
