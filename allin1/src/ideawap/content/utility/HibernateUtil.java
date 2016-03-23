package ideawap.content.utility;

import org.hibernate.SessionFactory;
import org.hibernate.boot.registry.StandardServiceRegistryBuilder;
import org.hibernate.cfg.Configuration;

public class HibernateUtil {
	private static final SessionFactory factory;
	Configuration configuration;
	

    static {
        try {
        	Configuration	configuration = new Configuration().configure();
        	StandardServiceRegistryBuilder	builder = new StandardServiceRegistryBuilder()
    				.applySettings(configuration.getProperties());
    		factory = configuration.buildSessionFactory(builder.build());
        } catch (Throwable ex) {
            // Make sure you log the exception, as it might be swallowed
            System.err.println("Initial SessionFactory creation failed." + ex);
            throw new ExceptionInInitializerError(ex);
        }
    }

    public static SessionFactory getSessionFactory() {
        return factory;
    }
}
