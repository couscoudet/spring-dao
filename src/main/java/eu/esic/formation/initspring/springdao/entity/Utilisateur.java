package eu.esic.formation.initspring.springdao.entity;

// Generated 11 avr. 2016 08:10:48 by Hibernate Tools 3.4.0.CR1

import java.util.Date;
import java.util.HashSet;
import java.util.Set;

import org.apache.commons.lang3.builder.ToStringBuilder;

/**
 * Utilisateur generated by hbm2java
 */
public class Utilisateur implements java.io.Serializable {

	/**
	 * 
	 */
	private static final long serialVersionUID = -8521306532240352544L;
	private Integer idUtilisateur;
	private String civilite;
	private String name;
	private String login;
	private String password;
	private String email;
	private Boolean enabled;
	private Date derniereConnexion;
	private int anneeDeNaissance;
	private String telephone;
	private Date dateInscription;
	private Set<Annonce> annonces = new HashSet<Annonce>(0);
    private Set<Comment> comments = new HashSet<Comment>(0);
    private Set<Message> messages = new HashSet<Message>(0);
    private Set<Image> images = new HashSet<Image>(0);

	public Utilisateur() {
	}

	public Utilisateur(String civilite, String email, Boolean enabled, int anneeDeNaissance, Date dateInscription) {
		this.civilite = civilite;
		this.email = email;
		this.enabled = enabled;
		this.anneeDeNaissance = anneeDeNaissance;
		this.dateInscription = dateInscription;
	}

	public Utilisateur(String civilite, String name, String login, String password, String email, Boolean enabled,
			Date derniereConnexion, int anneeDeNaissance, String telephone, Date dateInscription) {
		this.civilite = civilite;
		this.name = name;
		this.login = login;
		this.password = password;
		this.email = email;
		this.enabled = enabled;
		this.derniereConnexion = derniereConnexion;
		this.anneeDeNaissance = anneeDeNaissance;
		this.telephone = telephone;
		this.dateInscription = dateInscription;
	}

	public Integer getIdUtilisateur() {
		return this.idUtilisateur;
	}

	public void setIdUtilisateur(Integer idUtilisateur) {
		this.idUtilisateur = idUtilisateur;
	}

	public String getCivilite() {
		return this.civilite;
	}

	public void setCivilite(String civilite) {
		this.civilite = civilite;
	}

	public String getName() {
		return this.name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getLogin() {
		return this.login;
	}

	public void setLogin(String login) {
		this.login = login;
	}

	public String getPassword() {
		return this.password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getEmail() {
		return this.email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public Boolean getEnabled() {
		return this.enabled;
	}

	public void setEnabled(Boolean enabled) {
		this.enabled = enabled;
	}

	public Date getDerniereConnexion() {
		return this.derniereConnexion;
	}

	public void setDerniereConnexion(Date derniereConnexion) {
		this.derniereConnexion = derniereConnexion;
	}

	public int getAnneeDeNaissance() {
		return this.anneeDeNaissance;
	}

	public void setAnneeDeNaissance(int anneeDeNaissance) {
		this.anneeDeNaissance = anneeDeNaissance;
	}

	public String getTelephone() {
		return this.telephone;
	}

	public void setTelephone(String telephone) {
		this.telephone = telephone;
	}

	public Date getDateInscription() {
		return this.dateInscription;
	}

	public void setDateInscription(Date dateInscription) {
		this.dateInscription = dateInscription;
	}

	public Set<Annonce> getAnnonces() {
		return annonces;
	}

	public void setAnnonces(Set<Annonce> annonces) {
		this.annonces = annonces;
	}

	public Set<Comment> getComments() {
		return comments;
	}

	public void setComments(Set<Comment> comments) {
		this.comments = comments;
	}

	public Set<Message> getMessages() {
		return messages;
	}

	public void setMessages(Set<Message> messages) {
		this.messages = messages;
	}

	public Set<Image> getImages() {
		return images;
	}

	public void setImages(Set<Image> images) {
		this.images = images;
	}
	
	public String toString(){
		return ToStringBuilder.reflectionToString(this); 
	}

}
