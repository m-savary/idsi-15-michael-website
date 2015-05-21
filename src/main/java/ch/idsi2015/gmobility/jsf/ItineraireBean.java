package ch.idsi2015.gmobility.jsf;
import ch.idsi2015.gmobility.domain.Itineraire;
import org.springframework.roo.addon.jsf.managedbean.RooJsfManagedBean;
import org.springframework.roo.addon.serializable.RooSerializable;

@RooSerializable
@RooJsfManagedBean(entity = Itineraire.class, beanName = "itineraireBean")
public class ItineraireBean {
}
