package ch.idsi2015.gmobility.jsf.converter;
import ch.idsi2015.gmobility.domain.Itineraire;
import javax.faces.convert.Converter;
import org.springframework.roo.addon.jsf.converter.RooJsfConverter;

@RooJsfConverter(entity = Itineraire.class)
public class ItineraireConverter implements Converter {
}
