package eu.esic.formation.initispring.springdao.aspect;


import org.apache.log4j.Logger;
import org.aspectj.lang.JoinPoint;
import org.aspectj.lang.ProceedingJoinPoint;

public class TraceInvocation {

  private static Logger LOGGER = Logger.getLogger(TraceInvocation.class);

  public Object afficherTrace(final ProceedingJoinPoint joinPoint) 
      throws Throwable {
    String nomMethode = joinPoint.getTarget().getClass().getSimpleName() + "."
        + joinPoint.getSignature().getName();

    final Object[] args = joinPoint.getArgs();
    final StringBuffer sb = new StringBuffer();
    sb.append(joinPoint.getSignature().toString());
    sb.append(" AVEC LES PARAMETRES : (");

    for (int i = 0; i < args.length; i++) {
      sb.append(args[i]);
      if (i < args.length - 1) {
        sb.append(", ");
      }
    }
    sb.append(")");
    LOGGER.info("DEBUT METHODE : " + sb);
    Object obj = null;
    try {
       obj = joinPoint.proceed();
    } finally {
      LOGGER.info("FIN METHODE : " + nomMethode + " RETOUR=" + obj);
    }
    return obj;
  }
  
  public void afficherDebutTrace(final JoinPoint joinPoint) throws Throwable {
	    final Object[] args = joinPoint.getArgs();
	    final StringBuffer sb = new StringBuffer();
	   
	    sb.append(joinPoint.getSignature().toString());
	    sb.append(" AVEC LES PARAMETRES : (");
	    for (int i = 0; i < args.length; i++) {
	      sb.append(args[i]);
	      if (i < args.length - 1) {
	        sb.append(", ");
	      }
	    }
	    sb.append(")");
	   
	    LOGGER.info("DEBUT METHODE : " + sb);
	  }
  
  public void afficherFinTrace(final JoinPoint joinPoint, final Object result)
	      throws Throwable {
	    String nomMethode = joinPoint.getSignature().toLongString();
	    LOGGER.info("FIN METHODE :  " + nomMethode + " RETOUR=" + result);
	  }
}
